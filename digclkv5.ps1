$digitArt = @{
    0 = @"
######
##  ##
##  ##
##  ##
######
"@
    1 = @"
    ##
    ##
    ##
    ##
    ##
"@
    2 = @"
######
    ##
######
##
######
"@
    3 = @"
######
    ##
######
    ##
######
"@
    4 = @"
##  ##
##  ##
######
    ##
    ##
"@
    5 = @"
######
##
######
    ##
######
"@
    6 = @"
######
##
######
##  ##
######
"@
    7 = @"
######
    ##
    ##
    ##
    ##
"@
    8 = @"
######
##  ##
######
##  ##
######
"@
    9 = @"
######
##  ##
######
    ##
    ##
"@
    ':' = @'
  
##

##
  
'@
}

function Show-DigitalClock {
    $color='yellow'
    $format='HH:mm' # HH:mm for 24 hour format, hh:mm for 12 hour format
    $dateformat='dddd, dd MMMM,yyyy' # date format
    $showdate=$true # $true to show date, $false to hide date

    
    while ($true) {
        $currentTime = Get-Date -Format $format
        $hour = [int]($currentTime -split ":")[0]
        $minute = [int]($currentTime -split ":")[1]

        $hourDigit1 = [int]([math]::Floor($hour / 10))
        $hourDigit2 = $hour % 10
        $minuteDigit1 = [int]([math]::Floor($minute / 10))
        $minuteDigit2 = $minute % 10

  
        $m2 = $($digitArt[$minuteDigit2]) -split "`r?`n"
        $m1 = $($digitArt[$minuteDigit1]) -split "`r?`n"
        $col = $($digitArt[':']) -split "`r?`n"
        $space = " " * ($col[0].Length)
        $h1 = $($digitArt[$hourDigit1]) -split "`r?`n"
        $h2 = $($digitArt[$hourDigit2]) -split "`r?`n"
        $maxLineLength = [Math]::Max([Math]::Max($h1[0].Length, $h2[0].Length), [Math]::Max($m1[0].Length, $m2[0].Length))

        Clear-Host

        for ($i = 0; $i -lt 5; $i++)
        {
            Write-Host ($h1[$i].PadRight($maxLineLength) + $space + $h2[$i].PadRight($maxLineLength) + $space + $col[$i].PadRight($maxLineLength-2)  + $m1[$i].PadRight($maxLineLength) + $space + $m2[$i].PadRight($maxLineLength)) -ForegroundColor $color
               }
        
        if($showdate) {write-host 
            write-host $space$space (get-date -format $dateformat) -ForegroundColor $color}
        Start-Sleep -Seconds 10
    }
}

Show-DigitalClock
