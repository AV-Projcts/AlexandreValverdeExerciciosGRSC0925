cls
# Sintax For
#for($i=1;$i -le 5;$i++){
#    Write-Host($i)
#}

# Sintax Foreach

$arquivos= Get-ChildItem

Write-Host($arquivos.Count)
Write-Host($arquivos.name)

for($i=0;$i -lt $arquivos.Count;$i++){
    Write-Host($arquivos[$i].Name)
}
foreach ( $arquivo in $arquivos ) {
    Write-Host($arquivo.Name)
}