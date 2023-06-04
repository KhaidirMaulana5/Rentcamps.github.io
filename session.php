<?php
  if (isset($_POST['login'])) {
    session_start();
    include "connection.php";
    $email = $_POST['email'];
    $pass = $_POST['pasword'];
    $sql = "SELECT * FROM user_rentcamp WHERE email = '$email' AND pasword = '$pass'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    if (mysqli_num_rows($result) > 0) {
      if ($pass == $row['pasword']) {
        $_SESSION['login'] = true;
        $_SESSION['email'] = $row['email'];
        echo "Login successfully";
        echo "<meta http-equiv='refresh' content='1;url=profil.php'>";
      }
    } else if ($email == '' or $pass == '') {
      echo "Email or Password cannot be empty";
    } else if ("email" != $email or "password" != $pass) {
      echo "Password atau Email salah";
    } else {
      echo "Login Failed: User not found ";
    }
    $conn->close();
  }

  ?>