      
     <!--
    // Nama : Duta Windu Darma
    // NIM	: 10124908
    // Kelas: Web2-UL1
    -->
    
    
    </div>
    <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>
                    <?php echo date('Y');?> - <b>10124908 - Duta Windu Darma</a></b>
                </span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
    
     <!-- Chart.js CDN -->
     <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

     <!-- Data dari PHP -->
    <script>
       const stokKategoriLabels = <?= $labels_json ?>;
       const stokKategoriData = <?= $data_json ?>;
     </script>

     <!-- File JavaScript Chart.js kamu -->
     <script src="../vendor/chart.js/chart-stok-kategori.js"></script>

   </body>

   </html>