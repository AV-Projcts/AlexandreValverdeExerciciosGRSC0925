cls
$tipo = Read-Host "Insira um valor"

switch ($tipo) {
    
    { $tipo.StartsWith("[") -and $tipo.EndsWith("]") } { Write-Host "Lista"; break }

    { $tipo -match "^\d+$" } { Write-Host "String numérica"; break }
    
    { $tipo.Contains(".") -and ($null -ne ($tipo -as [double])) } { Write-Host "Número decimal"; break }
    
    { (-not $tipo.Contains(".")) -and ($null -ne ($tipo -as [int]))} { Write-Host "Número Inteiro"; break }
    
    { $tipo -notmatch "\d" } { Write-Host "String textual"; break }
    
    default { Write-Host "Tipo desconhecido" }
}