cls
$dia = Read-Host "Qual é o dia da semana?"


switch -Regex ($dia) {
    "segunda|terca|terça|quarta|quinta|sexta" { Write-Output "Dia útil" }
    "sabado|sábado|domingo" { Write-Output "Fim de semana" }
}