<?php
	// echo $_GET['type'];
	$mysqli = new mysqli("localhost","root","root","mydb");
	$query = 'select * from t_mxmc';
	$mysqli->query('SET NAMES UTF8');//解决中文乱码问题
	$result = $mysqli->query($query);
	if ($result) {
		//循环输出结果集中的记录
		while($row =$result->fetch_row() ){
		//中文转码 
			echo (encode_json($row)).',';
		}
	}else {
		echo "查询失败";
	}
	
	function encode_json($str) {
		return urldecode(json_encode(url_encode($str)));
	}
	function url_encode($str) {
		if(is_array($str)) {
			foreach($str as $key=>$value) {
				$str[urlencode($key)] = url_encode($value);
			}
		} else {
			$str = urlencode($str);
		}
		return $str;
	}
	$result->free();
	$mysqli->close();
?>