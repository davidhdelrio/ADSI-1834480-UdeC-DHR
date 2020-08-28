<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<?php
include_once("header_admi.php");
?>
<div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Estadisticas</h1>
          <p class="mb-4"> En las estadisticas estaran realizadas los datos ingresados por los estudiantes, manera, que podamos entender los estandares que rodean a nuestros estudiantes </p>

          <!-- Content Row -->
          <div class="row">

            <div class="col-xl-8 col-lg-7">

              <!-- Area Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Género</h6>
                </div>
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="myAreaChart"></canvas>
                  </div>
                  <hr>
                Podremos ver cuántos hombres y mujeres hay.
                </div>
              </div>

              

              <!-- Bar Chart -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Localidades</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar">
                    <canvas id="myBarChart"></canvas>
                  </div>
                  <hr>
                  Veremos cuáles son las localidades más habitadas por nuestros estudiantes.
                </div>
              </div>

            </div>

            <!-- Donut Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Nivel Academico De Los Padres</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <hr>
                  Podremos ver el nivel en el que se encuentra los padres de nuestros estudiantes.
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>

   

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo2.js"></script>
  <script src="js/demo/chart-pie-demo2.js"></script>
  <script src="js/demo/chart-bar-demo2.js"></script>
</body>
</html>



