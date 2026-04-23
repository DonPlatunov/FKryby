<?php
$file = 'miejscowki.json';

// Jeśli plik nie istnieje, stwórz pustą tablicę
if (!file_exists($file)) {
    file_put_contents($file, json_encode([]));
}

$action = $_GET['action'] ?? '';

if ($action === 'list') {
    // Zwróć zawartość pliku
    echo file_get_contents($file);
} 
elseif ($action === 'save') {
    // Pobierz dane z POST
    $input = json_decode(file_get_contents('php://input'), true);
    
    // Pobierz obecne dane
    $current_data = json_decode(file_get_contents($file), true);
    
    // Dodaj nową miejscówkę
    $current_data[] = $input;
    
    // Zapisz z powrotem
    file_put_contents($file, json_encode($current_data, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
    
    echo json_encode(['status' => 'ok']);
}