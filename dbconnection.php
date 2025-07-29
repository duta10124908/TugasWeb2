 <!--
    // Nama : Duta Windu Darma
    // NIM	: 10124908
    // Kelas: Web2-UL1
-->

<?php
date_default_timezone_set("Asia/Jakarta");

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "db_toko_sparepart";

//$conn = new PDO("mysql:host=$host;dbname=$dbname;", $user,$pass);

try{
	$conn = new PDO("mysql:host=$host;dbname=$dbname;", $user,$pass);
		//echo 'sukses';
	}catch(PDOException $e){
		echo 'KONEKSI GAGAL' .$e -> getMessage();
	}

$view = 'function/view.php'; 
?>