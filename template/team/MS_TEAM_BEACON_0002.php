<?php 
    $limit = 8;
    function listTeam ($trang, $limit) {
        global $conn_vn;
        $sql = "SELECT * FROM teacher";
        $result = mysqli_query($conn_vn, $sql);
        $count = mysqli_num_rows($result);

        $start = ($trang - 1) * $limit;
        $sql = "SELECT * FROM teacher LIMIT $start,$limit";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }

        $return = array(
                'data' => $rows,
                'count' => $count
            );
        return $return;
    }
    $list_team = listTeam($trang, $limit);
?>
<div class="gb-page-giangvien">
<div class="vk-about-us">
<div class="vk-our-staffs-about-us">
                <div class="container">
                    <div class="vk-our-staffs-title">
                            <h3>OUR TEACHER</h3>
                            <h2>CÁC GIẢNG VIÊN CỦA HOMESTAY</h2>
                            <div class="vk-our-staffs-line"></div>
                        </div>
                    <div class="row">
                        <div class="clear-fix"></div>
                        <div class="vk-our-staffs-items">
                            <?php foreach ($list_team['data'] as $item) { ?>
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
                <div style="text-align: center;">
                    <?php 
                    $config = array(
                        'current_page'  => $trang, // Trang hiện tại
                        'total_record'  => $list_team['count'], // Tổng số record
                        'total_page'    => 1, // Tổng số trang
                        'limit'         => $limit,// limit
                        'start'         => 0, // start
                        'link_full'     => '/giang-vien/{trang}',// Link full có dạng như sau: domain/com/page/{page}
                        'link_first'    => '/giang-vien',// Link trang đầu tiên
                        'range'         => 5, // Số button trang bạn muốn hiển thị 
                        'min'           => 0, // Tham số min
                        'max'           => 0,  // tham số max, min và max là 2 tham số private


                    );

                    $pagination = new Pagination;
                    $pagination->init($config);
                    echo $pagination->htmlPaging();
                ?>
                </div>
            </div>
        </div>
</div>