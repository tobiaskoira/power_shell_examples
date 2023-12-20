$subjects = @("algebra", "history", "physics")
$subjects | ForEach-Object {$c += $_.Length}