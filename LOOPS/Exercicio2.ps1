cls
$i=0

do{
    $read=Read-Host "`nInsira um número"
    if($read %2 -eq 0) {Write-Host "Número par"}
    else {Write-Host "Número impar"}
    $i++
}
while($i -lt 10)