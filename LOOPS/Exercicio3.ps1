cls
$i=1
$total=0
$alunos=10

do{$read=Read-Host "`nInsira a nota do aluno",$i;$total= ($total + $read); $i++}
while($i -le $alunos)

write-host("A média dos",$alunos,"alunos é",($total/$alunos))