<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='book.png' rel='shortcut icon' type='image/png'/>
  <title>Importar Libros</title>
  <meta name="viewport" content="width-device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">  
  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"> 
</head>
<body>

<?php
  #conectare la base de datos
    $con=@mysqli_connect("localhost", "root", "", "examen");
    if(!$con){
        die("Error: ".mysqli_error($con));
    }
    if (@mysqli_connect_errno()) {
        die("Connect failed: ".mysqli_connect_errno()." : ". mysqli_connect_error());
    }
  
  $Libros = fopen ("lista-libros.csv" , "r" );
while (($datos =fgetcsv($Libros,1000,",")) !== FALSE )
{
 $linea[]=array('nombre_libro'=>$datos[0],'autor'=>$datos[1],'calificacion'=>$datos[2]);
}
fclose ($Libros);
  $ingresado=0;
  $error=0;
  $duplicado=0;
    foreach($linea as $indice=>$value)
  {
  $nombre_libro=$value["nombre_libro"];
  $autor=$value["autor"];
  $calificacion=$value["calificacion"];
 
  
  $sql=mysqli_query($con,"select * from libro where nombre_libro='$nombre_libro'");
  $num=mysqli_num_rows($sql);
  if ($num==0)
  {
  if ($insert=mysqli_query($con,"insert into libro (nombre_libro, autor, calificacion) values ('".$nombre_libro."','".$autor."','".$calificacion."')"))
  {
  echo $msj='<font color=green>El Libro <b>'.$autor.'</b> Se Ha Guardado Correctamente <br></font><br/>';
  $ingresado+=1;
  }
  else
  {
  echo $msj='<font color=red>El Libro <b>'.$nombre_libro.' </b> No Pudo Ser Guardado '.mysqli_error().'</font><br/>';
  $error+=1;
  }
  }
  else
  {
  $duplicado+=1;
  echo $duplicate='<font color=red>El libro <b>'.$nombre_libro.'</b> Ya Existe<br></font>';
  }
  }
  echo "<br/>";
  echo "<font color=green>".number_format($ingresado,2)." Libros Guardados<br/>";
  echo "<font color=red>".number_format($duplicado,2)." Libros Duplicados<br/>";
  echo "<font color=red>".number_format($error,2)." Errores de almacenamiento<br/>";
  ?>
</body>
</html>