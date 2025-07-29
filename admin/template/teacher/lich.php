<?php 
	$array = array('18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30');//var_dump($array);
	$day_arr = array('mon', 'wed', 'tue', 'thu', 'fri', 'sat', 'sun');

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
	$list_hour = getHour($_GET['id']);

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
?>
<style type="text/css">
	td {
		padding: 10px;
	}
</style>
<div class="container">
	<?php 
	echo '<table>';
	echo '<tr><td>Giờ</td><td>Thứ 2</td><td>Thứ 3</td><td>Thứ 4</td><td>Thứ 5</td><td>Thứ 6</td><td>Thứ 7</td><td>Chủ Nhật</td></tr>';
	foreach ($list_hour as $item) {
		$list_day = getDay($item['id']);
		echo '<tr>';
		echo '<td>'.$item['name'].'</td>';
		foreach ($list_day as $item1) {
			foreach ($day_arr as $item2) {
				echo '<td>';
				echo '<select onchange="setDay(this, '.$_GET['id'].', \''.$item['name'].'\', \''.$item2.'\')">';
				echo ($item1[$item2]==0) ? '<option value="0" selected>NO</option>' : '<option value="0">NO</option>';
				echo ($item1[$item2]==1) ? '<option value="1" selected>OPEN</option>' : '<option value="1">OPEN</option>';
				echo ($item1[$item2]==2) ? '<option value="2" selected>BOOKED</option>' : '<option value="2">BOOKED</option>';
				echo '</select>';
				echo '</td>';
			}
		}
		echo '</tr>';
	}
	echo '</table>';//echo 'tuan';
	?>
</div>
<script type="text/javascript">
	function setDay (data, teacher, hour, day) {
		// alert(hour + teacher + data.value + day);
		var type = data.value;
		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		     var bien = this.responseText;
		     // alert(bien);
		    }
		  };
		  xhttp.open("GET", "/functions/ajax/lich.php?type="+type+"&teacher="+teacher+"&hour="+hour+"&day="+day, true);
		  xhttp.send();
	}
</script>