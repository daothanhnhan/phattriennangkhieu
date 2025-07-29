<?php 
	$day_arr = array('mon', 'wed', 'tue', 'thu', 'fri', 'sat', 'sun');
	function getDay ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM day WHERE hour_id = $id";
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

	function getTeam ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM teacher WHERE id = $id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		return $row;
	}
	$teacher = getTeam($_GET['trang']);

	function getHour ($id) {
		global $conn_vn;
		$sql = "SELECT * FROM hour WHERE teacher_id = $id";
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
	$list_hour = getHour($_GET['trang']);
?>
<div class="gb-lichdaycuagiangvien">
	<div class="container">
		<div class="gb-lichdaycuagiangvien-title">
			<div class="row">
				<div class="col-md-3">
					<div class="gb-lichdaycuagiangvien-title-item">
                        <a href="#"><img src="/images/<?= $teacher['image'] ?>" alt="" class="img-responsive"></a>
                        <div class="vk-item-info">
                            <h2><?= $teacher['name'] ?></h2>
                            <div class="vk-item-line"></div>
                            <div class="vk-item-contact">
                                <ul>
                                    <li><a href="#" class="vk-active"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
				</div>
				<div class="col-md-9">
					<div class="gb-lichdaycuagiangvien-info">
						<table class="table">
							<tr>
								<th width="30%"><?= $lang == 'vn' ? 'Tuổi' : 'Age' ?></th>
								<td width="70%"><?= $teacher['age'] ?></td>
							</tr>
							<tr>
								<th  width="30%"><?= $lang == 'vn' ? 'Quốc tịch' : 'Nationality' ?></th>
								<td width="70%"><?= $teacher['country'] ?></td>
							</tr>
							<tr>
								<th  width="30%"><?= $lang == 'vn' ? 'Ngày gia nhập' : 'Joining date' ?></td>
								<td width="70%"><?= $teacher['accede'] ?></td>
							</tr>
							<tr>
								<th  width="30%"><?= $lang == 'vn' ? 'Giới tính' : 'Sex' ?></th>
								<td width="70%"><?= ($teacher['sex']==1) ? 'Nam' : 'Nữ' ?></td>
							</tr>
							<tr>
								<th  width="30%"><?= $lang == 'vn' ? 'Bằng cấp và kinh nghiệm' : 'Degree and experience' ?></th>
								<td width="70%">
									<?= $teacher['experience'] ?>
								</td>
							</tr>
							<tr>
								<th  width="30%"><?= $lang == 'vn' ? 'Chương trình' : 'Program' ?></th>
								<td width="70%">
									<?= $teacher['program'] ?>
								</td>
							</tr>
							<tr>
								<th  width="30%"><?= $lang == 'vn' ? 'Giới thiệu về bản thân' : 'Introduce yourself' ?></th>
								<td  width="70%">
									<?= $teacher['introduce'] ?>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="gb-lichdaycuagiangvien-list">
			<table class="table" id="tblSetup" cellpadding="8" cellspacing="0" border="0" width="100%" bgcolor="#f3f3f3">
				<tbody>
					<tr>
						<th class="time-caption" align="center">Thời gian</th>
						<th class="date" align="center"><?=  date( 'd/m', strtotime( 'monday this week' ) ); ?><br>Thứ hai</th>
						<th class="date" align="center"><?=  date( 'd/m', strtotime( 'tuesday this week' ) ); ?><br><span class="color-og-text">Thứ ba</span></th>
						<th class="date" align="center"><?=  date( 'd/m', strtotime( 'wednesday this week' ) ); ?><br><span class="color-og-text">Thứ tư</span></th>
						<th class="date" align="center"><?=  date( 'd/m', strtotime( 'thursday this week' ) ); ?><br><span class="color-og-text">Thứ năm</span></th>
						<th class="date" align="center"><?=  date( 'd/m', strtotime( 'friday this week' ) ); ?><br><span class="color-og-text">Thứ sáu</span></th>
						<th class="current" align="center"><?=  date( 'd/m', strtotime( 'saturday this week' ) ); ?><br><span class="color-og-text">Thứ bảy</span></th>
						<th class="date" align="center"><?=  date( 'd/m', strtotime( 'sunday this week' ) ); ?><br><span class="color-og-text">Chủ nhật</th>
					</tr>
					<?php 
					foreach ($list_hour as $item) { 
						$list_day = getDay($item['id']);
					?>
					
					<tr>
						<td class="time" align="center"><?= $item['name'] ?> </td>
						<?php 
						foreach ($list_day as $item1) { 
							foreach ($day_arr as $item2) {
								if ($item1[$item2] == 1) {
									$text = "OPEN";
								} elseif ($item1[$item2] == 2) {
									$text = "BOOKED";
								} else {
									$text = "-";
								}
						?>
						<td class="Conts" align="center"> <a class ="icon-unmark"><?= $text ?></a> </td>
						<?php } } ?>
						
					</tr>
					<?php } ?>
						
				</tbody>
			</table>

		</div>
	</div>
</div>