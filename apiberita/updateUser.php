<?php

header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");

  include 'koneksi.php';

  $id = $_POST['id'];
  $username = $_POST['username'];
  // $username = $_POST['username'];

  $sql = "UPDATE users SET username = '$username' WHERE id=$id";
  $isSuccess = $koneksi->query($sql);

  if ($isSuccess) {

  	$cek = "SELECT * FROM users WHERE id = $id";
	$result = mysqli_fetch_array(mysqli_query($koneksi, $cek));
	$res['is_success'] = true;
	$res['value'] = 1;
	$res['message'] = "Berhasil edit user";
	$res['username'] = $result['username'];
	$res['id'] = $result['id'];
  } else {
    $res['is_success'] = false;
    $res['value'] = 0;
    $res['message'] = "Gagal edit user";
  }

  echo json_encode($res);

 ?>
