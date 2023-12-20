#Create a script that simulates pinging a remote server. 
#It takes two named parameters. 
#The first parameter is IP-address of a server, second how many times the ping is tried. 
#The script also ask the permission to make ping with. Pings are made only if a user says Yes.
#Give default values for parameters, so if the script will be run without arguments, 
#it will try to ping 192.168.1.1 only once. Because ping is blocked in labranet, we simulate only pinging.
function pinging {
    Param([int]$address, [int]$time)

    $input = Read-Host "I will try to ping $address $time time, okay?  
    [Y/n]"

    if ($address -eq '' -OR $time -eq '' -AND $input -eq "Y"){
        Write-Output "try 1 to ping:192.168.1.1"
    }
    elseif ($input -eq "Y") {

    
    for ($i = 1; $i -lt $time; $i++) 
        {
        Write-Output "try $i to ping: $address"
        }
    
    }
    
    else {Write-Host "You are not allowed to ping"}
}

pinging 

