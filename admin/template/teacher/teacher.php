<?php
    $rows = $acc->getList("teacher","","","id","asc",$trang, 20, "giang-vien");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="/admin/index.php?page=them-giang-vien">Thêm</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên giảng viên</th>
                    <th>Ảnh</th>
                    <th>Hoạt động</th>
                    <th>Lịch</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td>
                            <td style="float: none;"><a href="/admin/index.php?page=xoa-giang-vien&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="/admin/index.php?page=sua-giang-vien&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            <td><a href="/admin/index.php?page=lich-giang-vien&id=<?= $row['id'] ?>">Lịch</a></td>
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             