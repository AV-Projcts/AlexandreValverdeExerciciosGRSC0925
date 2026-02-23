cls
$pedido = Read-Host "Insere o dicionário do pedido"

$convert = $pedido | ConvertFrom-Json

# Write-Output "$($convert.tipo) $($convert.valor)"
switch ($convert.tipo) {
    "venda" {Write-Output "Venda de $($convert.valor)€" }
    "compra" {Write-Output "Compra de $($convert.valor)€" }
    default {Write-Output "Tipo: '$($convert.tipo)' não reconhecido"}
}