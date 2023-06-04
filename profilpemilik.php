<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./dist/css/style-profil.css">
        <title>Profil page</title>
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
              <li><a href="kelolaartikel.php">ARTIKEL</a></li>
              <li><a href=Profilpemilik.php><img src="./image/profile-icon.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class=profil>
        <h1>Profil</h1>
        <?php
        session_start();
        include "connection.php";
        $sql="SELECT * FROM pemilik_rentcamp where  email='$_SESSION[email]'";
        $result=mysqli_query($con,$sql);
        ?>
        <?php
        while($rows=mysqli_fetch_array($result)){
        ?>
        <div class="profil-page">
        <div class="form">
        <form action="" method="POST">
            <table>
                <tr>
                    <td>Nama:</div></td>
                    <td><?php echo $rows['nama']; ?></td>
                </tr>
                <tr>
                    <td>Email:</div></td>
                    <td><?php echo $rows['email']; ?></td>
                </tr>
                <tr>
                    <td>Telepon:</div></td>
                    <td><?php echo $rows['nohp']; ?></td>
                </tr>
            </table>
        </form>
        </div>
        <br>
        <div><a href="logout.php" id="st-btn">Keluar</a></div>
        <?php 
        }
        ?>
        </div>
    </body>
</html>