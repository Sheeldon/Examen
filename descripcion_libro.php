<?php 

class conexion{
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
		//	echo "exito:";
			return;
		}
	}
}
	
class busqueda extends conexion
{
	public function __construct()
	{
		parent::__construct();
	}

	public function get_info()
	{
		$result = $this->_db->query("SELECT id_libro, nombre_libro, autor, calificacion FROM libro where id_libro='".$pklibro = $_REQUEST['book_id']."'");
		$libro =$result->fetch_all(MYSQLI_ASSOC);
		return $libro;
	}
}
$busqueda = new busqueda();
$show_book = $busqueda->get_info();


foreach($show_book as $row):
	
 ?>
 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<link href='book.png' rel='shortcut icon' type='image/png'/>

	<title>Libro: <?php echo $row['nombre_libro'];  ?></title>
	<meta name="viewport" content="width-device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0">  
	<link rel="stylesheet" type="text/css" href="Bootstrap/css/bootstrap.min.css"> 
	<link rel="stylesheet" type="text/css" href="Bootstrap/css/css.css">
</head>

<body>
<div class="container">
	<div class="page-header">
		  <center><h2><?php echo $row['nombre_libro'];?></h2></center>
	</div>
		  
		  Autor:<?php echo $row['autor']; ?>
		  <p class="medium">Calificacion: <?php echo $row['calificacion']; 
endforeach
		 ?></p>
		 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio sunt officiis, deserunt, itaque cupiditate doloribus modi laudantium placeat veritatis laboriosam debitis unde eaque. Perferendis ad, nostrum, eum beatae id nulla?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores quas unde perferendis eos, omnis tempora inventore eligendi et facilis sed saepe, nostrum accusantium dignissimos recusandae. Magni id aperiam laborum voluptatem!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Natus doloremque illo molestias suscipit, laudantium quae inventore dolorem optio magnam tenetur quibusdam nemo quo adipisci perferendis deserunt sapiente quis alias voluptatem?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis quo, et provident perspiciatis, a rerum aliquid perferendis ea nam enim laborum quasi eaque earum blanditiis quos ut officia sunt. Sunt!</p>

	<div class="container">
	<center><a href="index.php"><button type="button" class="btn btn-default  btn-lg">Home</button></a></center>
	</div>
</div>

</body>
</html>