<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Moje Miejscówki - Atlas Wędkarski</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        #map { height: 600px; width: 100%; border-radius: 15px; shadow: 0 4px 8px rgba(0,0,0,0.2); }
        .sidebar-map { background: #f8f9fa; padding: 20px; height: 600px; overflow-y: auto; }
    </style>
</head>
<body>
    <div class="container mt-4">
        <div class="row">
            <div class="col-12 mb-3 d-flex justify-content-between align-items-center">
                <h2>📍 Twoje Ulubione Miejscówki</h2>
                <a href="index.php" class="btn btn-outline-primary">Powrót do Atlasu</a>
            </div>
        </div>
        
        <div class="row">
            <div class="col-md-9">
                <div id="map"></div>
            </div>
            <div class="col-md-3 sidebar-map">
                <h5>Lista Miejscówek</h5>
                <hr>
                <div id="miejscowki-lista" class="list-group">
                    </div>
            </div>
        </div>
    </div>

    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script>
        // Inicjalizacja mapy (ustawiona na Polskę)
        const map = L.map('map').setView([52.23, 21.01], 6);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap contributors'
        }).addTo(map);

        // Funkcja wczytująca miejscówki
        function wczytajMiejscowki() {
            fetch('save_location.php?action=list')
                .then(r => r.json())
                .then(data => {
                    const lista = document.getElementById('miejscowki-lista');
                    lista.innerHTML = '';
                    
                    data.forEach(m => {
                        // Dodaj marker na mapę
                        L.marker([m.lat, m.lng]).addTo(map)
                            .bindPopup(`<b>${m.nazwa}</b><br>${m.opis}`);

                        // Dodaj do listy bocznej
                        const item = document.createElement('div');
                        item.className = 'list-group-item';
                        item.innerHTML = `<h6>${m.nazwa}</h6><small>${m.opis}</small>`;
                        item.style.cursor = 'pointer';
                        item.onclick = () => map.setView([m.lat, m.lng], 12);
                        lista.appendChild(item);
                    });
                });
        }

        // Obsługa kliknięcia w mapę (dodawanie nowej)
        map.on('click', function(e) {
            const nazwa = prompt("Podaj nazwę miejscówki:");
            if (!nazwa) return;
            const opis = prompt("Co tu bierze? (krótki opis):");

            const nowaMiejscowka = {
                lat: e.latlng.lat,
                lng: e.latlng.lng,
                nazwa: nazwa,
                opis: opis || "Brak opisu"
            };

            // Wyślij do PHP żeby zapisał w JSON
            fetch('save_location.php?action=save', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(nowaMiejscowka)
            }).then(() => {
                wczytajMiejscowki(); // Odśwież listę i mapę
            });
        });

        // Wczytaj na start
        wczytajMiejscowki();
    </script>
</body>
</html>