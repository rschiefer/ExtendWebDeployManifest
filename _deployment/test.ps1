$path = 'c:\temp\testingPostSync\'
if(!(Test-Path -Path $path )){
    New-Item -ItemType directory -Path $path
}

$date = Get-date
Write-Output "date=$date"
New-Item "$($path)$($date.year).$($date.month).$($date.day).$($date.hour).$($date.minute).$($date.second).txt" -type file