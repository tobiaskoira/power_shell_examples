#Create an array named $names, that includes seven (7) names. 
#You can select the names, they can be your friends or comic characters. 
#Create a script that show how many items is in the array, shows the items 
#and so also the first and last name of the array.
$names = "Dina", "Markus" ,"Reino", "Anya", "Elias", "Konsta", "Kyosti"
$itemNumber =$names.Length
$firstItem=$names | Select-Object -first 1
$lastItem=$names | Select-Object -last 1
Write-Host "Items in array: $itemNumber, 
they are: $names, 
first in the list is: $firstItem, 
last in the list is: $lastItem."