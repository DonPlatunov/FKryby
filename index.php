<?php

$conn = mysqli_connect("localhost", "root", "root", "ryby"); 
if (!$conn) {
    die("Błąd połączenia z bazą: " . mysqli_connect_error());
}
mysqli_set_charset($conn, "utf8mb4");


$sql = "SELECT id, nazwa FROM rybki ORDER BY nazwa ASC";
$result = mysqli_query($conn, $sql);

$rybki = [];
while ($row = mysqli_fetch_assoc($result)) {
    $rybki[] = $row;
}
?>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Atlas Wędkarski</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>

<header class="text-center text-white py-3 bg-primary">
    <h1>Atlas Wędkarski</h1>
</header>

<div class="container-fluid">
    <div class="row">

        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 bg-light p-3 sidebar">
    <div class="accordion" id="sidebarAccordion">

        <!-- Ryby -->
        <div class="accordion-item mb-2">
            <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#rybyCollapse">
                    🐟 Ryby
                </button>
            </h2>
            <div id="rybyCollapse" class="accordion-collapse collapse show">
    <div class="accordion-body p-0">
        <?php foreach ($rybki as $r): ?>
            <a href="#" class="d-block rybka-btn py-2 px-3" data-id="<?= $r['id'] ?>">
                 <?= htmlspecialchars($r['nazwa']) ?>
            </a>
        <?php endforeach; ?>
    </div>
</div>

        </div>

        <!-- Przynęty -->
        <div class="accordion-item mb-2">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#przynetyCollapse">
                    🎣 Przynęty
                </button>
            </h2>
            <div id="przynetyCollapse" class="accordion-collapse collapse">
                <div class="accordion-body">
                    <a href="#" class="d-block mb-2">Sztuczne</a>
                    <a href="#" class="d-block mb-2">Naturalne</a>
                </div>
            </div>
        </div>

        <!-- Zanęty -->
        <div class="accordion-item mb-2">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#zanetyCollapse">
                    🪣 Zanęty
                </button>
            </h2>
            <div id="zanetyCollapse" class="accordion-collapse collapse">
                <div class="accordion-body">
                    <a href="#" class="d-block mb-2">Zbożowe</a>
                    <a href="#" class="d-block mb-2">Białkowe</a>
                </div>
            </div>
        </div>

    </div>
</nav>


        <!-- Główna treść -->
        <main class="col-md-9 col-lg-10 p-4" id="rybka-content">
            <h3>Wybierz rybkę z lewej listy</h3>
        </main>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll(".rybka-btn").forEach(btn => {
        btn.addEventListener("click", () => {
            const id = btn.dataset.id;

            fetch("get_rybka.php?id=" + id)
                .then(r => r.json())
                .then(data => {
                    if (data.error) {
                        document.getElementById("rybka-content").innerHTML = "<p>Błąd: " + data.error + "</p>";
                        return;
                    }

                    let html = `
                        <h2>${data.rybka.nazwa}</h2>
                        ${data.rybka.zdjecie ? `<img src="${data.rybka.zdjecie}" style="max-width:300px;border-radius:10px;">` : ''}
                        <p class="mt-3">${data.rybka.opis || ''}</p>

                        <h4 class="mt-4">Przynęty</h4>
                        <ul>
                            ${data.przynety.map(p => `<li><b>${p.nazwa}</b>: ${p.opis || ''}</li>`).join("")}
                        </ul>

                        <h4 class="mt-4">Zanęty</h4>
                        <ul>
                            ${data.zanety.map(z => `<li><b>${z.nazwa}</b>: ${z.opis || ''}</li>`).join("")}
                        </ul>
                    `;

                    document.getElementById("rybka-content").innerHTML = html;
                })
                .catch(err => {
                    document.getElementById("rybka-content").innerHTML = "<p>Błąd połączenia: " + err + "</p>";
                });
        });
    });
});
</script>

</body>
</html>
