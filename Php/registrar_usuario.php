<?php
include "conexión.php";

if(isset($_POST["boton"])){
// Datos del formulario
$nombre = $_POST['nombre'] ?? '';
$apellido = $_POST['apellido'] ?? '';
$email = $_POST['email'] ?? '';
$telefono = $_POST['telefono'] ?? '';
$fecha_nacimiento = $_POST['fecha_nacimiento'] ?? '';
$clave = $_POST['clave'] ?? '';
$ciudad = $_POST['ciudad'] ?? '';
$direccion = $_POST['direccion'] ?? '';
}


mysqli_query($conn,"INSERT INTO usuario(nombre, apellido, email, telefono, fecha_nacimiento, clave, ciudad, dirección)
VALUES ('$nombre', '$apellido', '$email', '$telefono', '$fecha_nacimiento','$clave', '$ciudad', '$direccion')");

?>
