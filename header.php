<?php
//phpinfo();die;
session_start();
ob_start();
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$folder = dirname(__FILE__);
include_once('config.php');
include_once('__autoload.php');
$action = new action();
include_once dirname(__FILE__).DIR_FUNCTIONS."database.php";
// $urlAnalytic = $action->showabc();    
include_once dirname(__FILE__).DIR_FUNCTIONS_PAGING."pagination.php";
include_once 'functions/phpmailer/class.smtp.php';
include_once 'functions/phpmailer/class.phpmailer.php';
include_once "functions/vi_en.php";
// // LÀM RÕ NHỮNG THƯ VIỆN NÀY
// // include_once('lib/vi_en.php');
// // include_once('lib/nganLuong/NL_Checkoutv3.php');

// // LÀM RÕ Install Cart

// Install MultiLanguage
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE."lang_config.php";
include_once dirname(__FILE__).DIR_FUNCTIONS_LANGUAGE.$lang_file;
// Install Friendly Url
include_once dirname(__FILE__).DIR_FUNCTIONS_URL."url_config.php";
// Configure Website
include_once dirname(__FILE__).DIR_FUNCTIONS."website_config.php";
// echo $translate['link_contact'];die;
$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
// $action = new action();
$cart = new action_cart();
$menu = new action_menu();
$action_product = new action_product();
$action_news = new action_news();
$action_page = new action_page();
if($lang == "vn"){
    $rowConfig_lang = $action->getDetail('config_languages','id',1);
}else{
    $rowConfig_lang = $action->getDetail('config_languages','id',2);
}


$rowConfig = $action->getDetail('config','config_id',1);
?>
<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Homestay Việt Nam</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" id="themify-icons-css" href="css/themify-icons.css" type="text/css" media="all">
<!--    <link rel="stylesheet" href="css/isotope-docs.css">-->

    <!--    font open san-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
          rel="stylesheet">

<!--    font RELAWWAY-->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!--    OWL-CSSS-->
    <!--    <link rel="stylesheet" href="css/owl.carousel.css">-->
    <!--    <link rel="stylesheet" href="css/owl.theme.css">-->

    <link rel="stylesheet" href="dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="dist/assets/owl.theme.default.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <link rel="stylesheet" href="css/style.css">



</head>
<body>
<header class="vk-header">
    <div class="top-bar">
        <div class="top-bar-bg"></div>
        <div class="container">
            <div class="wrapper">
                <div class="top-bar-text">

                    <div class="top-bar-left">
                        <ul>
                            <li>
                                <span><i class="fa fa-envelope" aria-hidden="true"></i>  </span>info@beacon.vn
                            </li>
                            <li>
                                <span><i class="fa fa-phone" aria-hidden="true"></i> </span>0983 637549
                            </li>
                            <li>
                                <span><i class="fa fa-map-marker" aria-hidden="true"></i> </span>45 Queen's Park Rd, Brighton, UK
                            </li>
                        </ul>
                    </div>
                    <div class=" top-bar-right">
                        <div class="top-bar-login">
                            <ul>
                                <li><a href=""><span><i class="fa fa-user" aria-hidden="true"></i></span>Đăng nhập</a>
                                </li>
                                <li>|</li>
                                <li><a href=""><span><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>Đăng
                                        ký</a></li>
                                <li class="vk-menu-search">
<!--                                    javascript:void(0);-->
                                    <a href="#" class="menu-search">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </a>
                                    <div class="search">
                                        <form role="search" action="" method="POST">
                                            <input type="text" id="firstName" placeholder="Search..." class="form-control" autofocus>
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-search" aria-hidden="true"></i></button>
                                            </span>
                                        </form>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <div class="nav-bar fixed animated">
        <div class="container">
            <div class="row">
                <div class="col-md-2 logo ">
                    <a href="index.php"><img src="images/logo_becon.png" class="img-responsive" alt=""> </a>
                </div>
                <div class="col-md-2 col-md-push-8">
                    <div class=" vk-dk-learn">
                        <a href="dangky.php" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">
                            <i class="fa fa-address-book" aria-hidden="true"></i> ĐĂNG KÝ NGAY</a>
                    </div>
                </div>
                <div class="col-md-8 menu-top col-md-pull-2">
                    <div class="menu_reponsive">
                        <div class="menu_icon">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </div>
                    </div>

                    <nav id="vk-top-nav">
                        <ul class="list-inline menu_chinh">
                            <li><a href="index.php" class="active">TRANG CHỦ</a>
                                <div class="vk-icon-respon">
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </div>
                            </li>
                            <li><a href="#">ĐÀO TẠO</a>
                                <div class="vk-icon-respon">
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </div>
                                <ul class="vk-menu-sub animated fadeIn">
                                    <li><a href="course_1.php">TIẾNG ANH CHO TRẺ EM</a></li>
                                    <li><a href="course_1.php">TIẾNG ANH LUYỆN THI</a></li>
                                    <li><a href="course_1.php">TIẾNG ANH CHO NGUÒI ĐI LÀM</a></li>
                                    <li><a href="course_1.php">TIẾNG ANH HÈ</a></li>
                                    <li><a href="course_1.php">KHÓA HỌC TIẾNG ANH ĐẶC BIỆT</a></li>
                                    <li><a href="course_1.php">TIẾNG ANH LỄ TÂN KHÁCH SẠN/ NHÀ HÀNG</a></li>
                                </ul>
                            </li>
                            <li><a href="lich-khai-giang-2.php">LỊCH KHAI GIẢNG</a></li>
                            <li><a href="blog.php">TIN TỨC</a></li>
                            <li><a href="contact.php">LIÊN HỆ</a></li>
                        </ul>

                    </nav>
                </div>

            </div>
        </div>
    </div>
</header>