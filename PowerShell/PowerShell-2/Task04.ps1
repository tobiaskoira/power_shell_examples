#Create a script that takes two named parameters. 
#The first parameter is name of user, second how many times the script greets the user. 
#Give default values for parameters, 
#so if we run the script without arguments, it will say Hello unknown only once.
function hellouser 
{
    Param([string]$name, [int]$number)
    $a = @(1 .. $number)
    if ($name -eq '' -OR $number -eq '')  
    { Write-Host "Hello uknown "}  
    else {Write-Host $a.ForEach({"Hello " + $name})}
}

hellouser 
