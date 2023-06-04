<?php
session_start();
if ($_SESSION['kirimartikel'] = true) {
    include "connection.php";
        $tampil = mysqli_query($conn, "SELECT * FROM artikel_rentcamp");
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
        <a href="KelolaArtikel.php">Tambah Artikel</a><br>
        <?php
    include "connection.php";
    $tampil = mysqli_query($conn, "SELECT * FROM artikel_rentcamp");
    while ($data = mysqli_fetch_array($tampil)) {
    ?>
    <table>
        <tr>
            <tr>
                <td><img src="<?php echo $data["foto"]; ?>"></td>
                <td>
                    <h2><?php echo $data['judul']; ?> <br></h2><br>
                    <p style="font-size: small;"> <?php echo $data['tanggal']; ?> <br></p> <br>
                    <?php echo $data['isi']; ?> <br>
                </td>
            </tr>
        </tr>
        <?php } ?>
  </table>
</body>
</html>