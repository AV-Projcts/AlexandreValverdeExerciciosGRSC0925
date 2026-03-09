cls
$numeros=30
$i=1

# Números pares
Write-Host "! Números pares:"
do{
    if($i % 2 -eq 0) {Write-Host($i)}
    else {}
    $i++
}
while($i -le $numeros)

$i=1
# Números impares
Write-Host "`n`n! Números impares:"
do{
    if($i % 2 -eq 1) {Write-Host($i)}
    else {}
    $i++
}
while($i -le $numeros)