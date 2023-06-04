<?php
session_start();
if ($_SESSION['obat-obatan'] = true) {
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
        <link rel="stylesheet" href="./dist/css/style-artikel2.css">
        <title>Obatan page</title>
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
              <li><a href=artikel.php>ARTIKEL</a></li>
              <li><a href=profil.php><img src="./image/profile-icon.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
  <table>
    <?php
    include "connection.php";
    $tampil = mysqli_query($conn, "SELECT * FROM obatan");
    while ($data = mysqli_fetch_array($tampil)) {
    ?>
    <td>
        <img src="<?php echo $data["foto"]; ?>">
        <h5 class="card-title"><?php echo $data['nama']; ?></h5>
        <h5> <?php echo $data['harga']; ?> </h5>
        <p class="card-text"><?php echo $data['detail']; ?></p>
        <a href="#" class="btn btn-primary">Lihat Detail</a>
    </td>
    <?php } ?>
  </table>
</body>
</html>