<?php
include "conexión.php";
session_start ();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de sesión</title>
    <link rel="stylesheet" href="">
</head>
<
<body>
<form method="post">
        Usuario: <input type="text" name="nombre" required>
        contraseña <input type="password" name="clave" required>

        <input type="submit" name="login" value="ingresar">
    </form> 
<?php  

if (isset($_POST['login'])) {
    $nombre = $_POST['nombre'];
    $clave = $_POST['clave'];

    $sql = "SELECT * FROM usuario WHERE nombre = ?";

    if ($row = $result->fetch_assoc()) {
        if ($clave == $row['clave']) {
            $_SESSION['id'] = $row['id'];
            $_SESSION['nombre'] = $row['nombre'] . " " . $row['apellidos'];
            header("Location: Mindbox.php");
            exit();
        } else {
            echo "<p style='color:red;'>Contraseña incorrecta.</p>";
        }
    } else {
        echo "<p style='color:red;'>Usuario no encontrado.</p>";
    }
}
?>
</body>

</html>