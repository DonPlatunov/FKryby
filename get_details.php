<?php
header('Content-Type: application/json');
$conn = mysqli_connect("localhost", "root", "root", "ryby");
mysqli_set_charset($conn, "utf8mb4");

$type = $_GET['type'] ?? '';
$id = (int)($_GET['id'] ?? 0);

$response = [];

if ($type === 'rybka') {
    $res = mysqli_query($conn, "SELECT * FROM rybki WHERE id = $id");
    $response['item'] = mysqli_fetch_assoc($res);

    // Pobieramy nazwy ORAZ id przynęt
    $res_p = mysqli_query($conn, "SELECT p.id, p.nazwa FROM przynety p JOIN ryby_przynety rp ON p.id = rp.przyneta_id WHERE rp.rybka_id = $id");
    $response['przynety'] = mysqli_fetch_all($res_p, MYSQLI_ASSOC);

    // Pobieramy nazwy ORAZ id zanęt
    $res_z = mysqli_query($conn, "SELECT z.id, z.nazwa FROM zanety z JOIN ryby_zanety rz ON z.id = rz.zaneta_id WHERE rz.rybka_id = $id");
    $response['zanety'] = mysqli_fetch_all($res_z, MYSQLI_ASSOC);
} else {
    // Dla przynęt i zanęt
    $table = ($type === 'przyneta') ? 'przynety' : 'zanety';
    $res = mysqli_query($conn, "SELECT * FROM $table WHERE id = $id");
    $response['item'] = mysqli_fetch_assoc($res);
}

echo json_encode($response);