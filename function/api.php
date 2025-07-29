 <!--
    // Nama : Duta Windu Darma
    // NIM	: 10124908
    // Kelas: Web2-UL1
-->

<?php
include '../dbconnection.php';
include 'view.php'; // class view ada di file ini

$view = new view($conn);

// Handler API berdasarkan query parameter ?func=...
if (isset($_GET['func']) && method_exists($view, $_GET['func'])) {
    header('Content-Type: application/json');
    echo json_encode($view->{$_GET['func']}());
    exit;
} else {
    http_response_code(400);
    echo json_encode(["error" => "Fungsi tidak ditemukan"]);
    exit;
}