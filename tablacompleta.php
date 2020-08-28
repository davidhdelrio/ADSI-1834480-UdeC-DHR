


<?php
include_once('sesionesadmi.php');
?>

<?php
$dbname='encuestaudc_sjba';
$user='root';
$pass='';
$dsn="mysql:host=localhost;dbname=$dbname";

//ESTABLECER CONEXIÓN
try { 
$conn=new PDO($dsn,$user,$pass);
$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

$sql="SELECT region_sjba.region,
genero_sjba.genero,
estadocivil_sjba.estadocivil,
nivelacademicomama_sjba.nivelacademico_mama,
nivelacademicopapa_sjba.nivelacademico_papa,
tipodevivienda_sjba.tipodevivienda,
tipodeinstitucion_sjba.tipodeinstitucion,
tiempo_de_graduado_sjba.tiempo_de_graduado,
calificatucarrera_sjba.calificatucarrera,
encuesta_sjba.identificacion,encuesta_sjba.nombre,encuesta_sjba.apellido,encuesta_sjba.email,
encuesta_sjba.telefono,encuesta_sjba.direccion,encuesta_sjba.nacimiento,encuesta_sjba.actividaddelpapa,
encuesta_sjba.actividaddelamama,encuesta_sjba.carrera,encuesta_sjba.id_ingresoeconomico,encuesta_sjba.asignaturas_matriculadas 
FROM encuesta_sjba 
INNER JOIN region_sjba ON encuesta_sjba.id_region = region_sjba.id
INNER JOIN genero_sjba ON encuesta_sjba.id_genero = genero_sjba.id
INNER JOIN estadocivil_sjba ON encuesta_sjba.id_estadocivil = estadocivil_sjba.id
INNER JOIN nivelacademicomama_sjba ON encuesta_sjba.id_nivelacademicoMama = nivelacademicomama_sjba.id
INNER JOIN nivelacademicopapa_sjba ON encuesta_sjba.id_nivelacademicoPapa = nivelacademicopapa_sjba.id
INNER JOIN tipodevivienda_sjba ON encuesta_sjba.id_tipodevivienda = tipodevivienda_sjba.id
INNER JOIN tipodeinstitucion_sjba ON encuesta_sjba.tipodeinstitucion = tipodeinstitucion_sjba.id
INNER JOIN tiempo_de_graduado_sjba ON encuesta_sjba.tiempo_de_graduado = tiempo_de_graduado_sjba.id
INNER JOIN calificatucarrera_sjba ON encuesta_sjba.calificatucarrera = calificatucarrera_sjba.id
";

$stm=$conn->prepare($sql);
$stm->execute(array($_SESSION['identificacion']));

} catch (Exception $e){
  echo'connected failed:'.$e->getMessage(); 
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Portal UDC</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body >

  <?php
include_once("header_admi.php");
?>





        <!-- Begin Page Content -->
         <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Bienvenido administrador</h1>
          <p class="mb-4">Podra visualizar los datos de la encuesta realizada por los estudiantes Y buscar registros que necesite de la tabla, tenga en cuenta que podra buscar los datos que estan dentro de las columnas, y algunos campos son unicos(dentificacion, correo, genero, estado civil, nivel academicos de los padres y tipo vivienda) por lo que esos datos debera escribirlos correctamente.</a>.</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Datos de los usuarios</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Identificación</th>
                      <th>Nombre</th>
                      <th>Apellido</th>
                      <th>Email</th>
                      <th>Teléfono</th>
                      <th>Dirección</th>
                      <th>Actividad ecónomica del padre</th>
                      <th>Actividad ecónomica de la madre</th>
                      <th>Estado civil</th>
                      <th>Género</th>
                      <th>Nacimiento </th>
                      <th>Nivel acádemico del padre</th>
                      <th>Nivel acádemico de la madre</th>
                      <th>Tipo de institución</th>
                      <th>Tipo de vivienda</th>
                      <th>Región</th>
                      <th>Carrera </th>
                      
                      <th>Tiempo de graduado</th>
                      <th>Ingreso ecónomico del hogar</th>
                      <th>Calificacion de la carrera</th>
                      <th>Asignaturas matriculadas</th>
                     
                    </tr>
                  </thead>
                  
                  <tbody>
                  
                    
                
                  <?php
 

 $rows=$stm->fetchAll(PDO::FETCH_OBJ);
 foreach($rows as $row){
  $row->identificacion; 
  $row->nombre;
  $row->apellido;
  $row->email;
  $row->telefono;
  $row->direccion;
  $row->actividaddelpapa;
  $row->actividaddelamama;
  $row->estadocivil;
  $row->genero;
  $row->nacimiento;
  $row->nivelacademico_papa;
  $row->nivelacademico_mama;
  $row->tipodeinstitucion;
  $row->tipodevivienda;
  $row->region;
  $row->carrera;
  $row->tiempo_de_graduado;
  $row->id_ingresoeconomico;
  $row->calificatucarrera;
  $row->asignaturas_matriculadas;

  echo "

  <tr>
       <td>$row->identificacion</td>
      <td>$row->nombre </td>
      <td>$row->apellido</td>  
      <td>$row->email</td>  
      <td>$row->telefono </td>  
      <td>$row->direccion</td>    
      <td>$row->nacimiento </td>
      <td> $row->actividaddelpapa </td>    
      <td>$row->actividaddelamama </td>    
      <td> $row->estadocivil</td>   
      <td>$row->genero </td>   
      <td>$row->nivelacademico_papa </td>  
      <td> $row->nivelacademico_mama </td>  
      <td>$row->tipodeinstitucion </td>   
      <td>$row->tipodevivienda</td>   
      <td>$row->region</td>   
      <td>$row->carrera</td>   
      <td>$row->tiempo_de_graduado</td>   
      <td>$row->id_ingresoeconomico</td>   
      <td>$row->calificatucarrera</td>   
      <td>$row->asignaturas_matriculadas</td>   
      

                    </tr>

                    
  </tbody>
</table> "; } ?>
              </div>
            </div>
          </div>
          
        </div>
      

      
        

    
 



</body>

</html>
