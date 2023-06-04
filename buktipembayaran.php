<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./dist/css/style-registe.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kodchasan:wght@700&display=swap" rel="stylesheet">
  <title>Daftar Membership Page</title>
</head>

<body background="./image/bg-login.png">
  <div class="container">
    <div class="logo">
      <img src="./image/logo.png" alt="">
    </div>

    <?php
        session_start();
        include "connection.php";
        $sql="SELECT * FROM membership where email='$_SESSION[email]'";
        $result=mysqli_query($con,$sql);
        ?>
        <?php
        while($rows=mysqli_fetch_array($result)){
        ?>
    <div id="register">
      <div id="content">
        <div id="title">
          Kirim Bukti Pembayaran
        </div>
        <div class="underline-title">
        </div>
        <form action="" method="POST">
          <div class="input-box">
            <input name="buktibayar" type="file" placeholder="kirim bukti bayar"><br>
          </div>
          <div class="submit">
            <input name="kirim" type="submit" value="KIRIM">
          </div>
        </form>
      </div>
    </div>
  </div>
  <?php 
        }
        ?>
  <?php
  if (isset($_POST['kirim'])) {
    include "connection.php";
    $buktibayar = $_POST['buktibayar'];
    $sql = "INSERT INTO membership (buktibayar) VALUES ('" . $buktibayar . "')";
    if ($conn->query($sql) === TRUE) {
      echo "Pengiriman succesfully <br>"; 
      echo "Tunggu Admin Memverifikasi";
    } else {
      echo "Registrasi Gagal: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
  }

  ?>
</body>

</html>
