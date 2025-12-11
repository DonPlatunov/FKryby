<?php
header('Content-Type: application/json; charset=utf-8');


$conn = mysqli_connect("localhost", "root", "root", "ryby"); 

if (!$conn) {
    echo json_encode(["error" => "Błąd połączenia z bazą"]);
    exit;
}

mysqli_set_charset($conn, "utf8mb4");


$id = isset($_GET['id']) ? intval($_GET['id']) : 0;
if ($id <= 0) {
    echo json_encode(["error" => "Nieprawidłowe ID"]);
    exit;
}


$sql = "SELECT * FROM rybki WHERE id = $id";
$result = mysqli_query($conn, $sql);
$rybka = mysqli_fetch_assoc($result);

if (!$rybka) {
    echo json_encode(["error" => "Brak rybki"]);
    exit;
}


$sql = "
    SELECT p.*
    FROM przynety p
    JOIN ryby_przynety rp ON p.id = rp.przyneta_id
    WHERE rp.rybka_id = $id
";
$result = mysqli_query($conn, $sql);
$przynety = [];
while ($row = mysqli_fetch_assoc($result)) {
    $przynety[] = $row;
}


$sql = "
    SELECT z.*
    FROM zanety z
    JOIN ryby_zanety rz ON z.id = rz.zaneta_id
    WHERE rz.rybka_id = $id
";
$result = mysqli_query($conn, $sql);
$zanety = [];
while ($row = mysqli_fetch_assoc($result)) {
    $zanety[] = $row;
}


echo json_encode([
    "rybka" => $rybka,
    "przynety" => $przynety,
    "zanety" => $zanety
]);
exit;
?>
