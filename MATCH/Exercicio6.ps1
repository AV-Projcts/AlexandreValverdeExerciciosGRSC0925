cls
$centos = Read-Host "O server tá fixe?"
$convert = $centos | ConvertFrom-Json

switch ($convert.status) {
    "ok" {
        if ( $convert.tempo_resposta -gt 200 ) {
            Write-Host "Servidor lento"
        }
        else {
            Write-Host "Servidor ativo"
        }
        break
    }
    "erro" { Write-Host "Servidor indiponível" }
    default { Write-Host "Estado desconhecido" }
}

# {"status": "ok", "tempo_resposta": 200}