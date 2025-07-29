<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function cam_nhan ($id) {
		global $conn_vn;
		if (isset($_POST['edit_camnhan'])) {
			$src= "../images/";
			// $src = "uploads/";
			$image = '';

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = $_POST['name'];
			$note = $_POST['note'];
			$note_en = $_POST['note_en'];
			$tu = $_POST['tu'];

			if ($image == '') {
				$sql = "UPDATE cam_nhan SET name = '$name', note = ?, note_en = ?, tu = '$tu' WHERE id = $id";
			} else {
				$sql = "UPDATE cam_nhan SET name = '$name', note = ?, note_en = ?, tu = '$tu', image = '$image' WHERE id = $id";
			}
			
			$stmt = $conn_vn->prepare($sql);
			$stmt->bind_param("ss", $note, $note_en);
			$stmt->execute();
			// $result = mysqli_query($conn_vn, $sql);
			echo '<script type="text/javascript">alert(\'Bạn đã sửa cảm nhận thành công.\');</script>';
		}
	}

	cam_nhan($_GET['id']);

	function getCamNhan ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM cam_nhan WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row;
	}
	$camnhan = getCamNhan($_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin Cảm nhận<br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $camnhan['name'] ?>" required/>
            <p class="titleRightNCP">Nội dung vn</p>
            <textarea name="note" class="titleRightNCP" rows="5" required><?= $camnhan['note'] ?></textarea>
            <p class="titleRightNCP">Nội dung en</p>
            <textarea name="note_en" class="titleRightNCP" rows="5" required><?= $camnhan['note_en'] ?></textarea>
            <p class="titleRightNCP">Nghề</p>
            <input type="text" class="txtNCP1" name="tu" value="<?= $camnhan['tu'] ?>" required/>
            <p class="titleRightNCP">Ảnh</p>
            <input type="file" class="txtNCP1" name="image"/>
            <img src="/images/<?= $camnhan['image'] ?>" alt="" width="200">
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="edit_camnhan">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>