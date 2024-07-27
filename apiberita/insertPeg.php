<?php
include_once 'koneksi.php';

// Cek apakah metode yang digunakan adalah POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Mengekstrak dan menghindari SQL injection
    $nama = mysqli_real_escape_string($koneksi, $_POST['nama']);
    $noBp = mysqli_real_escape_string($koneksi, $_POST['no_bp']);
    $noHp = mysqli_real_escape_string($koneksi, $_POST['no_hp']);
    $email = mysqli_real_escape_string($koneksi, $_POST['email']);

    // Query untuk menambah pegawai
    $query = "INSERT INTO pegawai (nama, no_bp, no_hp, email, tanggal_input) VALUES ('$nama', '$noBp', '$noHp', '$email', NOW())";

    // Eksekusi query
    if (mysqli_query($koneksi, $query)) {
        // Jika query berhasil dijalankan
        http_response_code(201); // Status code 201 untuk sukses tambah data
        echo json_encode(array("message" => "Pegawai berhasil ditambahkan"));
    } else {
        // Jika query gagal dijalankan
        http_response_code(500); // Status code 500 untuk error server
        echo json_encode(array("message" => "Gagal menambahkan pegawai: " . mysqli_error($koneksi)));
    }
} else {
    // Jika bukan metode POST
    http_response_code(405); // Status code 405 untuk method not allowed
    echo json_encode(array("message" => "Method not allowed"));
}
?>
