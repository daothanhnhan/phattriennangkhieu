<?php 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_news->getNewsLangDetail_byUrl($slug,$lang);
    $row = $action_news->getNewsDetail_byId($rowLang['news_id'],$lang);
    $_SESSION['sidebar'] = 'newsDetail';
    //////////////
    $url_lang = $action_lang->get_url_lang_newsDetail($slug, $lang);
?>
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
                        <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<div class="vk-single-blog">
    <div class="container-fluid">
        <div class="row">
            <div class="vk-lich-khai-giang-banner">
                <img src="/images/dangky/banner.jpg" alt="" class="img-responsive">

            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8 vk-single-blog-right">
                <!-- <div class="vk-single-blog-right-img">
                    <img src="/images/<?= $row['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive">
                </div> -->
                <div class="vk-single-blog-right-title">
                    <h2><?= $rowLang['lang_news_name'] ?></h2>
                </div>
                <!-- <div class="vk-single-blog-right-info">
                    <ul>
                        <li><i class="fa fa-user" aria-hidden="true"></i><a href="#"> Admin</a></li>
                        <li><i class="fa fa-clock-o" aria-hidden="true"></i><a href="#"> <?= substr($row['news_created_date'], 0, 10) ?></a></li>
                        <li><i class="fa fa-folder-open-o" aria-hidden="true"></i><a href="#"> Design, Graphic</a></li>
                        <li><i class="fa fa-comment-o" aria-hidden="true"></i><a href="#"> 5 comments</a></li>
                    </ul>
                </div> -->
                <div class="vk-single-blog-right-text">
                    <?= $rowLang['lang_news_content'] ?>
                </div>
                
                <div class="vk-single-blog-share">
                    <div class="row">
                        <div class="col-md-5 vk-single-blog-share-left">
                            <ul>
                                <li><a href="#">Finance</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Photo</a></li>
                            </ul>
                        </div>
                        <div class="col-md-5 col-md-offset-2 vk-single-blog-share-right">
                            <ul>
                                <li><span><i class="fa fa-share-alt" aria-hidden="true"></i> share</span></li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- <div class="vk-single-blog-comment">
                    <h3>COMMENTS</h3>
                    <div class="vk-single-blog-comment-line"></div>
                    <ul class="comments-list">
                        <li>
                            <div class="vk-comment-main-level">
                                <div class="vk-comment-avatar"><img src="images/single-blog/img9.jpg" alt=""></div>
                                <div class="vk-comment-box">
                                    <div class="vk-comment-head">
                                        <h6><a href="#">Adam Smith</a> - <span>Author</span></h6>
                                    </div>
                                    <div class="vk-comment-content">
                                       <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                           turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,
                                           tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                           ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                    </div>
                                    <div class="vk-comment-days">
                                        <ul>
                                            <li><time>March 23, 2017</time></li>
                                            <li><span><a href="#"><i class="fa fa-share" aria-hidden="true"></i> Reply</a></span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <ul class="comments-list vk-reply-list">
                                <li>
                                    <div class="vk-comment-avatar"><img src="images/single-blog/img.jpg" alt=""></div>
                                    <div class="vk-comment-box">
                                        <div class="vk-comment-head">
                                            <h6><a href="#">Adam Smith</a></h6>
                                        </div>
                                        <div class="vk-comment-content">
                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac
                                                turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,
                                                tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                        </div>
                                        <div class="vk-comment-days">
                                            <ul>
                                                <li><time>March 23, 2017</time></li>
                                                <li><span><a href="#"><i class="fa fa-share" aria-hidden="true"></i> Reply</a></span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </div> -->

                <!-- <div class="vk-single-blog-leave-a-comment">
                    <h3>LEAVE A COMMENT</h3>
                    <div class="vk-single-blog-line"></div>
                    <div class="vk-single-blog-form">
                        <form action="" class="form-horizontal" role="form">
                            <div class="form-group">
                                    <div class="col-sm-6">
                                        <input type="text" id="firstName" placeholder="Your Name" class="form-control">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" id="email" placeholder="Email" class="form-control">
                                    </div>
                            </div> <!-- /.form-group --
                            <div class="form-group">
                                <div class="col-md-12">
                                    <textarea id="textarea" placeholder="Your Comment..." class="form-control"></textarea>
                                </div>
                            </div> <!-- /.form-group --

                            <div class="form-group">
                                <div class="col-md-3">
                                    <button type="submit" class="btn vk-btn-primary btn-block">SUBMIT</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div> -->
                <?php include_once "template/email/MS_EMAIL_BEACON_0001.php"; ?>
            </div>
            <div class="col-md-4 vk-blog-left">
                <?php include "template/sideBar/MS_SIDEBAR_BEACON_0001.php"; ?>
            </div>
        </div>
    </div>
</div>