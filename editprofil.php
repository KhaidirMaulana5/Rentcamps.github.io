<?php
session_start();
include "connection.php";
$ambildata = mysqli_query($conn, "SELECT * FROM user_rentcamp WHERE email='$_SESSION[email]'");
$data = mysqli_fetch_array($ambildata);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Edit Data</title>
</head>
<body>
<form action="" method="POST">
    <table>
      <tr>
        <td>Nama</td>
        <td><input type="text" name="nama"></td>
      </tr>
      <tr>
        <td>Email</td>
        <td><input type="text" name="email"></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input name="pasword" type="password"></td>
      </tr>
      <tr>
        <td>telepon</td>
        <td><input name="nohp" type="text"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" name="edit" value="edit"></td>
      </tr>
    </table>
  </form>
  <?php
  include "connection.php";
  if (isset($_POST['edit'])) {
    $name = $_POST['nama'];
    $email = $_POST['email'];
    $pass = $_POST['pasword'];
    $phone = $_POST['nohp'];

    mysqli_query($conn, "UPDATE user_rentcamp SET nama='$name', email='$email', pasword='$pass', nohp='$phone' WHERE email='$_SESSION[email]'") or die(mysqli_error($conn));

    echo "<h5> Silahkan Tunggu, Data Sedang Diupdate.... </h5>";
    echo "<meta http-equiv='refresh' content='1;url=profil.php'>";
  }
  ?>
</body>
</html>