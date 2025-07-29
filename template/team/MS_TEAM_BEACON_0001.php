<?php 
    function listTeam () {
        global $conn_vn;
        $sql = "SELECT * FROM teacher LIMIT 4";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        return $rows;
    }
    $list_team = listTeam();
?>
<div class="vk-about-us">
<div class="vk-our-staffs-about-us">
                <div class="container">
                    <div class="row">
                        <div class="vk-our-staffs-title">
                            <h3>OUR TEACHER</h3>
                            <h2><?= $lang == 'vn' ? 'CÁC GIẢNG VIÊN CỦA HOMESTAY VIỆT NAM' : 'HOMESTAY VIETNAMESE TEACHERS' ?></h2>
                            <div class="vk-our-staffs-line"></div>
                        </div>
                        <div class="clear-fix"></div>
                        <div class="vk-our-staffs-items">
                            <?php foreach ($list_team as $item) { ?>
                            <div class="col-md-3">
                                <div class="vk-item">
                                    <a href="/lich-day/<?= $item['id'] ?>"><img src="/images/<?= $item['image'] ?>" alt="" class="img-responsive"></a>
                                    <div class="vk-item-info">
                                        <h2><?= $item['name'] ?></h2>
                                        <div class="vk-item-line"></div>
                                        <div class="vk-item-contact">
                                            <ul>
                                                <li><a href="#" class="vk-active"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                        <div class="gb-item-lichday-link">
                                            <a href="/lich-day/<?= $item['id'] ?>">Lịch dạy</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="clear-fix"></div>
                    </div>
                </div>
            </div>
        </div>