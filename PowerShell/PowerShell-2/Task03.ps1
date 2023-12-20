#Create a script that takes three parameters. The parameters are strings. 
#The script order the given strings by string length. 
#Test your script at least with four different test runs, like in the picture.
function testing {
    Param([string]$first, [string]$second, [string]$third)
    $subjects = $first, $second, $third
    $Sortedsubjects = $subjects | Sort-Object Length
Write-Host Parameters are: $subjects and they are sorted as $Sortedsubjects
}
testing -first yellow -second blue -third white