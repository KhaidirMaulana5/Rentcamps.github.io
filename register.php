<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./dist/css/style-register.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Kodchasan:wght@700&display=swap" rel="stylesheet">
  <title>Register Page</title>
</head>

<body background="./image/bg-login.png">
  <div class="container">
    <div class="logo">
      <img src="./image/logo.png" alt="">
    </div>
    <div id="register">
      <div id="content">
        <div id="title">
          REGISTRASI
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
            <input name="verify-pasword" type="password" placeholder="verify password"><br>
          </div>
          <div class="input-box">
            <input name="nohp" type="tel" placeholder="telepon"><br>
          </div>
          <div class="submit">
            <input name="register" type="submit" value="DAFTAR">
          </div>
          <div class="question"> sudah punya akun? <a href="login.php">Masuk</a></div>
        </form>
      </div>
    </div>
  </div>
  <?php
  if (isset($_POST['register'])) {
    include "connection.php";
    $name = $_POST['nama'];
    $email = $_POST['email'];
    $pass = $_POST['pasword'];
    $phone = $_POST['nohp'];

    $sql = "INSERT INTO user_rentcamp VALUES ('" . $name . "', '" . $email . "', '" . $pass . "','" . $phone . "')";
    if ($name == '' or $email == '' or $pass == '' or $phone == '') {
      echo "No data can be empty";
    } else if ($conn->query($sql) === TRUE) {
      echo "Registrasi succesfully";
      echo "<meta http-equiv='refresh' content='1;url=login.php'>";
    } else {
      echo "Registrasi Gagal: " . $sql . "<br>" . $conn->error;
    }
    $conn->close();
  }

  ?>
</body>

</html>