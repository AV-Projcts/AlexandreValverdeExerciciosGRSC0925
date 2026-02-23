cls
$nota = Read-Host "Insira uma nota (Excelente, Bom, Suficiente, Insuficiente)"

switch ($nota) {
    "excelente" { Write-Host "90 ou mais" }
    "bom" {Write-Host "70-89" }
    "suficiente" {Write-Host "50-69"}
    "insuficiente" {Write-Host "Abaixo de 50"}
}