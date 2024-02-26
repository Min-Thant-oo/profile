<section class="w3l-footer-29-main" id="footer">
    <div class="footer-29 text-center">
        <div class="container">

            <div class="main-social-footer-29">

                <a href="<?php echo $SETTING['facebook']; ?>" target="_blank" class="facebook"><span class="fa fa-facebook"></span></a>
                <a href="<?php echo $SETTING['instagram']; ?>" target="_blank" class="instagram"><span class="fa fa-instagram"></span></a>
                <a href="<?php echo $SETTING['linkedin']; ?>" target="_blank" class="linkedin"><span class="fa fa-linkedin"></span></a>
                <a href="<?php echo $SETTING['github']; ?>" target="_blank" class="linkedin"><span class="fa fa-github"></span></a>
            </div>
            <div class="bottom-copies text-center">
                <p class="copy-footer-29">© <?php echo date("Y"); ?> Min Thant Oo. All rights reserved </p>

            </div>
        </div>
    </div>
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fa fa-angle-up"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- /move top -->
</section>