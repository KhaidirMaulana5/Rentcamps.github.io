<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./dist/css/style-kelolaalatcamping.css">
    <title>Kelola Artikel</title>
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
      <div><h2>Kelola Artikel</h2></div><br>
        <div class="input-box">
          <input name="judul" type="text" placeholder="Judul"><br>
        </div >
        <div class="input-box">
          <input name="foto" type="file" placeholder="Foto"><br>
        </div>
        <div class="input-box">
          <input name="isi" type="text" placeholder="isi Artikel"><br>
        </div>
        <div class="input-box">
          <input name="tanggal" type="date" placeholder="tanggal terbit"><br>
        </div>
        <div class="submit">
          <input name="kirimartikel" type="submit" value="KIRIM">
        </div>
      </form>
      </div>
    </div>
  <?php
  if (isset($_POST['kirimartikel'])) {
    include "connection.php";

    $judul = $_POST['judul'];
    $isi = $_POST['isi'];
    $tanggal = $_POST['tanggal'];
    $foto = $_POST['foto'];

    $sql = "insert into artikel_rentcamp value ('" . $judul . "', '" . $isi . "', '" . $tanggal . "','" . $foto . "')";
    if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
    echo "<meta http-equiv='refresh' content='1;url=TampilanArtikelPemilik.php'>";
  }

  ?>
</body>

</html>