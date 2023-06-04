<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./dist/css/style-kelolaalatcampin.css">
    <title>Alat Camping Rentcamp</title>
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
            <li><a href="homepemilik.html">BERANDA</a></li>
              <li><a href="kelola-alatcamping.php">ALAT - ALAT CAMPING</a></li>
              <li><a href="kelola_obat.php">OBAT - OBATAN</a></li>
              <li><a href="TampilanArtikelPemilik.php">ARTIKEL</a></li>
              <li><a href=Profilpemilik.php><img src="./image/profile-icon.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="cemara">
        <img src="./image/cemara.png" alt="">
      </div>
    </section>
    <div class="page">
      <div class="form">
      <form class="login-form" action="" method="POST">
      <div><h2>Kelola Obat</h2></div><br>
        <div class="input-box">
          <input name="nama" type="text" placeholder="Nama"><br>
        </div>
        <div class="input-box">
          <input name="harga" type="text" placeholder="Harga"><br>
        </div>
        <div class="input-box">
          <input name="foto" type="file" placeholder="Upload Foto"><br>
        </div>
        <div class="input-box">
          <input name="detail" type="text" placeholder="Detail Barang"><br>
        </div>
        <div class="submit">
          <input name="kirimobat" type="submit" value="KIRIM">
        </div>
      </form>
      <?php
  if (isset($_POST['kirimobat'])) {
    include "connection.php";

    $nama = $_POST['nama'];
    $harga = $_POST['harga'];
    $foto = $_POST['foto'];
    $detail = $_POST['detail'];

    $sql = "INSERT INTO obatan VALUES ('" . $nama . "', '" . $harga . "', '" . $foto . "','" . $detail . "')";
    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
      
      $conn->close();
    }
  ?>
  </body>
</html>