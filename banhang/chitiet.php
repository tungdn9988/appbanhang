<?php
include "connect.php";
$page = $_POST['page'];
$total = 6;//can lay 6 san pham 1 trang
$pos =($page-1)*$total; //0,6  6,6
$loai = $_POST['loai'];
$query = 'SELECT * FROM `sanphammoi` WHERE `loai`= '.$loai.'';
$data = mysqli_query($conn, $query); 
$result = array();
while ($row =mysqli_fetch_assoc($data)){
	$result[] = ($row);
}
	//code...
if (!empty($result)) {
	$arr = [
		'success' => true,
		'message' => "Thanh cong",
		'result' =>$result

	];
}else{
	$arr = [
		'success' => false,
		'message' => "Khong thanh cong",
		'result' => $result
	];

}
print_r(json_encode($arr));

?>