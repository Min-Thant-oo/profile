<?php

session_start();
$base_path = $_SERVER['DOCUMENT_ROOT'];
include_once $base_path . '/config/db_connection.php';
include_once $base_path . '/config/functions.php';

$not_found_url = '/';
$project = [];
$project_tags = [];
$title = '';

if (isset($_GET['project']) && !empty($_GET['project'])) {
    global $project, $project_tags, $title;
    $project_slug = mysqli_real_escape_string($connection, $_GET['project']);

    if (strpos($_SERVER['REQUEST_URI'], 'index.php')) {
        header('location: /project/?project=' . $project_slug);
    }
    $project_sql = "SELECT * FROM `project` WHERE `slug`='{$project_slug}'";

    $project = mysqli_query($connection, $project_sql);
    if (!$project && mysqli_num_rows($project) == 0) header('location: ' . $not_found_url);

    $project = mysqli_fetch_assoc($project);
    $title = $project['title'] . " - Projects";

    $project_tags_sql = "SELECT * FROM `project_tag` INNER JOIN `tag` ON project_tag.tag = tag.id WHERE `project`={$project['id']};";
    $project_tags = mysqli_query($connection, $project_tags_sql);
    if (!$project_tags) header('location: ' . $not_found_url);

    $project_tags = mysqli_fetch_all($project_tags, MYSQLI_ASSOC);

//    mysqli_free_result($blog_tags);
//    var_dump($blog_tags);

} else header('location: ' . $not_found_url);


?>
<!doctype html>
<html lang="en">
<head>
    <?php include_once $base_path . '/home_sub_html/header.php' ?>
</head>
<body>

<?php include_once $base_path . '/home_sub_html/navbar.php' ?>


<section class="w3l-blog-breadcrum">
    <div class="breadcrum-bg"
         style="background-image:linear-gradient(to right, rgba(0, 0, 0, 0.75), rgba(0,0,0, 0.75)), url('<?php echo empty($project["banner"]) ? '/assets/images/11.jpg' : $project["banner"]; ?>')">
        <div class="container py-5">

            <h2 class="my-3"><?php echo $project["title"]; ?></h2>
            <p> <?php echo date("F Y", strtotime($project['date'])); ?> - created
                by <?php echo $project["creator"]; ?></p>
        </div>
    </div>
</section>


<section class="w3l-blog-single">
    <div class="single blog py-5">
        <div class="container py-md-3">

            <div class="d-grid grid-colunm-2">
                <!-- left side blog post content -->
                <div class="single-left">
                    <div class="single-left1">
                        <div class="row">
                            <div class="col-12">
                                <?php if (!empty($project['banner'])) { ?>
                                    <img src="<?php echo $project["banner"]; ?>">
                                <?php } ?>
                            </div>
                        </div>

                        <div class="btom-cont1 pt-4">
                            <h5 class="card-title"><a href="#"><?php echo $project["title"]; ?></a></h5>
                            <ul class="admin-post">
                                <li>
                                    <?php foreach ($project_tags as $tag) { ?>
                                        <a href="#<?php echo $tag["title"]; ?>"><span
                                                    class="fa fa-tag"> <?php echo $tag["title"]; ?></span> </a>
                                    <?php } ?>
                                </li>
                            </ul>
                        </div>

                        <?php echo stripcslashes($project["content"]); ?>
                    </div>

                </div>
            </div>
        </div>


    </div>
    <!-- left side blog post content -->

    <!-- right side bar -->
    <!-- //right side bar -->
    </div>
    </div>
    </div>
</section>

<?php include_once $base_path . '/home_sub_html/footer.php' ?>
<?php include_once $base_path . '/home_sub_html/javascript.php' ?>
</body>

</html>
<!-- // grids block 5 -->
