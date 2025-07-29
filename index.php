 <!--
    // Nama : Duta Windu Darma
    // NIM	: 10124908
    // Kelas: Web2-UL1
-->

<?php 

	@ob_start();
	session_start();

	if(!empty($_SESSION['admin'])){
        require 'dbconnection.php';
        include $view;
		$lihat = new view($conn);
		//$toko = $lihat -> toko();

        include 'view/header.php';
		include 'view/sidebar.php';
			if(!empty($_GET['page'])){
				include 'view/'.$_GET['page'].'/index.php';
			}else{
				include 'view/home.php';
			}
			include 'view/footer.php';

    }else{
		echo '<script>window.location="login.php";</script>';
		exit;
	}
?>