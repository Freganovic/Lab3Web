<?php
include_once 'koneksi.php';
$id = $_GET['id'];
$sql = "DELETE FROM barang WHERE id_barang = '{$id}'";
$result = mysqli_query($conn, $sql);
header('location: index.php');
