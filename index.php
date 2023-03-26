<?php
include("koneksi.php");
// query untuk menampilkan data
$sql = 'SELECT * FROM barang';
$result = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Data Barang</title>
</head>

<body>
    <div class="icontainer">
        <h1>Data Barang </h1>
        <a class="btn-tambah" type="button" href="add.php">Tambah Barang</a>
<p></p>
        <div class="main">
            <table>
                <tr>
                    <th>Gambar</th>
                    <th>Nama Barang</th>
                    <th>Katagori</th>
                    <th>Harga Jual</th>
                    <th>Harga Beli</th>
                    <th>Stok</th>
                    <th>Aksi</th>
                </tr>
                <?php if ($result) : ?>
                    <?php while ($row = mysqli_fetch_array($result)) : ?>
                        <tr>
                            <td><img src="gambar/<?= $row['Gambar']; ?>" alt="<?= $row['nama']; ?>"></td>
                            <td><?= $row['Nama']; ?></td>
                            <td><?= $row['Kategori']; ?></td>
                            <td><?= $row['Harga_beli']; ?></td>
                            <td><?= $row['Harga_jual']; ?></td>
                            <td><?= $row['Stok']; ?></td>
                            <td>
                                <a href="ubah.php?id=<?= $row['id_barang']; ?>"><input type='button' class='btn-ubah'></a>
                                <a href="hapus.php?id=<?= $row['id_barang']; ?>"><input type='button' class='btn-delete'></a>
                            </td>
                        </tr>
                    <?php endwhile;
                else : ?>
                    <tr>
                        <td colspan="7">Belum ada data</td>
                    </tr>
                <?php endif; ?>
            </table>
        </div>
    </div>
</body>

</html>