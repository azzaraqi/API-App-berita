<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

// Sisipkan file koneksi.php yang berisi informasi koneksi database
require_once 'koneksi.php';

// Query untuk mengambil data pegawai
$sql = "SELECT id, nama, no_bp, no_hp, email, tanggal_input FROM pegawai";
$result = $koneksi->query($sql);

if ($result->num_rows > 0) {
    $pegawai_array = array();
    while ($row = $result->fetch_assoc()) {
        // Menambahkan data pegawai ke dalam array
        $pegawai_array[] = $row;
    }
    // Mengembalikan data pegawai dalam format JSON
    echo json_encode($pegawai_array);
} else {
    // Jika tidak ada data, mengembalikan pesan kosong
    echo json_encode([]);
}

?>
