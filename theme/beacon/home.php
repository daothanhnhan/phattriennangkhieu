<?php include "template/slideShow/MS_SLIDESHOW_BEACON_0001.php";?>
<?php include "template/questionAndAnswer/MS_QUESTION_RUOUVANG_0002.php";?>
<?php 

    $home_treem_dv = $action_service->getServiceLangDetail_byId(70, $lang);//var_dump($home_treem_dv);

    $home_luyenthi_dv = $action_service->getServiceLangDetail_byId(69, $lang);

    $home_dilam_dv = $action_service->getServiceLangDetail_byId(68, $lang);

    $home_he_dv = $action_service->getServiceLangDetail_byId(67, $lang);

    $home_dacbiet_dv = $action_service->getServiceLangDetail_byId(66, $lang);

    $home_letan_dv = $action_service->getServiceLangDetail_byId(65, $lang);

?>

<!--begin Khóa học thiết kế đồ họa-->

<!-- <section id="vk-course">

    <div class="overlay"></div>

        <div class="container-fluid">

            <div class="row tabbable tabs-left animated">

                <div class="container-fluid">

                    <div class="row">

                        <div class="col-md-5 animated">

                            <div class="row">

                                <div class="tab-left-content img-bg animated">

                                    <ul class="nav nav-tabs row">

                                        <li class="active"><a href="#a" data-toggle="tab">1. <?= $home_treem_dv['lang_service_name'] ?></a></li>

                                        <li><a href="#b" data-toggle="tab">2. <?= $home_luyenthi_dv['lang_service_name'] ?></a></li>

                                        <li><a href="#c" data-toggle="tab">3. <?= $home_dilam_dv['lang_service_name'] ?></a></li>

                                        <li><a href="#d" data-toggle="tab">4. <?= $home_he_dv['lang_service_name'] ?></a></li>

                                        <li><a href="#e" data-toggle="tab">5. <?= $home_dacbiet_dv['lang_service_name'] ?></a></li>

                                        <li><a href="#f" data-toggle="tab">6. <?= $home_letan_dv['lang_service_name'] ?></a></li>

                                    </ul>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-7 animated vk-course-right">

                            <div class="right-margin">

                                <div class="tab-right-content-bg"></div>

                                <button class="btn btn-default btn-back">

                                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>

                                <div class="tab-right-content">

                                    <div class="tab-content">

                                        <div class="tab-pane active" id="a">

                                            <div class="row col-md-8">

                                                <div class="tab-pane-left">

                                                    <?= $home_treem_dv['lang_service_des'] ?>

                                                </div>

                                            </div>

                                            <div class="col-md-4">

                                                <div class="right-img">

                                                    <img src="images/khoa-hoc-2.png" alt="" class="img-responsive">

                                                </div>

                                            </div>

                                        </div>

                                        <div class="tab-pane" id="b">

                                            <div class="row col-md-8">

                                                <div class="tab-pane-left">

                                                    <?= $home_luyenthi_dv['lang_service_des'] ?>

                                                </div>

                                            </div>

                                            <div class="col-md-4">

                                                <div class="right-img">

                                                    <img src="images/khoa-hoc-2.png" alt="" class="img-responsive">

                                                </div>

                                            </div>

                                        </div>

                                        <div class="tab-pane" id="c">

                                            <div class="row col-md-8">

                                                <div class="tab-pane-left">

                                                    <?= $home_dilam_dv['lang_service_des'] ?>

                                                </div>

                                            </div>

                                            <div class="col-md-4">

                                                <div class="right-img">

                                                    <img src="images/khoa-hoc-2.png" alt="" class="img-responsive">

                                                </div>

                                            </div>

                                        </div>

                                        <div class="tab-pane" id="d">

                                            <div class="col-md-8">

                                                <div class="tab-pane-left">

                                                    <?= $home_he_dv['lang_service_des'] ?>

                                                </div>

                                            </div>

                                            <div class="col-md-4">

                                                <div class="right-img">

                                                    <img src="images/khoa-hoc-2.png" alt="" class="img-responsive">

                                                </div>

                                            </div>

                                        </div>

                                        <div class="tab-pane" id="e">

                                            <div class="row col-md-8">

                                                <div class="tab-pane-left">

                                                    <?= $home_dacbiet_dv['lang_service_des'] ?>

                                                </div>

                                            </div>

                                            <div class="col-md-4">

                                                <div class="right-img">

                                                    <img src="images/khoa-hoc-2.png" alt="" class="img-responsive">

                                                </div>

                                            </div>

                                        </div>

                                        <div class="tab-pane" id="f">

                                            <div class="row col-md-8">

                                                <div class="tab-pane-left">

                                                    <?= $home_letan_dv['lang_service_des'] ?> 

                                                </div>

                                            </div>

                                            <div class="col-md-4">

                                                <div class="right-img">

                                                    <img src="images/khoa-hoc-2.png" alt="" class="img-responsive">

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>





</section> -->



<!--End Khóa học thiết kế đồ họa-->

<?php 

    $home_lagi = $action_page->getPageLangDetail_byId(46, $lang);

    $home_page_arr = array(41, 44, 43, 42);

?>



<div class="gb-gitricotloi_hoanmy">

    <div class="container">

        <div class="gb-gitricotloi_hoanmy-title">

            <h2><?= $home_lagi['lang_page_name'] ?></h2>

            <p><?= $home_lagi['lang_page_des'] ?></p>

            <div class="uniderline_hoanmy"></div>

        </div>

        <?php 

        foreach ($home_page_arr as $id) { 

            $home_item_page = $action_page->getPageDetail_byId($id, $lang);

        	$home_item_page_lang = $action_page->getPageLangDetail_byId($id, $lang);

        ?>

        <div class="col-md-3">

            <div class="gb-gitricotloi_hoanmy-item  wow slideInUp" data-wow-duration="1s">

                <div class="item-img_hoanmy">

                    <img src="/images/<?= $home_item_page['page_img'] ?>" alt="" class="img-responsive">

                </div>

                <div class="item-text-hoanmy">

                    <h4><?= $home_item_page_lang['lang_page_name'] ?></h4>

                    <p><?= $home_item_page_lang['lang_page_des'] ?></p>

                </div>

            </div>

        </div>

    	<?php } ?>

        

    </div>

</div>


<?php include "template/characteristics/MS_CHARACTERISTICS_HOMESTAY_0004.php";?>



<!--BEGIN Ưu đãi mùa hè-->

<section id="vk-uu-dai">

    <div class="vk-uu-dai-overlay"></div>

    <div class="container">

        <div class="row">

            <div class="vk-uu-dai-content">

                <div class="col-sm-7 vk-uu-dai-left">

                    <div class="vk-uu-dai-left-text">

                        <?php if ($lang == 'vn') { ?>

                            <h4>Chào hè 2018</h4>

                            <h3>ƯU ĐÃI HỌC PHÍ 50%</h3>

                            <p>CHO TẤT CẢ CÁC KHÓA HỌC</p>

                        <?php } else { ?>

                            <h4>Hello summer 2018</h4>

                            <h3>PREFERENCES 50% TUITION FEE</h3>

                            <p>FOR ALL COURSES</p>

                        <?php } ?>

                    </div>

                    <div class="vk-uu-dai-left-time">

                        <span class="countdown-section">

                                    <span class="count-amount" id="days">12</span>

                                    <span class="countdown-period"><?= $lang == 'vn' ? 'Ngày' : 'Date' ?></span>

                        </span>

                        <span class="countdown-section">

                                    <span class="count-amount" id="hour">07</span>

                                    <span class="countdown-period"><?= $lang == 'vn' ? 'Giờ' : 'Hour' ?></span>

                        </span>

                        <span class="countdown-section">

                                    <span class="count-amount" id="minutes">23</span>

                                    <span class="countdown-period"><?= $lang == 'vn' ? 'Phút' : 'Minute' ?></span>

                        </span>

                        <span class="countdown-section">

                                    <span class="count-amount" id="second">45</span>

                                    <span class="countdown-period"><?= $lang == 'vn' ? 'Giây' : 'Seconds' ?></span>

                        </span>

                    </div>

                </div>



                <div class="col-sm-4 col-sm-offset-1 vk-uu-dai-right">

                    <div class="vk-uu-dai-right-title">

                        <h3><?= $lang == 'vn' ? 'ĐĂNG KÍ HỌC NGAY' : 'REGISTER NOW' ?></h3>

                        <div class="img">

                            <div class="trigle"></div>

                            <img src="images/box-course.jpg" alt="" class="img-responsive">

                        </div>

                    </div>

                    <form method="post">

                    <div class="vk-uu-dai-right-form">

                        <div class="wrap-select">

                            <div class="form-group">

                                <select class="form-control" name="course" required>

                                    <option value="">--Chọn khóa học--</option>

                                    <option value="Tiếng anh cho người mới">Tiếng anh cho người mới</option>

                                    <option value="Tiếng anh cơ bản">Tiếng anh cơ bản</option>

                                    <option value="Tiếng anh trung cấp">Tiếng anh trung cấp</option>

                                    <option value="Tiếng anh nâng cao">Tiếng anh nâng cao</option>

                                </select>

                            </div>

                        </div>

                        <div class="vk-uu-dai-right-form-action">

                            

                                <div class="form-group">

                                    <input id="name" name="name" type="text" class="form-control" required

                                           placeholder="Họ & tên ... ">

                                </div>

                                <div class="form-group">

                                    <input id="phone" name="email" type="email" class="form-control" required

                                           placeholder="Email...">

                                </div>

                                <div class="form-group">

                                    <input id="phone" name="phone" type="number" class="form-control" required

                                           placeholder="Số diện thoại....">

                                </div>

                                <div class="form-group">

                                    <input id="skype" name="skype" type="text" class="form-control" required

                                           placeholder="Địa chỉ ....">

                                </div>

                                <div class="form-group ">

                                    <!-- <a href="/dang-ky" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Đăng ký</a> -->

                                    <button class="btn btn-primary btn-lg btn-block login-button" id="button" name="dang_ky_ngay"><?= $lang == 'vn' ? 'Đăng ký' : 'Register' ?></button>

                                </div>

                            

                        </div>

                    </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</section>

<!--end Ưu đãi mùa hè-->





<!--begin sắp khai giảng-->

<?php 

    $home_treem_dv_1 = $action_news->getNewsLangDetail_byId(106, $lang);//var_dump($home_treem_dv_1);

    $home_luyenthi_dv_1 = $action_news->getNewsLangDetail_byId(107, $lang);

    $home_dilam_dv_1 = $action_news->getNewsLangDetail_byId(108, $lang);

    $home_he_dv_1 = $action_news->getNewsLangDetail_byId(109, $lang);

?>

<section id="vk-sap-khai-giang">

    <div class="container">

        <div class="vk-sap-khai-giang-title">

            <h3>HOMESTAY VIỆT NAM</h3>

            <h2><?= $lang == 'vn' ? 'KHÓA HỌC SẮP KHAI GIẢNG' : 'COURSE START SOON' ?></h2>

            <div class="vk-sap-khai-giang-border"></div>

        </div>

        <div class="row">

            <div id="owl-demos" class="owl-carousel owl-theme"">



                <div class="item">

                    <div class="overlay"></div>

                    <div class="item-content">

                        <div class="item-title">

                            <h3><?= $home_treem_dv_1['lang_news_name'] ?></h3>

                        </div>

                        <div class="item-text-1">

                            <?= $home_treem_dv_1['lang_news_des'] ?>

                        </div>

                        <div class="item-button">

                            <button type="button" class="btn btn-warning"><a href="<?= $home_treem_dv_1['friendly_url'] ?>"><?= $lang == 'vn' ? 'CHI TIẾT KHÓA HỌC' : 'COURSE DETAILS' ?></a></button>

                        </div>

                    </div>

                    <div class="item-img">

                        <spam class="trigle"></spam>

                        <img src="images/sap-1.jpg"alt="" title="" class="img-responsive">

                    </div>

                </div>



                <div class="item">

                    <div class="item-content">

                        <div class="item-title">

                            <h3><?= $home_luyenthi_dv_1['lang_news_name'] ?></h3>

                        </div>

                        <div class="item-text-1">

                            <?= $home_luyenthi_dv_1['lang_news_des'] ?>

                        </div>

                        <div class="item-button">

                            <button type="button" class="btn btn-warning"><a href="<?= $home_luyenthi_dv_1['friendly_url'] ?>"><?= $lang == 'vn' ? 'CHI TIẾT KHÓA HỌC' : 'COURSE DETAILS' ?></a></button>

                        </div>

                    </div>

                    <div class="item-img">

                        <spam class="trigle"></spam>

                        <img src="images/sap-2.jpg"alt="" title="" class="img-responsive">

                    </div>

                </div>

                <div class="item">

                    <div class="item-content">

                        <div class="item-title">

                            <h3><?= $home_dilam_dv_1['lang_news_name'] ?></h3>

                        </div>

                        <div class="item-text-1">

                            <?= $home_dilam_dv_1['lang_news_des'] ?>

                        </div>

                        <div class="item-button">

                            <button type="button" class="btn btn-warning"><a href="<?= $home_dilam_dv_1['friendly_url'] ?>"><?= $lang == 'vn' ? 'CHI TIẾT KHÓA HỌC' : 'COURSE DETAILS' ?></a></button>

                        </div>

                    </div>

                    <div class="item-img">

                        <spam class="trigle"></spam>

                        <img src="images/sap-3.jpg"alt="" title="" class="img-responsive">

                    </div>

                </div>

                <div class="item">

                    <div class="item-content">

                        <div class="item-title">

                            <h3><?= $home_he_dv_1['lang_news_name'] ?></h3>

                        </div>

                        <div class="item-text-1">

                            <?= $home_he_dv_1['lang_news_des'] ?>

                        </div>

                        <div class="item-button">

                            <button type="button" class="btn btn-warning"><a href="<?= $home_he_dv_1['friendly_url'] ?>"><?= $lang == 'vn' ? 'CHI TIẾT KHÓA HỌC' : 'COURSE DETAILS' ?></a></button>

                        </div>

                    </div>

                    <div class="item-img">

                        <spam class="trigle"></spam>

                        <img src="images/sap-4.jpg"alt="" title="" class="img-responsive">

                    </div>

                </div>

            </div>



        </div>

    </div>

</section>

<?php include "template/service/MS_SERVICE_HOMESTAY_0001.php";?>

<?php include "template/question/MS_QUESTION_HOMESTAY_0001.php";?>

<!--gỈANG VIÊN-->

<?php include DIR_TEAM."MS_TEAM_BEACON_0001.php";?>



<!--video-->

<?php include DIR_VIDEO."MS_VIDEO_BEACON_0001.php";?>



<!--begin nhjan xét của học viên-->

<?php 

    $home_camnhan = $action->getList('cam_nhan', '', '', 'id', 'asc', '', '', '');

?>

<section id="vk-testimonials">

    <div class="overlay"></div>

    <div class="container">

        <!--        <div class="row">-->

        <div data-wow-delay="0.2s">

            <div class="vk-testimonials-title">

                <h3>Testimonials</h3>

                <h2><?= $lang == 'vn' ? 'CẢM NHẬN CỦA HOC VIÊN' : 'STUDENTS\' OPINIONS' ?></h2>

            </div>

            <div class="vk-testimonials-border"></div>

            <div class="carousel slide" data-ride="carousel" id="quote-carousel">

                <!-- Bottom Carousel Indicators -->

                <ol class="carousel-indicators">

                    <?php 

                    $d = 0;

                    foreach ($home_camnhan as $item) { 

                        $d++;

                    ?>

                    <li data-target="#quote-carousel" data-slide-to="0" class="<?= $d==1 ? 'active' : '' ?>">

                        <img class="img-responsive " src="images/<?= $item['image'] ?>" alt="">

                    </li>

                    <?php } ?>

                </ol>

                <div class="row">

                    <!-- Carousel Slides / Quotes -->

                    <div class="carousel-inner text-center">

                        <?php 

                        $d = 0;

                        foreach ($home_camnhan as $item) { 

                            $d++;

                        ?>

                        <!-- Quote 1 -->

                        <div class="item <?= $d==1 ? 'active' : '' ?>">

                            <blockquotes>

                                <div class="row">

                                    <div class="col-sm-10 col-sm-offset-1 vk-testimonials-item">

                                        <h3><?= $lang == 'vn' ? 'Cảm ơn HOMESTAY VIỆT NAM rất nhiều!' : 'Thank you HOMESTAY VIETNAM very much!' ?></h3>

                                        <p><?= $lang == 'vn' ? $item['note'] : $item['note_en'] ?></p>

                                        <small><?= $item['name'] ?> - <span><?= $item['tu'] ?></span>

                                        </small>

                                    </div>

                                </div>

                            </blockquotes>

                        </div>

                        <?php } ?>

                    </div>

                </div>



                <!-- Carousel Buttons Next/Prev -->

                <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-angle-left"

                                                                                             aria-hidden="true"></i></a>

                <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-angle-right"

                                                                                              aria-hidden="true"></i></i>

                </a>

            </div>

        </div>

        <!--        </div>-->

    </div>

</section>

<!--end nhận xét của học viên-->



<?php 

    $home_news_new_destop = $action_news->getListNewsNew_hasLimit(6);

    $home_news_new_mobile = $action_news->getListNewsNew_hasLimit(3);

    $home_news_tintuc = $action_news->getNewsList_byMultiLevel_orderNewsId(76, 'desc', 1, 6, '')['data'];

?>

<!--Begin bài viết mới nhất-->

<section id="vk-new-blog">

    <div class="container">

        <div class="vk-new-blog-title">

            <h3>BLOG</h3>

            <h2><?= $lang == 'vn' ? 'BÀI VIẾT MỚI NHẤT' : 'NEW POST' ?></h2>

            <div class="vk-new-blog-border"></div>

        </div>

        <!--       begin Show destop-->



        <div class="row">

            <div class="vk-new-blog-destop">

                <div id="owl-demo1" class="owl-carousel owl-theme"">

<!--                <div id="owl-demo1" class="owl-carousel">-->

                    <?php 

                    $d = 0;

                    foreach ($home_news_tintuc as $item) {

                        $d++;

                        $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 

                    ?>

                    <div class="item">

                        <div class="item-img">

                            <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>

                            <div class="caption caption-large">

                                <time class="the-date"><?= substr($item['news_created_date'], 0, 10) ?></time>

                            </div>

                        </div>

                        <div class="item-text">

                            <div class="item-text-title">

                                <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>

                            </div>

                            <div class="item-text-description">

                                <p><?= $rowLang['lang_news_des'] ?></p>

                            </div>

                        </div>

                        <div class="item-blog-button">

                            <a href="/<?= $rowLang['friendly_url'] ?>">

                                <button type="button" class="btn btn-readmore">ĐỌC TIẾP</button>

                            </a>

                        </div>

                    </div>

                    <?php } ?>

                </div>

            </div>

        </div>



        <!--        End show destop-->



        <!--        Begin mobile-->

        <!-- <div class="row">

            <div class="vk-new-blog-mobile">

                <?php 

                $d = 0;

                foreach ($home_news_new_mobile as $item) {

                    $d++;

                    $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 

                ?>

                <div class="col-sm-4">

                    <div class="item">

                        <div class="item-img">

                            <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>

                            <div class="caption caption-large">

                                <time class="the-date"><?= substr($item['news_created_date'], 0, 10) ?></time>

                            </div>

                        </div>

                        <div class="item-text">

                            <div class="item-text-title">

                                <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>

                            </div>

                            <div class="item-text-description">

                                <p><?= $rowLang['lang_news_des'] ?></p>

                            </div>

                        </div>

                        <div class="item-blog-button">

                            <a href="/<?= $rowLang['friendly_url'] ?>">

                                <button type="button" class="btn btn-readmore">ĐỌC TIẾP</button>

                            </a>

                        </div>

                    </div>

                </div>

                <?php } ?>

            </div>

        </div> -->

        <!--        End mobile-->

    </div>

</section>

<!--End bài viết mới nhất-->

<?php //include "template/partner/MS_PARTNER_BEACON_0001.php" ?>