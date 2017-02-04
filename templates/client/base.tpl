<!DOCTYPE html>
<html>
    <head>
        <!-- Site made with Mobirise Website Builder v3.10.7, https://mobirise.com -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="generator" content="Mobirise v3.10.7, mobirise.com">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
        <meta name="description" content="">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
        <link rel="stylesheet" href="/{$base_url}/public/assets/bootstrap-material-design-font/css/material.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/et-line-font-plugin/style.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/tether/tether.min.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/dropdown/css/style.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/animate.css/animate.min.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/theme/css/style.css">
        <link rel="stylesheet" href="/{$base_url}/public/assets/mobirise/css/mbr-additional.css" type="text/css">



    </head>
    <body>
        <section id="menu-0">

            <nav class="navbar navbar-dropdown bg-color transparent navbar-fixed-top">
                <div class="container">

                    <div class="mbr-table">
                        <div class="mbr-table-cell">
                            <div class="navbar-brand">
                                <a href="https://mobirise.com" class="navbar-logo"><img src="assets/images/logo.png" alt="Mobirise"></a>
                                <a class="navbar-caption" href="https://mobirise.com">MOBIRISE</a>
                            </div>
                        </div>
                        <div class="mbr-table-cell">

                            <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                                <div class="hamburger-icon"></div>
                            </button>

                            <ul class="nav-dropdown collapse pull-xs-right nav navbar-nav navbar-toggleable-sm" id="exCollapsingNavbar">
                                <li><a href="/{$base_url}/login.php">ورود</a></li>
                                {foreach $data['menu'] as $menu}
                                    <li class="nav-item"><a class="nav-link link" href="/{$base_url}/allnews.php?id={$menu['id']}">{$menu['name']}</a></li>
                                {/foreach}
                                <li><a class="nav-link link" href="/{$base_url}">صفحه اصلی</a></li>
                            </ul>
                            <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                                <div class="close-icon"></div>
                            </button>
                        </div>
                    </div>
                </div>
            </nav>

        </section>

        {include file=$page}   

        <section class="mbr-section" id="form1-8" style="background-color: rgba(0, 0, 0,0.05); padding-top: 120px; padding-bottom: 120px;">

            <div class="mbr-section mbr-section__container mbr-section__container--middle">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 text-xs-center">
                            <h3 class="mbr-section-title display-2">CONTACT FORM</h3>
                            <small class="mbr-section-subtitle">Shape your future web project with sharp design and refine coded functions.</small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mbr-section mbr-section-nopadding">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-lg-10 col-lg-offset-1" >


                            <div data-form-alert="true">
                                <div hidden="" data-form-alert-success="true" class="alert alert-form alert-success text-xs-center">Thanks for filling out form!</div>
                            </div>


                            <form action="/{$base_url}/contact.php" method="post" data-form-title="CONTACT FORM">
                                <div class="row row-sm-offset">

                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="form1-8-name">Name<span class="form-asterisk">*</span></label>
                                            <input type="text" class="form-control" name="name" required="" data-form-field="Name" id="form1-8-name">
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="form1-8-email">Email<span class="form-asterisk">*</span></label>
                                            <input type="email" class="form-control" name="email" required="" data-form-field="Email" id="form1-8-email">
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="form1-8-phone">Phone</label>
                                            <input type="tel" class="form-control" name="phone" data-form-field="Phone" id="form1-8-phone">
                                        </div>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <label class="form-control-label" for="form1-8-message">Message</label>
                                    <textarea class="form-control" name="message" rows="7" data-form-field="Message" id="form1-8-message"></textarea>
                                </div>

                                <div><button type="submit" class="btn btn-primary">CONTACT US</button></div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer class="mbr-small-footer mbr-section mbr-section-nopadding" id="footer1-9" style="background-color: rgb(50, 50, 50); padding-top: 1.75rem; padding-bottom: 1.75rem;">

            <div class="container">
                <p class="text-xs-center">Copyright (c) 2016 News Smaty.</p>
            </div>
        </footer>


        <script src="/{$base_url}/public/assets/web/assets/jquery/jquery.min.js"></script>
        <script src="/{$base_url}/public/assets/tether/tether.min.js"></script>
        <script src="/{$base_url}/public/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/{$base_url}/public/assets/smooth-scroll/SmoothScroll.js"></script>
        <script src="/{$base_url}/public/assets/dropdown/js/script.min.js"></script>
        <script src="/{$base_url}/public/assets/touchSwipe/jquery.touchSwipe.min.js"></script>
        <script src="/{$base_url}/public/assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
        <script src="/{$base_url}/public/assets/jarallax/jarallax.js"></script>
        <script src="/{$base_url}/public/assets/viewportChecker/jquery.viewportchecker.js"></script>
        <script src="/{$base_url}/public/assets/theme/js/script.js"></script>
        <script src="/{$base_url}/public/assets/formoid/formoid.min.js"></script>


        <input name="animation" type="hidden">
    </body>
</html>