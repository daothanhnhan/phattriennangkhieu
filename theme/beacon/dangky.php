<?php 
    function dangky () {
        global $conn_vn;
        if (isset($_POST['dangky'])) {
             // var_dump($_POST);
            $name = $_POST['name'];
            $day = $_POST['day'];
            $month = $_POST['month'];
            $year = $_POST['year'];
            $date = $day.'-'.$month.'-'.$year;
            $sex = $_POST['sex'];
            $phone = $_POST['phone'];
            $email = $_POST['email'];
            $course = $_POST['course'];
            $address = $_POST['address'];
            $where = $_POST['where'];
            $note = $_POST['note'];
            $know = $_POST['know'];
            $skype = '';

            $sql = "INSERT INTO dang_ky_online (name, birthday, sex, phone, email, course, address, `where`, note, know, skype) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = $conn_vn->prepare($sql);
            $stmt->bind_param("ssissssssss", $name, $date, $sex, $phone, $email, $course, $address, $where, $note, $know, $skype);
            $stmt->execute();
            echo '<script type="text/javascript">alert(\'Bạn đăng ký thành công.\');</script>';
        }
    }
    dangky();
?>

<div class="vk-dang-ky">
    <div class="container-fluid">
        <div class="row">
            <div class="vk-dang-ky-banner">
                <img src="images/dangky/banner.jpg" alt="" class="img-responsive">
                <h3>ĐĂNG KÝ</h3>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="vk-dang-ky-right">
                    <div class="vk-dang-ky-right-1">
                        <h2><?= $lang == 'vn' ? 'ĐĂNG KÝ TRỰC TUYẾN' : 'REGISTER ONLINE' ?></h2>
                        <h4>Trung tâm đào tạo tiếng anh Homestay Việt Nam - <span>HOMESTAY ENGLISH</span></h4>
                        <p>
                            Địa chỉ:  <?= $rowConfig_lang['lang_content_home1'] ?><br>
                            ĐT:  <?= $rowConfig['content_home3'] ?><br>
                            Email : <span><?= $rowConfig['content_home2'] ?></span><br>


                            Nếu học viên thanh toán bằng hình thức chuyển khoản, vui lòng chuyển khoản học phí
                            vào thông tin tài khoản bên dưới
                        </p>
                        <h3>NỘI DUNG: <span>Tên học viên</span>_ <span>Số điện thoại</span> _ <span>Khóa học đăng ký</span></h3>
                    </div>

                    <div class="vk-dang-ky-2">
                        <h3><?= $lang == 'vn' ? 'THÔNG TIN TÀI KHOẢN' : 'ACCOUNT INFORMATION' ?></h3>
                        <div class="vk-dang-ky-line"></div>

                        <h4>Ngân hàng TMCP Ngoại thương Việt Nam - Vietcombank</h4>
                        <p>
                            Chủ tài khoản: Nguyễn Thị Thu Thắm<br>
                            Số TK: 0361000332143<br>
                            Chi nhánh: Phúc Yên<br> <br>
                        </p>

                        <h4>Ngân hàng TMCP Kỹ thương Việt Nam - Techcombank</h4>
                        <p>
                            Chủ tài khoản: Nguyễn Thị Thu Thắm<br>
                            Số TK: 19033070183011<br>
                            Chi nhánh: Phúc Yên
                        </p>

                        <h4></h4>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="vk-dang-ky-left">
                    <h2> <?= $lang == 'vn' ? 'HOẶC ĐĂNG KÝ ONLINE THEO FORM SAU' : 'OR REGISTER ONLINE BY FOLLOWING FORM' ?></h2>
                    <div class="">
                        <form action="" class="form-horizontal" role="form" method="post">
                            <div class="form-group">
                                <label for="firstName" class="col-sm-4 control-label"><?= $lang == 'vn' ? 'Họ và tên' : 'First and last name' ?></label>
                                <div class="col-sm-8">
                                    <input type="text" name="name" id="firstName" placeholder="" class="form-control" autofocus required>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="firstName" class="col-sm-4 control-label"><?= $lang == 'vn' ? 'Ngày Sinh' : 'Birthday' ?></label>
                                <div class="col-sm-8">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <select id="day" name="day" class="form-control" required>
                                                <?php for ($i=1;$i<=31;$i++) { ?>
                                                <option value="<?= $i ?>"><?= $i ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="col-sm-4">
                                            <select id="months" name="month" class="form-control" required>
                                                <?php for ($i=1;$i<=12;$i++) { ?>
                                                <option value="<?= $i ?>"><?= $i ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="col-sm-4">
                                            <select id="years" name="year" class="form-control" required>
                                                <?php 
                                                $year = (int)date('Y');
                                                for ($i=1989;$i<=$year;$i++) { 
                                                ?>
                                                <option value="<?= $i ?>"><?= $i ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-sm-4"><?= $lang == 'vn' ? 'Giới Tính' : 'Sex' ?></label>
                                <div class="col-sm-8">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="radio-inline">
                                                <input type="radio" name="sex" id="radio1" value="1" checked="">
                                                <label for="radio1">
                                                    <?= $lang == 'vn' ? 'Nam' : 'Male' ?>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="radio-inline">
                                                <input type="radio" name="sex" id="radio2" value="0">
                                                <label for="radio2">
                                                    <?= $lang == 'vn' ? 'Nữ' : 'Female' ?>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- /.form-group -->
                            <div class="clearfix"></div>

                            <div class="form-group">
                                <label class="control-label col-sm-4"><?= $lang == 'vn' ? 'Số diện thoại' : 'Phone' ?></label>
                                <div class="col-sm-8">
                                    <input type="number" id="firstName" name="phone" placeholder="số điện thoại" class="form-control" autofocus required>
                                </div>
                            </div> <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-label col-sm-4">Email</label>
                                <div class="col-sm-8">
                                    <input type="email" id="firstName" name="email" placeholder="Email" class="form-control" autofocus required>
                                </div>
                            </div> <!-- /.form-group -->
                            <div class="form-group">
                                <label for="country" class="col-sm-4 control-label"><?= $lang == 'vn' ? 'Khóa học đăng ký:' : 'Registration course:' ?></label>
                                <div class="col-sm-8">
                                    <select id="country" class="form-control" name="course" required>
                                        <option value="Tiếng anh cho trẻ em">Tiếng anh cho trẻ em</option>
                                        <option value="Tiếng anh luyện thi">Tiếng anh luyện thi</option>
                                        <option value="Tiếng anh cho nguòi đi làm">Tiếng anh cho nguòi đi làm</option>
                                        <option value="Tiếng anh hè">Tiếng anh hè</option>
                                        <option value="Khóa học tiếng anh đặc biệt">Khóa học tiếng anh đặc biệt</option>
                                        <option value="Tiếng anh lễ tân khách sạn/ nhà hàng">Tiếng anh lễ tân khách sạn/ nhà hàng</option>
                                    </select>
                                </div>
                            </div> <!-- /.form-group -->
                            <div class="form-group">
                                <label class="control-label col-sm-4"><?= $lang == 'vn' ? 'Địa chỉ' : 'Address' ?></label>
                                <div class="col-sm-8">
                                    <input type="text" name="address" id="firstName" placeholder="Đia chỉ" class="form-control" autofocus>
                                </div>
                            </div> <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-label col-sm-4"><?= $lang == 'vn' ? 'Nơi công tác/Trường học' : 'Place of work / School' ?></label>
                                <div class="col-sm-8">
                                    <input type="text" id="firstName" name="where" placeholder="Nơi công tác/ Trường học" class="form-control" autofocus>
                                </div>
                            </div> <!-- /.form-group -->
                            <div class="clearfix"></div>
                            <div class="form-group">
                                <label class="control-label col-sm-4"><?= $lang == 'vn' ? 'Ghi chú' : 'Note' ?></label>
                                <div class="col-sm-8">
                                    <input type="text" id="firstName" name="note" placeholder="Ghi chú" class="form-control" autofocus>
                                </div>
                            </div> <!-- /.form-group -->
                            <div class="form-group">
                                <label for="country" class="col-sm-4 control-label"><?= $lang == 'vn' ? 'Bạn biết HOMESTAY qua:' : 'You know HOMESTAY via:' ?></label>
                                <div class="col-sm-8">
                                    <select id="country" name="know" class="form-control">
                                        <option value="Bạn bè/ Người quen giới thiệu">Bạn bè/ Người quen giới thiệu</option>
                                        <option value="Diễn đàn/ Internet">Diễn đàn/ Internet</option>
                                        <option value="Khác">Khác</option>
                                    </select>
                                </div>
                            </div> <!-- /.form-group -->
                            <!-- <div class="form-group">
                                <label class="control-label col-sm-4">Skype Id</label>
                                <div class="col-sm-8">
                                    <input type="text" id="skype" name="skype" placeholder="Skype Id" class="form-control" autofocus required>
                                </div>
                            </div> -->
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-8">
                                    <button type="submit" name="dangky" class="btn vk-btn-primary btn-block"><?= $lang == 'vn' ? 'ĐĂNG KÝ' : 'REGISTER' ?></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>