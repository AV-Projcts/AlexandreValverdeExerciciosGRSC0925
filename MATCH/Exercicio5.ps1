cls
$socializar = Read-Host "Como é que tamos?"

switch -Regex ($socializar) {
    "ola|olá|bom dia" { Write-Host "Saudação"; break }
    "\?" { Write-Host "Pergunta"; break }
    { $socializar -match 'tchau|adeus' } { Write-Host "Despedida"; break }
    default { Write-Host "Mensagem genérica" }
}