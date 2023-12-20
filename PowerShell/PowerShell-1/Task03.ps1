#Ask two integers from user, and return addition, subtraction, multiplication and division of numbers.
$x= Read-Host "Give the first integer?"
$y= Read-Host "Give the second integer?"
$x=[int]$x
$y=[int]$y
$sum= $x+$y
$substraction=$x-$y
$multiplication=$x*$y
$division=$x/$y
Write-Host "Sum is $sum, substraction is $substraction, multiplication is $multiplication, division is $division"