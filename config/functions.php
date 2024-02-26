<?php
function check_post_data($required_fields)
{
    foreach ($required_fields as $field) {
        if (!isset($_POST[$field])) {
            return false;
        }
    }
    return true;
}

function upload_image($image){
    $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/mmcovid19/uploads/";
    $new_file = $target_dir . uniqid() . '_' .str_replace(',', '', str_replace(' ', '', basename($image['name'])));

    $image_file_type = strtolower(pathinfo($new_file, PATHINFO_EXTENSION));
    if ($image_file_type != "jpg" && $image_file_type != "png" && $image_file_type != "jpeg") {
        array_push($_SESSION['error_msg'], 'JPG, JPEG နှင့် PNG ဖိုင်များကိုသာခွင့်ပြုသည်။');
        return false;
    }
    if ($image["size"] > 2048000) {
        array_push($_SESSION['error_msg'], 'ဖိုင်အရွယ်အစားသည်အလွန်ကြီးသည်');
        return false;
    }

    if (move_uploaded_file($image["tmp_name"], $new_file)) {
        //echo "The file " . basename($_FILES["images"]["name"][$i]) . " has been uploaded.";
        $new_file = str_replace($_SERVER['DOCUMENT_ROOT'], '', $new_file);
    } else {
        array_push($_SESSION['error_msg'], 'Image တွေကိုသိမ်းဆည်လို့မရလိုက်ပါ။');
        return false;
    }
    return $new_file;

}

function upload_images()
{

//    $target_dir = "/mmcovid19/uploads/";
    $target_dir = $_SERVER['DOCUMENT_ROOT'] . "/mmcovid19/uploads/";
    $target_files = [];
    $image_file_types = [];
    $ok_to_upload = true;

    // Setting File Names to Store in Server
    foreach ($_FILES["images"]["name"] as $img_name) {
        $img_name = str_replace(',', '', $img_name);
        array_push($target_files, $target_dir . uniqid() . '_' .str_replace(' ', '', basename($img_name)));
    }

    // Getting All The File's Types
    foreach ($target_files as $target_file) {
        if (file_exists($target_file)) $ok_to_upload = false;
        array_push($image_file_types, strtolower(pathinfo($target_file, PATHINFO_EXTENSION)));
    }
    // Checking Uploaded Files are valid
    foreach ($image_file_types as $image_file_type) {
        if ($image_file_type != "jpg" && $image_file_type != "png" && $image_file_type != "jpeg") {
            array_push($_SESSION['error_msg'], 'JPG, JPEG နှင့် PNG ဖိုင်များကိုသာခွင့်ပြုသည်။');
            $ok_to_upload = false;
        }
    }
    // Checking Sizes
    foreach ($_FILES["images"]["size"] as $size) {
        if ($size > 2048000) {
            $ok_to_upload = false;
            array_push($_SESSION['error_msg'], 'ဖိုင်အရွယ်အစားသည်အလွန်ကြီးသည်');
        }
    }

    if (!$ok_to_upload) return false;


    for ($i = 0; $i < count($_FILES["images"]["tmp_name"]); $i++) {
        if (move_uploaded_file($_FILES["images"]["tmp_name"][$i], $target_files[$i])) {
            //echo "The file " . basename($_FILES["images"]["name"][$i]) . " has been uploaded.";
            $target_files[$i] = str_replace($_SERVER['DOCUMENT_ROOT'], '', $target_files[$i]);
        } else {
            array_push($_SESSION['error_msg'], 'Image တွေကိုသိမ်းဆည်လို့မရလိုက်ပါ။');
            return false;
        }
    }
    return implode(',', $target_files);

}

function email_availability($connection, $email)
{
    if (isset($connection) && isset($email)) {
        $sql = "SELECT * FROM `user` WHERE `email` = '{$email}'";

        $result = mysqli_query($connection, $sql);
        if (mysqli_num_rows($result) > 0)
            return false;
        return true;
    }
    return false;
}

function login_user($connection, $email, $password)
{
    if (!email_availability($connection, $email)) {
        $sql = "SELECT * FROM `user` WHERE email='{$email}'";

        $result = mysqli_query($connection, $sql);
        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);

            if (password_verify($password, $row['password'])) {
                return $row;
            }
            array_push($_SESSION['error_msg'], 'Incorrect Password');
            return false;
        } else {
            array_push($_SESSION['error_msg'], 'Email Doesn\'t Exist');
            return false;
        }
    }
    array_push($_SESSION['error_msg'], 'Email Doesn\'t Exist');
    return false;
}

function authenticate_user()
{
    if (!isset($_SESSION['user']) || count($_SESSION['user']) == 0)
        header('location: /mmcovid19/dashboard/signin.php');
}

function authorization_route($reject_route, $all = true, $except = [''])
{
    if (!isset($_SESSION['user']) || count($_SESSION['user']) == 0)
        header('location: ' . $reject_route);
    if ($all) {
        return;
    } else {
        if (in_array($_SESSION['user']['role'], $except))
            header('location: ' . $reject_route);
    }

}

function print_error_message_from_session()
{
    /*
    <div class="sufee-alert alert with-close alert-danger alert-dismissible fade show">
											<span class="badge badge-pill badge-danger">Success</span>
											You successfully read this important alert.
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">×</span>
											</button>
										</div>
    */
    if (!empty($_SESSION['error_msg'])) {
        ?>
        <div class="alert alert-danger px-5">
            <ul>
                <?php
                foreach ($_SESSION['error_msg'] as $error) {
                    echo '<li>' . $error . '</li>';
                }
                ?>
            </ul>
        </div>
        <?php
        $_SESSION['error_msg'] = [];
    }
}

function print_success_message_from_session()
{
//    echo $_SESSION['success_msg'];
//    die();
    if (!empty($_SESSION['success_msg'])) {
        ?>
        <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
            <span class="badge badge-pill badge-success">Success</span>
            <?php echo $_SESSION['success_msg']; ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
        <?php
        $_SESSION['success_msg'] = null;
    }
}

function database_images_string_to_locations($photos)
{
    if (gettype($photos) != gettype('string')) return [];
    if (strlen($photos) < 4) return [];
    $photos = str_replace("\"", "", $photos);
    $photos = str_replace("/opt/lampp/htdocs", "", $photos);
//    $photos = str_replace("\\", "", $photos);
//    $photos = substr($photos, 1, strlen($photos) - 2);
    return explode(",", $photos);
}


function create_pagination($MAX_PAGE_DISPLAY, $current_page_no, $total_count)
{
    if ($total_count > $MAX_PAGE_DISPLAY) {
        $temp_total_count = $total_count;
        $index = 0;
        ?>
        <div class="py-0">
            <nav aria-label="Page navigation example" class="float-right">

                <ul class="pagination">
                    <?php
                    if($current_page_no != 1 && $total_count > $MAX_PAGE_DISPLAY){
                        ?><li class="page-item"><a class="page-link"
                                                   href="?page=1">First</a>
                        </li>

                        <?php
                    }
                    ?>
                    <?php
                    if ($current_page_no != 1) {
                        ?>
                        <li class="page-item"><a class="page-link"
                                                 href="?page=<?php echo $current_page_no - 1; ?>">Previous</a>
                        </li>
                        <?php
                    }
                    ?>

                    <?php
                    while ($temp_total_count > 0) {
                        $index++;
                        $temp_total_count -= $MAX_PAGE_DISPLAY;
                        if (abs($current_page_no - $index) > 2)
                            continue;

                        ?>
                        <li class="page-item"><a
                                    class="page-link <?php echo $index == $current_page_no ? 'bg-success text-white' : '' ?>"
                                    href="?page=<?php echo $index ?>"><?php echo $index ?></a>
                        </li>
                    <?php }
                    if ($index > $current_page_no) {

                        ?>

                        <li class="page-item"><a class="page-link"
                                                 href="?page=<?php echo $current_page_no + 1 ?>">Next</a>
                        </li>
                        <?php
                    }
                    if((int)ceil($total_count/$MAX_PAGE_DISPLAY) != $current_page_no && $total_count > $MAX_PAGE_DISPLAY){
                        ?><li class="page-item"><a class="page-link"
                                                   href="?page=<?php echo (int)ceil($total_count/$MAX_PAGE_DISPLAY) ?>">Last</a>
                        </li>

                        <?php
                    }
                    ?>
                </ul>
            </nav>
        </div>
        <?php
    }
}

function set_up_user($connection){
    authenticate_user();
    if(!isset($_SESSION['CREATED'])){
        $_SESSION['CREATED'] = time();
    }
    if (time() - $_SESSION['CREATED'] > 1800) {
        $_SESSION['user'] = null;
        $_SESSION['CREATED'] = null;
        authenticate_user();
    }else
        $_SESSION['CREATED'] = time();

    $check_user = "SELECT * FROM `user` WHERE id={$_SESSION['user']['id']} AND `status`='Active'";
    $check_user_result = mysqli_query($connection, $check_user);
    if($check_user_result && mysqli_num_rows($check_user_result) == 1){
        $_SESSION['user'] = mysqli_fetch_assoc($check_user_result);
        return $_SESSION['user'];
    }else{
        header('location: /mmcovid19/dashboard/signin.php');
        exit();
    }
}
