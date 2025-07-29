<?php 
$rows_dangky = $action->getList('dang_ky_online','','','id','desc',$trang,20,'dang-ky-online');//var_dump($rows_lien_he);die();
?>
<!-- <div class="container"> -->
  <h2>Bảng Đăng ký.</h2>            
  <table class="table">
    <thead>
      <tr>
        <th>Tên</th>
      	<th>Ngày sinh</th>
        <th>Giới tính</th>
        <th>Điện thoại</th>
        <th>Email</th>
        <th>Khóa học</th>
        <th>Địa chỉ</th>
        <th>Nơi công tác/Trường học</th>
        <th>Ghi chú</th>
        <th>Bạn biết qua</th>
        <th>Skype</th>
      </tr>
    </thead>
    <tbody>
    <?php foreach ($rows_dangky['data'] as $item) { ?>
      <tr>
        <td><?php echo $item['name'];?></td>
        <td><?php echo $item['birthday'];?></td>
        <td><?php echo ($item['sex']==0) ? 'Nữ' : 'Nam';?></td>
        <td><?php echo $item['phone'];?></td>
        <td><?php echo $item['email'];?></td>
        <td><?php echo $item['course'];?></td>
        <td><?php echo $item['address'];?></td>
        <td><?php echo $item['where'];?></td>
        <td><?php echo $item['note'];?></td>
        <td><?php echo $item['know'];?></td>
        <td><?php echo $item['skype'];?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
<!-- </div> -->
<?php
    echo $rows_dangky['paging'];
?>