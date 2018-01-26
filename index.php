<?php

class modelo
{
	protected $_db;

	public function __construct()
	{
		$this ->_db = new mysqli("localhost", "root", "", "examen");
		if($this ->_db->connect_errno)
		{
			echo "Error en la conexión:". $this->_db->connect_errno;
			return;
		}

		$this->_db->set_charset("utf-8");
		if($this ->_db)
		{
		//	echo " Conexion exitosa";
			return;
		}
	}
}

class book extends modelo
{
	public function __construct()
	{
		parent::__construct();
	}

	public function get_info()
	{
		$result = $this->_db->query("SELECT id_libro, nombre_libro, autor, calificacion FROM libro");
		$book =$result->fetch_all(MYSQLI_ASSOC);
		if($book){
			return $book;
			
		}else{
		echo "Error ";
	}
	}
}

$book = new book();
$show_book = $book->get_info();									
 
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<title>Libros</title>
	<meta name="viewport" content="width-device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">  
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"> 
	<link rel="stylesheet" type="text/css" href="bootstrap/css/style.css">
</head>
<body>


<div class="container-fluid">

	<div class="row">
		<div class="col-xs-12  col-lg-3 buscador">
			<center> 
				<h4><span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				<strong>Buscar Libro: </strong>
				<input type="text" id="search" name="bus" class="form-control cajat" style="text-align: center;" placeholder="Calificación o Autor" onkeyup="loadXMLDoc()" required />
				</h4>
				<hr>	
					<div id="contenedor">
						<!--Resultados-->
					</div>
			</center>						
		</div>


		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9 col-lg-offset-3" id="mostrar">
				<section  class="row"> 

						<?php
							if ($show_book){
							foreach($show_book as $row):
							$id= $row['id_libro'];
						 ?>
						<div class="clearfix visible-sm-block"></div>
							<div class="col-xs-12 col-lg-4 lista">	
								<br>
								<a class="thumbnail desc" href="descripcion_libro.php?book_id=<?php echo $id; ?>" >
									<center><p class="lead"><strong class="titulo"> <?php echo $row['nombre_libro'];  ?></strong></center>
									<br>
										<center><p class="calif">Autor: <?php echo $row['autor']; echo "<br>"; ?>Calificacion: <?php echo $row['calificacion']; ?> </p> </center>				
								</a>
							</div>
							
						<?php 
							endforeach;
						?>
				</section>
		</div>

	</div>

<?php 

}
else
{

 ?> 
<br/>
 <div class="container-fluid panel">
  <div class="well well-lg">
   No Hay Registro que Mostrar
  </div>
</div>
</div>
<?php  

}

?>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

</body>
</html>