<?php
//SELECT p.id, p.slug, p.slug as 'p_slug', p.thumbnail, t.title, t.slug FROM `project_tag` pt
//INNER JOIN tag t ON
//pt.tag = t.id
//INNER JOIN project p ON
//pt.project = p.id
//ORDER BY t.title
$sql  = "SELECT p.id, p.title, p.slug, p.slug as 'p_slug', p.thumbnail, t.id as 't_id', t.slug, t.title as 't_title' FROM `project_tag` pt ";
$sql .= "INNER JOIN tag t ON ";
$sql .= "pt.tag = t.id ";
$sql .= "INNER JOIN project p ON ";
$sql .= "pt.project = p.id ";
$sql .= "ORDER BY t.title";

$tag_sql = "SELECT * FROM `tag` WHERE `status` = 1";

$result = mysqli_query($connection, $sql);
if ($result) {
    $result = mysqli_fetch_all($result, MYSQLI_ASSOC);
} else {
    die(mysqli_error($connection));
}

$tags = mysqli_query($connection, $tag_sql);
if ($tags) {
    $tags = mysqli_fetch_all($tags, MYSQLI_ASSOC);
} else {
    die(mysqli_error($tags));
}


$projects_sql = "SELECT * FROM `project` ORDER BY `display_order`";
$projects = mysqli_query($connection, $projects_sql);
if ($projects) {
    $projects = mysqli_fetch_all($projects, MYSQLI_ASSOC);
} else {
    die(mysqli_error($connection));
}

?>

<div class="products-4" id="portfolio">
    <div id="products4-block" class="text-center">
        <div class="container">
            <div class="heading text-center mx-auto mb-5">
                <h3 class="head">Projects</h3>
                <!-- <p class="my-3 head">
                    Some of the projects are not shown in the list because of the project's privacy.
                </p> -->
            </div>
            <input id="tab1" type="radio" name="tabs" checked>
            <section id="content1" class="tab-content text-left">
                <div class="d-grid grid-col-3">
                    <?php foreach ($projects as $project) { ?>
                        <div class="product">
                            <a href="/project/?project=<?php echo $project['slug']; ?>">
                                <figure>
                                    <div class="blg-img">
                                        <img src="<?php echo $project['thumbnail']; ?>" alt=" " class="shadow img-responsive img-fluid">
                                        <div class="bl-top pt-2 text-center">
                                            <h6><?php echo $project['title']; ?></h6>
                                        </div>
                                    </div>
                                </figure>
                            </a>
                        </div>
                    <?php } ?>
                </div>
            </section>
        </div>
    </div>
</div>