<?php
session_start();
if ($_SESSION['alatcamping'] = true) {
    include "connection.php";
        $tampil = mysqli_query($conn, "SELECT * FROM alatcamping");
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
              <li><a href=artikel.php>ARTIKEL</a></li>
              <li><a href=profil.php><img src="./image/profile-icon.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
      <table border="1">
    <tr>
      <td>nama</td>
      <td>harga</td>
      <td>foto</td>
      <td>detail</td>
    </tr>
    <?php
    include "connection.php";
    $query = "SELECT * FROM alatcamping";
    $sql = mysqli_query($conn, $query);
    // $result = mysqli_fetch_assoc($conn, $sql);
    while ($result = mysqli_fetch_assoc($sql)) {
    ?>
    <tr>
      <td> <?php echo $result['nama']; ?> </td>
      <td> <?php echo $result['harga']; ?> </td>
      <td> <img src="img/<?php echo $result['foto']; ?>" style="width: 200px;"> </td>
      <td> <?php echo $result['detail']; ?> </td>
    </tr>
    <?php } ?>
  </table>
</body>

</html>