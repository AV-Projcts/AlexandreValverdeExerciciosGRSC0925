cls
$requisitar = Read-Host "Insere o dicionário de requisição"
$convert = $requisitar | ConvertFrom-Json

switch ($convert.metodo) {
    
    "post" {
        # O .Trim() corta os espaços acidentais entre os ""
        if ( $convert.conteudo.Trim() -ne "" ) {
            Write-Host "Requisição POST com dados válidos"
        }
        else {
            Write-Host "Requisição POST sem dados"
        }
        break
    }
    
    "get" { Write-Host "Requisição GET recebida" }

    default { Write-Host "Método não suportado" }
}

# {"metodo": "post", "conteudo": ""}