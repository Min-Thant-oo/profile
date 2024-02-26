<?php
// if (session_status() == PHP_SESSION_NONE) {
//     session_start();
// }
$requestedFile = $_SERVER["SCRIPT_FILENAME"];

if (is_file($requestedFile) && !strpos($requestedFile, 'index.php')) {
    return false; // serve the requested file as-is
}

$base_path = $_SERVER['DOCUMENT_ROOT'];
include_once $base_path . '/config/db_connection.php';
include_once $base_path . '/config/functions.php';
?>
<!doctype html>
<html lang="en">
<?php include_once $base_path . '/home_sub_html/header.php' ?>

<body>
    <?php include_once $base_path . '/home_sub_html/navbar.php' ?>
    <!--  Main banner section -->
    <section class="w3l-main-banner" id="home">
        <div class="companies20-content">
            <div class="companies-wrapper">
                <div class="item">

                    <div class="slider-info banner-view text-center">
                        <div class="banner-info container">
                            <img src="<?php echo $SETTING['profile_image']; ?>" width="128px"="about image" class="img-fluid">
                            <?php echo $SETTING['title'] . $SETTING['sub_title'];
                            ?>
                            <!-- <p class="my-4 mb-5">Full-Stack Developer</p><br> -->

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--  //Main banner section -->
    <?php include_once $base_path . '/home_sub_html/skills.php' ?>
    <?php include_once $base_path . '/home_sub_html/work_and_experience.php' ?>
    <?php include_once $base_path . '/home_sub_html/home_projects.php' ?>
    <?php include_once $base_path . '/home_sub_html/footer.php' ?>
    <?php include_once $base_path . '/home_sub_html/javascript.php' ?>
</body>

</html>
<!-- // grids block 5 -->