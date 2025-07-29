 <!--
    // Nama : Duta Windu Darma
    // NIM	: 10124908
    // Kelas: Web2-UL1
-->

<?php

session_start();
if (!empty($_SESSION['admin'])) {
    require '../dbconnection.php';
    if (!empty(htmlentities($_GET['kategori']))) {
        $id= htmlentities($_GET['id']);
        $data[] = $id;
        $sql = 'DELETE FROM kategori WHERE id_kategori=?';
        $row = $conn -> prepare($sql);
        $row -> execute($data);
        echo '<script>window.location="../index.php?page=kategori&&remove=hapus-data"</script>';
    }

    if (!empty(htmlentities($_GET['barang']))) {
        $id= htmlentities($_GET['id']);
        $data[] = $id;
        $sql = 'DELETE FROM barang WHERE id_barang=?';
        $row = $conn -> prepare($sql);
        $row -> execute($data);
        echo '<script>window.location="../index.php?page=barang&&remove=hapus-data"</script>';
    }
}
