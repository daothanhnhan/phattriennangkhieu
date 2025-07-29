<?php 
    function dang_ky_ngay () {
        global $conn_vn;
        if (isset($_POST['dang_ky_ngay'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $phone = $_POST['phone'];
            $course = $_POST['course'];
            $skype = $_POST['skype'];

            $sql = "INSERT INTO dang_ky_ngay (name, email, phone, course, skype) VALUES ('$name', '$email', '$phone', '$course', '$skype')";
            $result = mysqli_query($conn_vn, $sql);
            echo '<script type="text/javascript">alert(\'Bạn đã đăng ký ngay thành công.\')</script>';
        }
    }
    dang_ky_ngay();
?>

<header class="vk-header">
    <div class="top-bar">
        <div class="top-bar-bg"></div>
        <div class="container">
            <div class="wrapper">
                <div class="top-bar-text">

                    <div class="top-bar-left">
                        <ul>
                            <li>
                                <span><i class="fa fa-envelope" aria-hidden="true"></i>  </span><?= $rowConfig['content_home2'] ?>
                            </li>
                            <li>
                                <span><i class="fa fa-phone" aria-hidden="true"></i> </span><?= $rowConfig['content_home3'] ?>
                            </li>
                            <li>
                                <span><i class="fa fa-map-marker" aria-hidden="true"></i> </span><?= $rowConfig_lang['lang_content_home1'] ?>
                            </li>
                            <li>
                                <img src="/images/flag/en.png" alt="" height="20" onclick="lang_en()">
                            </li>
                            <li>
                                <img src="/images/flag/vn.png" alt="" height="20" onclick="lang_vn()">
                            </li>
                        </ul>
                    </div>
                    <!-- <div class=" top-bar-right">
                        <div class="top-bar-login">
                            <ul>
                                <li><a href=""><span><i class="fa fa-user" aria-hidden="true"></i></span>Đăng nhập</a>
                                </li>
                                <li>|</li>
                                <li><a href=""><span><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>Đăng
                                        ký</a></li>
                                <li class="vk-menu-search">
                                    <a href="#" class="menu-search">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </a>
                                    <div class="search">
                                        <form role="search" action="/search-news/0" method="POST">
                                            <input type="text" name="q" id="firstName" placeholder="Search..." class="form-control" autofocus>
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                            </span>
                                        </form>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div> -->

                </div>
            </div>

        </div>
    </div>
    <div class="nav-bar fixed animated">
        <div class="container">
            <div class="row">
                <div class="col-md-2 logo ">
                    <a href="/"><img src="/images/<?= $rowConfig['web_logo'] ?>" class="img-responsive" alt="logo"> </a>
                </div>
                <div class="col-md-2 col-md-push-8">
                    <div class=" vk-dk-learn">
                        <a href="/dang-ky" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">
                            <i class="fa fa-address-book" aria-hidden="true"></i> <?= $lang == 'vn' ? 'ĐĂNG KÝ NGAY' : 'REGISTER NOW' ?></a>
                    </div>
                </div>
                <div class="col-md-8 menu-top col-md-pull-2">
                    <div class="menu_reponsive">
                        <div class="menu_icon">
                            <i class="fa fa-bars" aria-hidden="true"></i>
                        </div>
                    </div>

                    <nav id="vk-top-nav">
                        <!-- <ul class="list-inline menu_chinh">
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
                        </ul> -->
                        <?php 
                            $list_menu = $menu->getListMainMenu_byOrderASC();
                            $menu->showMenu_byMultiLevel_mainMenuCarrot($list_menu,0,$lang,0);
                        ?>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</header>