cls
$operacao = Read-Host "Escolhe uma operação ( 1 - Somar | 2 - Subrair | 3 - Multiplicar | 4 - Dividir)"
$num1 = [double](Read-Host "Insere o 1o Número")
$num2 = [double](Read-Host "Insere o 2o Número")

switch -Regex ($operacao) {
    
    "1|soma|somar" {
    $total = $num1 + $num2
    Write-Host $total
    break
    }

    "2|subtrai|subtrair" {
    $total = $num1 - $num2
    Write-Host $total
    break
    }

    "3|multiplica|multiplicar" {
    $total = $num1 * $num2
    Write-Host $total
    break
    }

    "4|divide|dividir" {
    $total = $num1 / $num2
    Write-Host $total
    break
    }

    default { Write-Host "Operação inválida" }
}