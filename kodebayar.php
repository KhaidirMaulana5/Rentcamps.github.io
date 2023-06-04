<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./dist/css/style-profil.css">
        <title>Membership page</title>
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
              <li><a href="#">ALAT - ALAT CAMPING</a></li>
              <li><a href="#">OBAT - OBATAN</a></li>
              <li><a href=artikel.php>ARTIKEL</a></li>
              <li><a href=profil.php><img src="./image/profile-icon.png" alt=""></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div>
        <h1>Membership</h1>
        <?php
        session_start();
        include "connection.php";
        $sql="SELECT * FROM membership where  email='$_SESSION[email]'";
        $result=mysqli_query($con,$sql);
        ?>
        <?php
        while($rows=mysqli_fetch_array($result)){
        ?>
        <form action="" method="POST">
            <table>
                <tr>
                    <td>Nama</div></td>
                    <td> : </td>
                    <td><?php echo $rows['nama']; ?></td>
                </tr>
                <tr>
                    <td>Email</div></td>
                    <td> : </td>
                    <td><?php echo $rows['email']; ?></td>
                </tr>
                <tr>
                    <td>Pembayaran</div></td>
                    <td> : </td>
                    <td><?php echo $rows['pembayaran']; ?></td>
                </tr>
                <tr>
                    <td>Kode Bayar</div></td>
                    <td> : </td>
                    <td><?php if ($rows['pembayaran']=="BCA"){
                      echo "6701210081";
                    } if ($rows['pembayaran']=="BRI"){
                      echo "67012100810081";
                    } if ($rows['pembayaran']=="DANA"){
                      echo "67012100818181";
                    } if ($rows['pembayaran']=="GOPAY"){
                      echo "67012100816701210081";
                    }?>
                    </td>
                </tr>
            </table>
        </form>
        </div>
        <br>
        <div><a href="buktipembayaran.php" id="st-btn">Kirim Bukti Pembayaran</a></div>
        <?php 
        }
        ?>
        </div>
        </section>
    <br>
    <br>
    <br>
    <hr color="black">
    <br>
    <br>
    <br>
    <section>
      <div class="phone">
        <img src="./image/telepon.png" alt="">
      </div>
      <div class="phone-number">
        <p>
          (+62) 827456178293 <br>
          (+62) 876354103875
        </p>
      </div>
      <div class="email">
        <img src="./image/email.png" alt="">
      </div>
      <div class="email-address">
        <p>
          rusdi69@gmail.com <br>
          carmosutarjo@gmail.com
        </p>
      </div>
      <div class="follow-us">
        <p>
          Follow Us
        </p>
      </div>
      <div class="facebook">
        <img src="./image/_Facebook.png" alt="">
      </div>
      <div class="instagram">
        <img src="./image/_Instagram.png" alt="">
      </div>
      <div class="twitter">
        <img src="./image/_Twitter.png" alt="">
      </div>
      <div class="whatsapp">
        <img src="./image/_WhatsApp.png" alt="">
      </div>
    </section>
    </body>
</html>