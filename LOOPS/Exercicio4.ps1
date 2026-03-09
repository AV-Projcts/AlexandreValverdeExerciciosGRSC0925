cls
$i=0
$primo=1
$numero=1

do{
    [int]$numero=Read-Host "Insira o número"
    # 0 e 1 não podem ser primos
    if ($numero -lt 2) {$primo=0; break}
    else {
        # Iterar cada numero de 2 até ao inserido pelo user
        for ($i = 2; $i -lt $numero; $i++) {
            # Se o resto for zero, o número não é primo
            Write-Host $i
            if ($numero % $i -eq 0) {$primo=0; break}
        }
    break
    }
} while($True)

if ($primo -ge 1){Write-Host "! O número é primo"}
else {Write-Host "! O número não é primo"}