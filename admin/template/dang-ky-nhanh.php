<?php 
$rows_dangky = $action->getList('dang_ky_ngay','','','id','desc',$trang,20,'dang-ky-ngay');//var_dump($rows_lien_he);die();
?>
<div class="container">
  <h2>Bảng Đăng ký ngay.</h2>            
  <table class="table">
    <thead>
      <tr>
        <th>Tên</th>
        <th>Điện thoại</th>
        <th>Email</th>
        <th>Khóa học</th>
        <th>Skype Id</th>
      </tr>
    </thead>
    <tbody>
    <?php foreach ($rows_dangky['data'] as $item) { ?>
      <tr>
        <td><?php echo $item['name'];?></td>
        <td><?php echo $item['phone'];?></td>
        <td><?php echo $item['email'];?></td>
        <td><?php echo $item['course'];?></td>
        <td><?php echo $item['skype'];?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
<?php
    echo $rows_dangky['paging'];
?>
</div>
