<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Crear cuenta</title>
</head>
<body>
<h1>Crear cuenta</h1>

<form id="formUsuario" action="registrar_usuario.php" method="POST">
  <label>Nombre: <input type="text" name="nombre" required></label><br>
  <label>Apellido: <input type="text" name="apellido" required></label><br>
  <label>Email: <input type="email" name="email" required></label><br>
  <label>Teléfono: <input type="text" name="telefono" required></label><br>
  <label>Fecha de nacimiento: <input type="date" name="fecha_nacimiento" required></label><br>
  <label>contrasenya: <input type="password" name="clave" required minlength="6"></input></label><br>
  <label>Ciudad: <input type="text" name="ciudad" required></label><br>
  <label>Dirección: <input type="text" name="direccion" required></label><br>

  <!-- Productos ocultos -->
  <div id="productosHidden"></div>

  <button type="submit" name="boton">Registrarse</button>

</form>
<script>
const form = document.getElementById('formUsuario');

form.addEventListener('submit', function(e) {
    const carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    const contenedor = document.getElementById('productosHidden');
    contenedor.innerHTML = '';

    carrito.forEach((item, index) => {
        contenedor.innerHTML += `
            <input type="hidden" name="productos[${index}][producto]" value="${item.producto}">
            <input type="hidden" name="productos[${index}][cantidad]" value="${item.cantidad}">
            <input type="hidden" name="productos[${index}][precio]" value="${item.precio}">
        `;
    });
});
<?php
  include "conexión.php";

if(isset($_POST["boton"])){
$nombre = $_POST['nombre'] ?? '';
$apellido = $_POST['apellido'] ?? '';
$email = $_POST['email'] ?? '';
$telefono = $_POST['telefono'] ?? '';
$fecha_nacimiento = $_POST['fecha_nacimiento'] ?? '';
$clave = $_POST['clave'] ?? '';
$ciudad = $_POST['ciudad'] ?? '';
$direccion = $_POST['direccion'] ?? '';
}

mysqli_query($conn,"INSERT INTO compradores(nombre, apellido, email, telefono, fecha_nacimiento, clave, ciudad, dirección)
VALUES ('$nombre', '$apellido', '$email', '$telefono', '$fecha_nacimiento', '$clave','$ciudad', '$direccion')");

?>
</script>
</body>
</html>
