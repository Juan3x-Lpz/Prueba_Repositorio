//Guardar productos
<?php
$productos = $_POST['productos'] ?? [];
if ($productos && is_array($productos)) {
    $sqlProd = $conn->query ("INSERT INTO compras (comprador_id, productos, cantidad, precio) VALUES (comprador_id, productos, cantidad, precio)");
    $stmtProd = $conn->prepare($sqlProd);
    foreach ($productos as $p) {
        $stmtProd->bind_param("isid", $id_comprador, $p['productos'], $p['cantidad'], $p['precio']);
        $stmtProd->execute();
    }
    $stmtProd->close();
}

$conn->close();

// Vaciar carrito
echo "<script>localStorage.removeItem('carrito');</script>";

if($sql){
header("Location: final.html");
}

?>