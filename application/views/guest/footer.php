<!-- features -->
<div class="features about">
    <div class="container">
        <div class="wthree-features-row">
            <div class="col-md-4 features-w3grid">
                <div class="col-xs-3 features-w3lleft">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                </div>
                <div class="col-xs-9 features-w3lright">
                    <h4>CONTACTO</h4>
                    <p>+01 111 222 3333</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 features-w3grid">
                <div class="col-xs-3 features-w3lleft">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                </div>
                <div class="col-xs-9 features-w3lright">
                    <h4>Ubicación</h4>
                    <p> CC TERRAZA DEL AVILA piso 6 oficina C17</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 features-w3grid">
                <div class="col-xs-3 features-w3lleft">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                </div>
                <div class="col-xs-9 features-w3lright">
                    <h4>Correo</h4>
                    <p><a href="mailto:ciancentrointegral@gmail.com">ciancentrointegral@gmail.com</a></p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //features -->
<!-- footer -->
<div class="footer w3layouts">
    <div class="container">
        <div class="footer-agileinfo">
            <div class="col-md-3 col-sm-6 footer-grid">
                <h3>Useful Info</h3>
                <p>Lorem Ipsum was popularised In sit amet sapien eros Integer dolore magna aliqua Temporibus autem quibusdam et aut officiis debitis aut rerum necess itatibus saepe.</p>
            </div>
            <div class="col-md-3 col-sm-6 footer-grid footer-tags">
                <h3>Navigation</h3>
                <ul>
                    <li><a href="<?= site_url('home'); ?>"><i class="fa fa-angle-right"></i>Inicio</a></li>
                    <li><a href="<?= site_url('about'); ?>"><i class="fa fa-angle-right"></i> Acerca de</a></li>
                    <li><a href="<?= site_url('gallery'); ?>"><i class="fa fa-angle-right"></i>Galeria</a></li>
                    <li><a href="<?= site_url('contact'); ?>"><i class="fa fa-angle-right"></i>Contáctanos</a></li>
                </ul>
            </div>
            <div class="col-md-4 col-sm-6 footer-grid footer-review">
                <h3>Newsletter</h3>
                <p>Maecenas sodales tortor ac ligula ultrices dictum et quis urna neque eget.</p>
                <form action="#" method="post">
                    <input type="email" name="Email" placeholder="Your Email" required="">
                    <input type="submit" value="Subscribe">
                    <div class="clearfix"> </div>
                </form>
            </div>
            <div class="col-md-2 col-sm-6 footer-grid w3social">
                <h3>Media</h3>
                <ul>
                    <li><a href="#"><i class="fa fa-google-plus"></i>Google-plus</a></li>
                    <li><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
                    <li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
                    <li><a href="#"><i class="fa fa-dribbble"></i>Dribbble</a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>

<!-- //footer -->
<!-- modal-about -->
<div class="modal bnr-modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body modal-spa">
                <img src="<?= base_url('plantilla/images/img2.jpg') ?>" class="img-responsive" alt=""/>
                <h4>Cras rutrum iaculis enim</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras rutrum iaculis enim, non convallis felis mattis at. Donec fringilla lacus eu pretium rutrum. Cras aliquet congue ullamcorper. Etiam mattis eros eu ullamcorper volutpat. Proin ut dui a urna efficitur varius miet congue consectetur adipiscing. <br>Uisque molestie cursus miet congue consectetur adipiscing elit cras rutrum iaculis enim, Lorem ipsum dolor sit amet, non convallis felis mattis at. Maecenas sodales tortor ac ligula ultrices dictum et quis urna. Etiam pulvinar metus neque, eget porttitor massa vulputate in. Fusce lacus purus, pulvinar ut lacinia id, sagittis eu mi. Vestibulum eleifend massa sem, eget dapibus turpis efficitur at. </p>
            </div>
        </div>
    </div>
</div>
<!-- //modal-about -->
<!-- start-smooth-scrolling -->
<script src="<?= base_url('plantilla/js/SmoothScroll.min.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('plantilla/js/move-top.js') ?>"></script>
<script type="text/javascript" src="<?= base_url('plantilla/js/easing.js') ?>"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event) {
            event.preventDefault();

            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<?= base_url('plantilla/js/bootstrap.js') ?>"></script>
</body>
</html>