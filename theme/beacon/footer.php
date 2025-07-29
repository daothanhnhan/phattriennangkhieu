<footer>
    <div class="footer-area-top">
        <div class="container">
            <div class="area-footer">
                <div class="row">
                    <div class="footer-1">
                        <div class="col-sm-4 footer-box">
                            <div class="footer-about-us">
                                <h1>CONTACT US</h1>
                            </div>
                            <ul class="footer-contact">
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <span>Adress:</span>  <?= $rowConfig_lang['lang_content_home1'] ?>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <span>Tel:</span><?= $rowConfig['content_home3'] ?>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <span>Holine:</span> <?= $rowConfig['content_home6'] ?>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <span>Mail:</span> <?= $rowConfig['content_home2'] ?>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-2">
                        <div class="col-sm-2 footer-box">
                            <h1>QUICK LINK</h1>
                            <ul class="featured-links">
                                <!-- <li>
                                    <a href="">Giới Thiệu</a>
                                </li>
                                <li>
                                    <a href="">Lịch Khai Giảng</a>
                                </li>
                                <li>
                                    <a href="">Đào Tạo</a>
                                </li>
                                <li>
                                    <a href="">Đăng Kí Học</a>
                                </li>
                                <li>
                                    <a href="">Tin Tức</a>
                                </li>
                                <li>
                                    <a href="">Liên Hệ</a>
                                </li> -->
                                <?= $rowConfig['content_home7'] ?>
                            </ul>
                        </div>
                    </div>
                    <div class="footer-3">
                        <div class="col-sm-3 footer-box">
                            <h1>FOLLOW US</h1>
                            <ul class="featured-links-social">
                                <li><span><i class="fa fa-facebook" aria-hidden="true"></i></span><a href="">Facebook</a>
                                </li>
                                <li><span><i class="fa fa-google-plus" aria-hidden="true"></i></span><a href="">Google
                                        +</a></li>
                                <li><span><i class="fa fa-instagram" aria-hidden="true"></i></span><a href="">Instagram</a>
                                </li>
                                <li><span><i class="fa fa-youtube-play" aria-hidden="true"></i></span><a href="">Youtube</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="footer-4">
                        <div class="col-sm-3 footer-box">
                            <h1><?= $lang == 'vn' ? 'DỰ ÁN CỦA CHÚNG TÔI' : 'OUR PROJECT' ?></h1>
                            <!-- <ul class="my-project">
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                                <li><a href="singer-project.php"><img src="images/my-projject.jpg" alt=""></a></li>
                            </ul> -->
                            <iframe src="https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/homestayvn.com.vn/&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=1686619438244931" width="100%" height="200" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-area-bottom">
                <p>© Copyright goldbridge. ALL right Reserved </p>
            </div>
        </div>

    </div>
</footer>
<!-- Footer Area End Here -->
<a href="tel:0965521294" class="suntory-alo-phone suntory-alo-green" id="suntory-alo-phoneIcon" style="left: 0px; bottom: 0px; top: 640px;" datasqstyle="{&quot;top&quot;:null}" datasquuid="4c643075-c7e6-4adf-8841-746771cfb831" datasqtop="640">
  <div class="suntory-alo-ph-circle"></div>
  <div class="suntory-alo-ph-circle-fill"></div>
  <div class="suntory-alo-ph-img-circle"><i class="fa fa-phone" style="float: none;"></i></div>
</a>

<!-- CSS Call -->

<style type="text/css">
.suntory-alo-phone {
  background-color: transparent;
  cursor: pointer;
  height: 120px;
  position: fixed;
  transition: visibility 0.5s ease 0s;
	-webkit-transition: visibility 0.5s ease 0s;
	-moz-transition: visibility 0.5s ease 0s;
  width: 120px;
  z-index: 20000000 !important;
}
.suntory-alo-ph-circle {
  animation: 1.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim;
  background-color: transparent;
  border: 2px solid rgba(30, 30, 30, 0.4);
  border-radius: 100%;
  height: 100px;
  left: 0px;
  opacity: 0.1;
  position: absolute;
  top: 0px;
  transform-origin: 50% 50% 0;
  transition: all 0.5s ease 0s;
  width: 100px;
}
.suntory-alo-ph-circle-fill {
  animation: 2.3s ease-in-out 0s normal none infinite running suntory-alo-circle-fill-anim;
  border: 2px solid transparent;
  border-radius: 100%;
  height: 70px;
  left: 15px;
  position: absolute;
  top: 15px;
  transform-origin: 50% 50% 0;
  transition: all 0.5s ease 0s;
  width: 70px;
}
.suntory-alo-ph-img-circle {
  border: 2px solid transparent;
  border-radius: 100%;
  height: 50px;
  left: 25px;
  opacity: 0.7;
  position: absolute;
  top: 25px;
  transform-origin: 50% 50% 0;
  width: 50px;
  text-align: center;
}
.suntory-alo-phone.suntory-alo-hover, .suntory-alo-phone:hover {
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-active .suntory-alo-ph-circle {
  animation: 1.1s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
}
.suntory-alo-phone.suntory-alo-static .suntory-alo-ph-circle {
  animation: 2.2s ease-in-out 0s normal none infinite running suntory-alo-circle-anim !important;
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle, .suntory-alo-phone:hover .suntory-alo-ph-circle {
  border-color: #00aff2;
  opacity: 0.5;
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle {
  border-color: #EB278D;
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle {
  border-color: #bfebfc;
  opacity: 1;
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-circle-fill, .suntory-alo-phone:hover .suntory-alo-ph-circle-fill {
  background-color: rgba(0, 175, 242, 0.9);
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-circle-fill, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-circle-fill {
  background-color: #EB278D;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-circle-fill {
  background-color: rgba(0, 175, 242, 0.9);
}
.suntory-alo-phone.suntory-alo-hover .suntory-alo-ph-img-circle, .suntory-alo-phone:hover .suntory-alo-ph-img-circle {
  background-color: #00aff2;
}
.suntory-alo-phone.suntory-alo-green.suntory-alo-hover .suntory-alo-ph-img-circle, .suntory-alo-phone.suntory-alo-green:hover .suntory-alo-ph-img-circle {
  background-color: #EB278D;
}
.suntory-alo-phone.suntory-alo-green .suntory-alo-ph-img-circle {
  background-color: #00aff2;
}
@keyframes suntory-alo-circle-anim {
  0% {
    opacity: 0.1;
    transform: rotate(0deg) scale(0.5) skew(1deg);
  }
  30% {
    opacity: 0.5;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
  100% {
    opacity: 0.6;
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}
@keyframes suntory-alo-circle-img-anim {
  0% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  10% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
}
@keyframes suntory-alo-circle-fill-anim {
  0% {
    opacity: 0.2;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
  50% {
    opacity: 0.2;
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    opacity: 0.2;
    transform: rotate(0deg) scale(0.7) skew(1deg);
  }
}
.suntory-alo-ph-img-circle i {
  animation: 1s ease-in-out 0s normal none infinite running suntory-alo-circle-img-anim;
  font-size: 30px;
  line-height: 50px;
  color: #fff;
}
@keyframes suntory-alo-ring-ring {
  0% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  10% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  20% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  30% {
    transform: rotate(-25deg) scale(1) skew(1deg);
  }
  40% {
    transform: rotate(25deg) scale(1) skew(1deg);
  }
  50% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }
  100% {
    transform: rotate(0deg) scale(1) skew(1deg);
  }

</style>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>

<!--js sắp khai giảng-->
<!--==============================================================-->
<script>
</script>
<!-- <script src="/js/countdown.js"></script> -->
<script>
/**
 * Created by Dell on 01/06/2017.
 */
 <?php 
  $countdown = explode("-", $rowConfig['content_home10']);
 ?>
function countdown() {
    var now= new Date();
    var enventDate= new Date(<?= $countdown[0] ?>,<?= $countdown[1] ?>, <?= $countdown[2] ?>);
    var currentTime= now.getTime();
    var eventTime = enventDate.getTime();
    var remTime = eventTime -currentTime;
    var s= Math.floor(remTime/ 1000);
    var m=Math.floor(s/60);
    var h=Math.floor(m/60);
    var d= Math.floor(h/24);
    h %=24;
    m %=60;
    s %=60;
    h=(h<10)? "0" +h:h;
    m=(m<10)? "0" +m:m;
    s=(s<10)? "0" +s:s;
    document.getElementById("days").textContent=d;
    // document.getElementById("days").textContent=d;
    document.getElementById("days").innerText=d;

    document.getElementById("hour").textContent=h;
    document.getElementById("minutes").textContent=m;
    document.getElementById("second").textContent=s;
    setTimeout(countdown, 1000);
}
countdown();
</script>
<script src="/js/sliderbanner.js"></script>
<script src="/js/newblog.js"></script>
<script src="/js/logopartner.js"></script>
<script src="/dist/owl.carousel.min.js"></script>


<script src="/js/sapkhaigiang.js"></script>
<script src="/js/main.js"></script>

<script src="/js/isotope.pkgd.min.js"></script>

<script type="text/javascript">
    function lang_vn () {
        // alert('lang');
       var lang_current = document.getElementById('lang_current');
        if (lang_current) {
            if (lang_current.value != 'vn') {
                var url = document.getElementById('url_lang');
                if (url) {
                    vn(url.value);
                    // alert(url.value);
                    // window.location.href = '/'+url.value;
                } else {
                    vn('');
                    // location.reload();
                }
            }
        } else {
            vn('');
            // location.reload();
        }    
    }

    function lang_vn1 () {
      alert('tuan');
    }

    function lang_en () {
       var lang_current = document.getElementById('lang_current');
        if (lang_current) {
            if (lang_current.value != 'en') {
                var url = document.getElementById('url_lang');
                if (url) {
                    en(url.value)
                    // alert(url.value);  
                    // window.location.href = '/'+url.value;
                } else {
                    en('');
                    // location.reload();
                }   
            }
        } else {
            en('');
            // location.reload();
        } 
    }

    function vn (url) {
         $.get("/functions/ajax/lang_vn.php", function(){
            // alert("lang vn");
            if (url == '') {
                location.reload();
            } else {
                window.location.href = '/' + url;
            }
        });
    }

    function en (url) {
         $.get("/functions/ajax/lang_en.php", function(){   
            // alert("lang en");
            if (url == '') {
                location.reload();
            } else {
                window.location.href = '/' + url;
            }
        });
    }

    function langs (data) {
        // alert(data.value);
        var lang = data.value;
        if (lang == 'vn') {
            // $.get("/functions/ajax/lang_vn.php", function(){
            //     location.reload();
            // });
            lang_vn();
        } else if (lang == 'en') {
            // $.get("/functions/ajax/lang_en.php", function(){            
            //     location.reload();
            // });
            lang_en();
        }
    }
</script>