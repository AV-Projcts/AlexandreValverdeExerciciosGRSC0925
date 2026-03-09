cls
# While corre de 0 a X vezes

$i=0

while($i -le 5 -and $i -eq 0){
    Write-Host($i)
    if($i -eq 2){
        break
    }
$i++
}

Write-Host("i fora do loop",$i)