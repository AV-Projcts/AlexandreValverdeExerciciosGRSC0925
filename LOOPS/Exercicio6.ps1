cls
$encontrados = 0
$numero = 2

# Obrigado gemini
do {
    $primo = 1
    for ($i = 2; $i -lt $numero; $i++) {
        if ($numero % $i -eq 0) {$primo=0; break}
    }
    # Faz print do número se for primo
    if ($primo -eq 1) {Write-Host $numero; $encontrados++}
    $numero++

} while ($encontrados -lt 10)