cls
$produto = Read-Host "Dicionário do produto"
$convert = $produto | ConvertFrom-Json

switch -Regex ($convert.categoria) {
    "eletronico|eletrónico|eletrônico" {
        if ( $convert.preco -gt 1000 ) {
            Write-Host "Produto de luxo"
        }
        else {
            Write-Host "Produto comum"
        }
        break
    }
    "alimento" { Write-Host "Produto alimentar" }
    default { Write-Host "Categoria desconhecida" }
}

# {"categoria": "eletronico", "preco": 1200}