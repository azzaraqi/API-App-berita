<?php

header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");
include_once 'koneksi.php';

// Menerima data dari POST request
$id = $_POST['id'];
$nama = $_POST['nama'];
$no_bp = $_POST['no_bp'];
$no_hp = $_POST['no_hp'];
$email = $_POST['email'];

// Query untuk melakukan update data pegawai
$query = "UPDATE pegawai SET nama = '$nama',no_bp = '$no_bp',no_hp = '$no_hp', email = '$email' WHERE id = $id";

$res = array();

if (mysqli_query($koneksi, $query)) {
  // Jika query berhasil dijalankan
  $cek = "SELECT * FROM pegawai WHERE id = $id";
  $result = mysqli_fetch_array(mysqli_query($koneksi, $cek));
  $res['is_success'] = true;
  $res['value'] = 1;
  $res['message'] = "Berhasil edit pegawai";
  $res['nama'] = $result['nama'];
  $res['id'] = $result['id'];
} else {
  // Jika query gagal dijalankan
  $res['is_success'] = false;
  $res['value'] = 0;
  $res['message'] = "Gagal edit pegawai";
}

echo json_encode($res);

?>
