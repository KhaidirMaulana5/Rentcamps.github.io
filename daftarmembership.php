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
    <div id="register">
      <div id="content">
        <div id="title">
          Daftar Membership
        </div>
        <div class="underline-title">
        </div>
        <form action="" method="POST">
          <div class="input-box">
            <input name="nama" type="text" placeholder="nama"><br>
          </div>
          <div class="input-box">
            <input name="email" type="email" placeholder="email"><br>
          </div>
          <div class="input-box">
            <input name="pasword" type="password" placeholder="password"><br>
          </div>
          <div class="input-box">
            <label for="pembayaran">Pilih Pembayaran:</label>
            <select name="pembayaran" id="pembayaran">
                <option value="BCA">BCA</option>
                <option value="BRI">BRI</option>
                <option value="DANA">DANA</option>
                <option value="GOPAY">GOPAY</option>
            </select>
          </div>
          <div class="submit">
            <input name="kirim" type="submit" value="DAFTAR">
          </div>
          <div class="question"> sudah bergabung? <a href="masukmembership.php">Masuk</a></div>
        </form>
      </div>
    </div>
  </div>
  <?php
  if (isset($_POST['kirim'])) {
    include "connection.php";
    $name = $_POST['nama'];
    $email = $_POST['email'];
    $pasword = $_POST['pasword'];
    $pembayaran = $_POST['pembayaran'];

    $sql = "INSERT INTO membership VALUES ('" . $name . "', '" . $email . "', '" . $pasword . "','" . $pembayaran . "')";
    if ($name == '' or $email == '' or $pasword == '' or $pembayaran == '') {
      echo "No data can be empty";
    } else if ($conn->query($sql) === TRUE) {
      echo "Registrasi succesfully";
      echo "<meta http-equiv='refresh' content='1;url=kodebayar.php'>";
    } else {
      echo "Registrasi Gagal: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
  }

  ?>
</body>

</html>
