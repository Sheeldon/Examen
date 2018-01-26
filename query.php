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
	
	public function get_book()
	{
		@$q=$_REQUEST["q"];
		
		$result = $this->_db->query("SELECT * FROM libro where autor LIKE '%".$q."%' OR calificacion LIKE '".$q."%'");
		return $result->fetch_all(MYSQLI_ASSOC);
	}
}

$busqueda = new busqueda();
$array = $busqueda->get_book();

?>

<?php foreach($array as $row): ?>
	
	<?php $id = $row['id_libro'];?>

		<div class="listalibro" >
				<a  href="descripcion_libro.php?book_id=<?php echo $id; ?>"><br>
					<h4><p class="titulo"><?php echo $row['nombre_libro']; ?></p></h4>
					<p class="calif"><?php echo $row['autor']; echo "<br>";echo "Calificación: ".$row['calificacion']; ?>
					</p>
				</a>	
			<hr>
		</div>
			
<?php endforeach;?>