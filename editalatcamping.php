<?php
session_start();
include "connection.php";
$ambildata = mysqli_query($conn, "SELECT * FROM alatcamping WHERE nama='$_SESSION[nama]'");
$data = mysqli_fetch_array($ambildata);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Edit Alat Camping</title>
</head>
<body>
<form action="" method="POST">
    <table>
      <tr>
        <td>Nama</td>
        <td><input type="text" name="nama"></td>
      </tr>
      <tr>
        <td>Foto</td>
        <td><input type="file" name="foto"></td>
      </tr>
      <tr>
        <td>harga</td>
        <td><input name="isi" type="int"></td>
      </tr>
      <tr>
        <td>detail</td>
        <td><input name="tanggal" type="text"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" name="edit" value="edit"></td>
      </tr>
    </table>
  </form>
  <?php
  include "connection.php";
  if (isset($_POST['edit'])) {
    $nama = $_POST['nama'];
    $harga = $_POST['harga'];
    $foto = $_POST['foto'];
    $detail = $_POST['detail'];

    mysqli_query($conn, "UPDATE artikel_rentcamp SET nama='$nama', harga='$harga', foto='$foto', detail='$detail' WHERE nama='$_SESSION[nama]'") or die(mysqli_error($conn));

    echo "<h5> Silahkan Tunggu, Data Sedang Diupdate.... </h5>";
    echo "<meta http-equiv='refresh' content='1;url=profil.php'>";
  }
  ?>
</body>
</html>