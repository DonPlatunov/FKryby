<?php
$conn = mysqli_connect("localhost", "root", "root", "ryby");
if (!$conn) {
  die("Błąd połączenia z bazą: " . mysqli_connect_error());
}
mysqli_set_charset($conn, "utf8mb4");

// Pobieranie wszystkiego do menu bocznego
$rybki = mysqli_fetch_all(mysqli_query($conn, "SELECT id, nazwa FROM rybki ORDER BY nazwa ASC"), MYSQLI_ASSOC);
$przynety = mysqli_fetch_all(mysqli_query($conn, "SELECT id, nazwa FROM przynety ORDER BY nazwa ASC"), MYSQLI_ASSOC);
$zanety = mysqli_fetch_all(mysqli_query($conn, "SELECT id, nazwa FROM zanety ORDER BY nazwa ASC"), MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <title>Atlas Wędkarski</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .sidebar { height: 100vh; overflow-y: auto; border-right: 1px solid #ddd; }
    .fetch-item { cursor: pointer; display: block; padding: 5px 15px; text-decoration: none; color: #333; }
    .fetch-item:hover { background-color: #e9ecef; color: #007bff; }
    .accordion-body { padding: 0 !important; }
  </style>
</head>
<body>
  <header class="text-center text-white py-3 bg-primary"><h1>Atlas Wędkarski</h1></header>

  <div class="container-fluid">
    <div class="row">
      <nav class="col-md-3 col-lg-2 bg-light sidebar p-0">
        <div class="accordion accordion-flush" id="sidebarAccordion">

          <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#c1">🐟 Ryby</button></h2>
            <div id="c1" class="accordion-collapse collapse show">
              <div class="accordion-body">
                <?php foreach ($rybki as $r): ?>
                  <a class="fetch-item" data-type="rybka" data-id="<?= $r['id'] ?>"><?= htmlspecialchars($r['nazwa']) ?></a>
                <?php endforeach; ?>
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#c2">🎣 Przynęty</button></h2>
            <div id="c2" class="accordion-collapse collapse">
              <div class="accordion-body">
                <?php foreach ($przynety as $p): ?>
                  <a class="fetch-item" data-type="przyneta" data-id="<?= $p['id'] ?>"><?= htmlspecialchars($p['nazwa']) ?></a>
                <?php endforeach; ?>
              </div>
            </div>
          </div>

          <div class="accordion-item">
            <h2 class="accordion-header"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#c3">🪣 Zanęty</button></h2>
            <div id="c3" class="accordion-collapse collapse">
              <div class="accordion-body">
                <?php foreach ($zanety as $z): ?>
                  <a class="fetch-item" data-type="zaneta" data-id="<?= $z['id'] ?>"><?= htmlspecialchars($z['nazwa']) ?></a>
                <?php endforeach; ?>
              </div>
            </div>
          </div>

        </div>
      </nav>

      <main class="col-md-9 col-lg-10 p-4" id="main-content">
        <h3>Wybierz coś z listy po lewej</h3>
      </main>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    // Funkcja ładująca detale (używamy jej wielokrotnie)
    function loadDetails(type, id) {
    fetch(`get_details.php?type=${type}&id=${id}`)
        .then(r => r.json())
        .then(data => {
            if(data.error) return;

            // USTALANIE ŚCIEŻKI DO FOLDERU - poprawione pod Twój układ
            let folder = "";
            switch(type) {
                case 'rybka':   
                    folder = "pictures"; // Ryby masz w pictures
                    break;
                case 'przyneta': 
                    folder = "Przynęty"; // Przynęty w Przynęty
                    break;
                case 'zaneta':   
                    folder = "Zanęty";   // Zanęty w Zanęty
                    break;
            }
            
            let html = `
                <h2>${data.item.nazwa}</h2>
                <div class="row mt-4">
                    <div class="col-md-5">
                        <img src="${folder}/${data.item.zdjecie}" class="img-fluid rounded shadow" onerror="this.src='https://via.placeholder.com/400x300?text=Brak+pliku+w+${folder}'">
                    </div>
                    <div class="col-md-7">
                        <h4>Opis:</h4>
                        <p>${data.item.opis.replace(/\n/g, '<br>')}</p>
                    </div>
                </div>
            `;

            if(type === 'rybka') {
                html += `<div class="row mt-4">
                    <div class="col-md-6">
                        <h5>Lubiane przynęty:</h5>
                        <div class="list-group">
                            ${data.przynety.map(p => `<a class="list-group-item list-group-item-action sub-link" data-type="przyneta" data-id="${p.id}">${p.nazwa}</a>`).join('')}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h5>Lubiane zanęty:</h5>
                        <div class="list-group">
                            ${data.zanety.map(z => `<a class="list-group-item list-group-item-action sub-link" data-type="zaneta" data-id="${z.id}">${z.nazwa}</a>`).join('')}
                        </div>
                    </div>
                </div>`;
            }

            document.getElementById("main-content").innerHTML = html;

            document.querySelectorAll(".sub-link").forEach(link => {
                link.addEventListener("click", () => loadDetails(link.dataset.type, link.dataset.id));
            });
        });
}

    // Obsługa kliknięć w menu boczne
    document.addEventListener("click", (e) => {
        if(e.target.classList.contains('fetch-item')) {
            loadDetails(e.target.dataset.type, e.target.dataset.id);
        }
    });
  </script>
</body>
</html>