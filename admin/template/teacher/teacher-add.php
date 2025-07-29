<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function add_teacher () {
		global $conn_vn;
		if (isset($_POST['add_teacher'])) {
			$src= "../images/";
			// $src = "uploads/";

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);

			}

			$name = $_POST['name'];
			$age = $_POST['age'];
			$country = $_POST['country'];
			$accede = $_POST['accede'];
			$sex = $_POST['sex'];
			$experience = $_POST['experience'];
			$program = $_POST['program'];
			$introduce = $_POST['introduce'];
			$image = $_FILES['image']['name'];
			$time = time();

			$sql = "INSERT INTO teacher (name, age, country, accede, sex, experience, program, introduce, image, `time`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			$stmt = $conn_vn->prepare($sql);
			$stmt->bind_param("sississssi", $name, $age, $country, $accede, $sex, $experience, $program, $introduce, $image, $time);
			$stmt->execute();

			$sql = "SELECT * FROM teacher WHERE `time` = $time";
			$result = mysqli_query($conn_vn, $sql);
			$row = mysqli_fetch_assoc($result);
			$teacher_id = $row['id'];

			$array = array('18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30');
			foreach ($array as $item) {
				$sql1 = "INSERT INTO hour (teacher_id, name) VALUES ($teacher_id, '$item')";
				$result1 = mysqli_query($conn_vn, $sql1);
				$last_id = mysqli_insert_id($conn_vn);
				$sql2 = "INSERT INTO day (hour_id, mon, wed, tue, thu, fri, sat, sun) VALUES ($last_id, 0, 0, 0, 0, 0, 0, 0)";
				$result2 = mysqli_query($conn_vn, $sql2);
			}
			echo '<script type="text/javascript">alert(\'Bạn đã tạo thông tin giảng viên thành công.\');window.location.href="/admin/index.php?page=giang-vien"</script>';
		}
	}

	add_teacher();
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin giảng viên<br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên giảng viên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Tuổi giảng viên</p>
            <input type="number" class="txtNCP1" name="age" required/>
            <p class="titleRightNCP">Quốc tịch</p>
            <input type="text" class="txtNCP1" name="country" required/>
            <p class="titleRightNCP">Ngày gia nhập</p>
            <input type="date" class="txtNCP1" name="accede" value="<?= date('Y-m-d') ?>" required/>
            <p class="titleRightNCP">Giới tính</p>
            <select class="txtNCP1" name="sex">
            	<option value="1">Nam</option>
            	<option value="0">Nữ</option>
            </select>
            <p class="titleRightNCP">Bằng cấp và kinh nghiệm</p>
            <textarea class="longtxtNCP1 ckeditor" name="experience"></textarea>
            <p class="titleRightNCP">Chương trình</p>
            <textarea class="longtxtNCP1 ckeditor" name="program"></textarea>
            <p class="titleRightNCP">Giới thiệu về bản thân</p>
            <textarea class="longtxtNCP1 ckeditor" name="introduce"></textarea>
            <p class="titleRightNCP">Ảnh giảng viên</p>
            <input type="file" class="txtNCP1" name="image" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_teacher">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>