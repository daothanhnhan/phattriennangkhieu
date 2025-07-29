<?php 
    $action_service = new action_service();
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_service->getServiceLangDetail_byUrl($slug,$lang);
    $row = $action_service->getServiceDetail_byId($rowLang['service_id'],$lang);
    $_SESSION['sidebar'] = 'serviceDetail';
?>
<div class="vk-courser-1">
    <div class="container-fluid">
        <div class="row">
            <div class="vk-dang-ky-banner">
                <img src="images/dangky/banner.jpg" alt="" class="img-responsive">
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="vk-course-1-content">
                <div class="col-md-12 vk-course-1-right">
                    <h1><?= $rowLang['lang_service_name'] ?></h1>
                    <div class="vk-course-1-right-img">
                        <img src="images/course-1/img1.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="vk-course-1-right-tabcontent">
                        <div class="tab_container">
                            <input id="tab1" type="radio" name="tabs" checked>
                            <label for="tab1"><span>GIỚI THIỆU</span></label>

                            <input id="tab4" type="radio" name="tabs">
                            <label for="tab4"><span>ĐĂNG KÝ HỌC NGAY</span></label>

                            <section id="content1" class="tab-content">
                                <!-- <div class="vk-course-1-right-tranny">
                                    <h3>MỤC TIÊU ĐÀO TẠO</h3>
                                    <div class="vk-course-1-right-line"></div>
                                    <div class="vk-course-1-right-tranny-content">
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

                                        </p>
                                    </div>
                                </div>

                                <div class="vk-course-1-right-doituong-join">
                                    <h3>ĐỐI TƯỢNG THAM GIA</h3>
                                    <div class="vk-course-1-right-line"></div>
                                    <div class="vk-course-1-right-join-content">
                                        <ul>
                                            <li>
                                                <i class="fa fa-check" aria-hidden="true"></i>
                                                Contrary to popular belief, Lorem Ipsum is not simply random text.
                                            </li>
                                            <li>
                                                <i class="fa fa-check" aria-hidden="true"></i>
                                                Contrary to popular belief, Lorem Ipsum is not simply random text.
                                            </li>
                                            <li>
                                                <i class="fa fa-check" aria-hidden="true"></i>
                                                Contrary to popular belief, Lorem Ipsum is not simply random text.
                                            </li>
                                            <li>
                                                <i class="fa fa-check" aria-hidden="true"></i>
                                                Contrary to popular belief, Lorem Ipsum is not simply random text.
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="vk-course-1-right-result">
                                    <h3>THU HOẠCH SAU KHÓA HỌC</h3>
                                    <div class="vk-course-1-right-line"></div>
                                    <div class="vk-course-1-right-result-content">
                                        <p>
                                            Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
                                        </p>
                                    </div>
                                </div> -->
                                <?= $rowLang['lang_service_content'] ?>
                            </section>

                            <section id="content4" class="tab-content">
                                <div class="vk-course-4-hd-dk">
                                    <div class="vk-course-4-hd-dk-1">
                                        <h3>CÁCH 1</h3>
                                        <div class="vk-course-4-hd-dk-line"></div>
                                        <div class="vk-course-4-hd-dk-content">
                                            <p>Đăng ký online <span><a href="#"><u>tại đây</u></a></span></p>
                                        </div>
                                    </div>

                                    <div class="vk-course-4-hd-dk-2">
                                        <h3>CÁCH 2</h3>
                                        <div class="vk-course-4-hd-dk-line"></div>
                                        <div class="vk-course-4-hd-dk-content">
                                            <p>Đăng ký trực tiếp tại văn phòng tuyển sinh VnSkills: <?= $rowConfig['content_home1'] ?></p>
                                        </div>
                                    </div>

                                    <div class="vk-course-4-hd-dk-3">
                                        <h3>CÁCH 3</h3>
                                        <div class="vk-course-4-hd-dk-line"></div>
                                        <div class="vk-course-4-hd-dk-content">
                                            <p>Gọi điện thoại trực tiếp tới  <span><a href="#"> Hotline: <?= $rowConfig['content_home3'] ?> </a></span>( Chuyên viên tư vấn khóa học đồ họa)</p>
                                        </div>
                                    </div>

                                    <div class="vk-course-4-hd-dk-4">
                                        <h3>MỌI CHI TIẾT XIN LIÊN HỆ</h3>
                                        <div class="vk-course-4-hd-dk-line"></div>
                                        <div class="vk-course-4-hd-dk-4-info">
                                            <ul>
                                                <li>
                                                    <h4>Trung tâm đào tại thiết kế vnskills - <span>VNSKILLS ACADEMY</span></h4>
                                                </li>
                                                <li>
                                                    <p> Website: <a href="/"> <?= $_SERVER["SERVER_NAME"] ?></a></p>
                                                </li>
                                                <li>
                                                    <p>Facebook: http://facebook.com/vnskills229</p>
                                                </li>
                                                <li>
                                                    <p>Địa chỉ: P1706 - Tầng 17, Tòa nhà A1, 229 Phố Vọng, HBT, HN</p>
                                                </li>
                                                <li>
                                                    <p>ĐT: 043.628.4956 ( 11 ) -  Hotline: 0983.637.549 / 0936 430 268</p>
                                                </li>
                                                <li>
                                                    <p>Email : <span><a href="#"> info@vnskills.com</a></span> -  Skype: <span><a href="#"> tuvan.vnskills1</a></span></p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="vk-course-4-hd-dk-5">
                                        <h3>TÀI KHOẢN NGÂN HÀNG</h3>
                                        <div class="vk-course-4-hd-dk-line"></div>
                                        <div class="vk-course-4-hd-dk-5-one">
                                            <ul>
                                                <li>
                                                    <h4>Ngân hàng TMCP Ngoại thương Việt Nam - Vietcombank</h4>
                                                </li>
                                                <li>
                                                    <p> Chủ tài khoản:  Nguyễn Thị Huyền</p>
                                                </li>
                                                <li>
                                                    <p>Số TK: 0021000304345</p>
                                                </li>
                                                <li>
                                                    <p>Chi nhánh: Vietcombank Hà Nội</p>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="vk-course-4-hd-dk-5-two">
                                            <ul>
                                                <li>
                                                    <h4>Ngân hàng TMCP Kỹ thương Việt Nam - Techcombank</h4>
                                                </li>
                                                <li>
                                                    <p> Chủ tài khoản:  Nguyễn Thị Huyền</p>
                                                </li>
                                                <li>
                                                    <p>Số TK: 19021765300019</p>
                                                </li>
                                                <li>
                                                    <p>Chi nhánh: Thăng Long. TP. Hà Nội</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>