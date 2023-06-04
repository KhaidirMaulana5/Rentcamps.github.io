<?php
include "connection.php";
$id = $_GET['id'];
$ambildata = mysqli_query($conn, "DELETE FROM artikel_rentcamp WHERE judul='$id'");
echo "<meta http-equiv='refresh' content='1;url=TampilanArtikelPemilik.php'>";
echo "<h5>Data sedang dihapus...<h5>";