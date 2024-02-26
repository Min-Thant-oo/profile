<section class="w3l-about " id="about">
    <div class="skills-bars py-5">
        <div class="container py-md-3">
            <div class="heading text-center mx-auto">
                <h3 class="head">Who I am and What I can do?</h3>
                <p class="my-3 head"><?php echo $SETTING['skill_intro'] ?></p>
            </div>
            <div class="row mt-5 pt-3">

                <?php
                $skill_sql = "SELECT * FROM `skill` WHERE `status`='1' ORDER BY `percentage` DESC;";
                $skills = mysqli_query($connection, $skill_sql);
                while($row = mysqli_fetch_assoc($skills)){
                    ?>
                    <div class="col-lg-3 col-md-3 col-sm-6 skills-bar-grids mb-4 pb-2">
                        <h4><?php echo $row['name']; ?><small> - <?php echo $row['percentage']; ?>%</small></h4>
                        <div class="progress">
                            <div class="progress-bar progress-bar-striped bg-color" role="progressbar"
                                 style="width: <?php echo $row['percentage']; ?>% ;height:4px;" aria-valuenow="<?php echo $row['percentage']; ?>" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
            <div class="heading text-center mx-auto py-3 justify-content-center">
                <h3 class="head">And I Speak</h3>
            </div>
            <div class="row mt-5 pt-3">
                <div class="col-lg-3 col-md-3 col-sm-6 skills-bar-grids mb-4 pb-2">
                    <h4>Burmese (Native)<small> - 90%</small></h4>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-color" role="progressbar"
                             style="width: 90% ;height:4px;" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 skills-bar-grids mb-4 pb-2">
                    <h4>English<small> - 70%</small></h4>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-color" role="progressbar"
                             style="width: 70% ;height:4px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 skills-bar-grids mb-4 pb-2">
                    <h4>Turkish<small> - 55%</small></h4>
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-color" role="progressbar"
                             style="width: 55% ;height:4px;" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>