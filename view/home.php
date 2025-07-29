 <!--
    // Nama : Duta Windu Darma
    // NIM	: 10124908
    // Kelas: Web2-UL1
-->

<h3>Dashboard</h3>
<br/>
<?php 
 
	// $sql=" select * from barang where stok <= 3";
	// $stmt = mysqli_prepare($conn, $sql);
	// mysqli_stmt_execute($stmt);
    // mysqli_stmt_store_result($stmt);
	// $r = mysqli_stmt_num_rows($stmt);
	

	$sql=" select * from barang where stok <= 3";
	$row = $conn -> prepare($sql);
	$row -> execute();
	$r = $row -> rowCount();
	
    // $sql="select * from barang where stok <= 3";
    // $query = mysqli_query($conn,$sql);
    // $r = mysqli_num_rows($query);
	if($r > 0){    
?>

<?php
// Ambil data stok per kategori dari API
$data_json = file_get_contents('../function/api.php?func=getStokPerKategori');
$data_array = json_decode($data_json, true);

// Encode ulang untuk dijadikan variabel JavaScript
$labels_json = json_encode($data_array['labels']);
$data_json = json_encode($data_array['data']);
?>


<?php
		echo "
		<div class='alert alert-warning'>
			<span class='glyphicon glyphicon-info-sign'></span> Ada <span style='color:red'>$r</span> barang yang Stok tersisa sudah kurang dari 3 items. silahkan pesan lagi !!
			<span class='pull-right'><a href='index.php?page=barang&stok=yes'>Tabel Barang <i class='fa fa-angle-double-right'></i></a></span>
		</div>
		";	
	}
?>
<?php $hasil_barang = $lihat -> barang_row();?>
<?php $hasil_kategori = $lihat -> kategori_row();?>
<?php $stok = $lihat -> barang_stok_row();?>
<?php //$jual = $lihat -> jual_row();?>

                   <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Jenis Sparepart</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo number_format($hasil_barang);?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-blog fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Stock Sparepart</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo number_format($stok['jml']);?></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-tools fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    
                    
                    </div>
                    <div class="row">
                        <div class="col-xl-8 col-lg-7">
                            <!-- Bar Chart -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Grafik Stok per Kategori</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-bar">
                                        <canvas id="stokKategoriChart"></canvas>
                                    </div>
                                </div>
                            </div>
                            <!-- Bar Chart -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Grafik Stok per Bulan</h6>
                                </div>
                                <div class="card-body">
                                    <div class="chart-bar">
                                        <canvas id="stokBulananChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>