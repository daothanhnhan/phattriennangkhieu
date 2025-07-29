
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demo ISOTOPE</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        .main-iso {
            width: 100%;

        }

        .vk-do-an .iso-nav {
            margin-top: 76px; }
        @media screen and (max-width: 767px) {
            .vk-do-an .iso-nav {
                margin-top: 20px; } }
        .vk-do-an .iso-nav ul {
            padding: 0px;
            margin: 0px; }
        .vk-do-an .iso-nav ul li {
            list-style-type: none;
            display: inline-block;
            padding: 10px 15px;
            padding-left: 0px;
            cursor: pointer;
            -webkit-transition: all .5s ease;
            -moz-transition: all .5s ease;
            -ms-transition: all .5s ease;
            -o-transition: all .5s ease;
            transition: all .5s ease;
            font-family: 'Open Sans', serif;
            font-size: 14px;
            font-weight: bold;
            text-align: left;
            color: #aeaeae; }
        @media screen and (max-width: 767px) {
            .vk-do-an .iso-nav ul li {
                padding-right: 15px;
                font-size: 12px; } }
        .vk-do-an .iso-nav ul li.active {
            color: #f05523; }
        .vk-do-an .iso-nav ul li:hover {
            color: #f05523; }
        .vk-do-an .iso-nav .iso-nav-line {
            overflow: hidden;
            width: 100%;
            height: 2px;
            background-color: #e9e9e9;
            margin-top: 17px;
            margin-bottom: 60px; }

        .vk-do-an  {
            position: relative; }
        .vk-do-an  .item {
            margin-bottom: 30px; }
        .vk-do-an  .item .vk-item-img {
            z-index: 2;
            overflow: hidden;
            position: relative;
            -webkit-transform: scale(1);
            -ms-transform: scale(1);
            transform: scale(1); }
        .vk-do-an  .item .vk-item-img img {
            -webkit-transition: all 0.5s;
            -o-transition: all 0.5s;
            transition: all 0.5s; }
        .vk-do-an  .item .vk-item-img:hover img {
            -webkit-transform: scale(1.1);
            -ms-transform: scale(1.1);
            transform: scale(1.1);
            -webkit-transition: all 0.5s;
            -o-transition: all 0.5s;
            transition: all 0.5s; }
        .vk-do-an  .item .vk-item-img:hover .vk-item-img-text {
            opacity: 1;
            -webkit-transition: 0.5s;
            -o-transition: 0.5s;
            transition: 0.5s;
            -webkit-transform: scale(1.1);
            -ms-transform: scale(1.1);
            transform: scale(1.1); }
        .vk-do-an  .item .vk-item-img .vk-item-img-text {
            position: absolute;
            top: 0;
            opacity: 0;
            padding: 0 30px;
            width: 100%;
            background: rgba(0, 0, 0, 0.5);
            overflow: hidden;
            -webkit-transition: all 0.5s;
            -o-transition: all 0.5s;
            transition: all 0.5s; }
        .vk-do-an  .item .vk-item-img .vk-item-img-text h2 {
            font-family: UTMBebas;
            font-size: 30px;
            text-align: left;
            color: #ffffff; }
        .vk-do-an  .item .vk-item-img .vk-item-img-text h1 {
            font-family: UTMBebas;
            font-size: 48px;
            line-height: 3.13;
            text-align: center;
            color: #ffffff; }

        .vk-do-an .vk-project-pagination {
            border-top: 1px solid #e9e9e9;
            padding-top: 30px;
            margin-bottom: 80px;
            margin-top: 50px;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center; }
        .vk-do-an .vk-project-pagination ul {
            position: relative;
            float: left;
            padding: 6px 12px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff; }
        .vk-do-an .vk-project-pagination ul li {
            float: left;
            list-style-type: none;
            border: 1px solid #ddd;
            padding: 6px 12px;
            margin-right: 5px;
            border-radius: 3px; }
        .vk-do-an .vk-project-pagination ul li a {
            font-family: 'Open Sans', serif;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            color: #aeaeae; }
        .vk-do-an .vk-project-pagination ul li a:hover {
            text-decoration: none;
            color: #f05523; }
        .vk-do-an .vk-project-pagination ul li.vk-active {
            background: #f05523; }
        .vk-do-an .vk-project-pagination ul li.vk-active a {
            color: white; }
    </style>
</head>
<body>
<div class="container">
    <div class="vk-do-an">
        <div class="wraper">
            <div class="iso-nav">
                <ul>
                    <li class="active" data-filter="*">All Items</li>
                    <li data-filter=".web">Web Design</li>
                    <li data-filter=".graphic">Graphic Design</li>
                    <li data-filter=".photo">Photography</li>
                </ul>
            </div>
            <div class="row">
                <div class="main-iso">
                    <div class="col-md-4 item web">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item graphic">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item photo">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item web">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item web">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item graphic">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 item photo">
                        <div class="vk-item-img">
                            <a href="single-do-an.php"><img src="images/lich-khai-giang-2/2.png" alt="" class="img-responsive">
                                <div class="vk-item-img-text">
                                    <h2>BỘ NHẬP DIỆN THƯƠNG HIỆU</h2>
                                    <hr>
                                    <h1>HERSTORY CAFE</h1>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--    Javascript files are here... -->
<!--Jquery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--isotope here...-->
<script src="js/isotope.pkgd.min.js"></script>
<!--Custom Js file here ... -->
<script>
    $('.main-iso').isotope({
        itemSelector: '.item',
        layoutMode: 'fitRows'
    });
    // Isotope click function
    $('.iso-nav ul li').click(function(){
        $('.iso-nav ul li').removeClass('active');
        $(this).addClass('active');

        var selector = $(this).attr('data-filter');
        $('.main-iso').isotope({
            filter: selector
        });
        return false;
    });

</script>
</body>
</html>
