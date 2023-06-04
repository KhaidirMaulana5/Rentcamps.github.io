<?php
include "connection.php";
$ambildata = mysqli_query($conn, "SELECT * FROM artikel_rentcamp WHERE judul='$_GET[id]'");
$data = mysqli_fetch_array($ambildata);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Edit Artikel</title>
</head>
<body>
<form action="" method="POST">
    <table>
      <tr>
        <td>Judul</td>
        <td><input type="text" name="judul" value="<?php echo $data['judul'];?>"></td>
      </tr>
      <tr>
        <td>Foto</td>
        <td><input type="file" name="foto"></td>
      </tr>
      <tr>
        <td>Isi</td>
        <td><input name="isi" type="text"></td>
      </tr>
      <tr>
        <td>Tanggal</td>
        <td><input name="tanggal" type="date"></td>
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
    $judul = $_POST['judul'];
    $foto = $_POST['foto'];
    $isi = $_POST['isi'];
    $tanggal = $_POST['tanggal'];
    
    mysqli_query($conn, "UPDATE artikel_rentcamp SET judul='$judul', foto='$foto', isi='$isi', tanggal='$tanggal' WHERE judul='$_GET[id]'") or die(mysqli_error($conn));

    echo "<h5> Silahkan Tunggu, Data Sedang Diupdate.... </h5>";
    echo "<meta http-equiv='refresh' content='1;url=tampilanartikelpemilik.php'>";
  }
  ?>
</body>
</html>