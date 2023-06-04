<?php
session_start();
if ($_SESSION['kirimobat'] = true) {
    include "connection.php";
        $tampil = mysqli_query($conn, "SELECT * FROM obatan");
        while ($data = mysqli_fetch_array($tampil))
?>
<?php
}
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./dist/css/style-tampilanartikel.css">
        <title>Artikel page</title>
    </head>
    <body>
    <section class="navbar">
      <div class="container">
        <div class="box-navbar">
          <div class="logo">
            <img src="./image/logo.png" alt="">
          </div>
          <div class="box">
            <ul>
              <li><a href=home.html>BERANDA</a></li>
              <li><a href="alatcamping.php">ALAT - ALAT CAMPING</a></li>
              <li><a href="obatan.php">OBAT - OBATAN</a></li>
              <li><a href=TampilanArtikelPemilik.php>ARTIKEL</a></li>
              <li><a href=profil.php><img src="./image/profile-icon.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
        <a href="Kelolaobatan.php">Tambah Artikel</a><br>
    <table border="1">
        <tr>
            <th>No</th>
            <th>Judul</th>
            <th>Isi</th>
            <th>Tanggal Upload</th>
            <th>Foto</th>
            <th>Kelola</th>
        </tr>
<?php
    include "connection.php";
    $no = 1;
    $tampil = mysqli_query($conn, "SELECT * FROM obatan");
    while ($data = mysqli_fetch_array($tampil)) {
    ?>
    <tr>
      <td> <?php echo $no++; ?> </td>
      <td> <?php echo $data['nama']; ?> </td>
      <td> <?php echo $data['foto']; ?> </td>
      <td> <?php echo $data['harga']; ?> </td>
      <td> <img src="<?php echo $data["detail"]; ?>"> </td>
      <td>
        <a href="editobat.php?id=<?php echo $data['judul']; ?>">Edit</a>
        <a href="hapusobat.php?id=<?php echo $data['judul']; ?>">Hapus</a></td>
    </tr>
    <?php } ?>

  </table>


</body>

</html>