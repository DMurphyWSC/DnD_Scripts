<#
    This script rolls the 6 Ability Scores for a set number of characters and writes them to a csv file.

    To set the number of characters rolled - change the value of $CharLimit.

    To change the output file name and path - change the value of $OutPutFile.

    <<<NOTE: The output file is overwritten each time the script is run unless you change the old file's name.>>> 
#>

$CharLimit = 3

$OutPutFile = "C:\Users\DavidM2\OneDrive - Wright Service Corp\Desktop\Study\Characters.csv"

#reset output file
Set-Content -Path $OutPutFile -Value "Character,Str,Dex,Con,Int,Wis,Cha,Total"

#the Get-StatRoll function rolls 4d6 and displays each roll (red=lowest) and returns the total of the best 3 rolls
function Get-StatRoll{
    #roll 4d6 (and yes, Maximum has to be 7 to return 6s, but Minimum of 1 returns 1s, don't ask me why... and it will never return 7)
    $roll1 = Get-Random -Minimum 1 -Maximum 7
    $roll2 = Get-Random -Minimum 1 -Maximum 7
    $roll3 = Get-Random -Minimum 1 -Maximum 7
    $roll4 = Get-Random -Minimum 1 -Maximum 7
    
    #put results into array
    $rolls = $roll1,$roll2,$roll3,$roll4
    
    #find total of all four rolls
    $sum = $rolls | Measure-Object -Sum | Select-Object Sum
    
    #find lowest roll
    $min = $rolls | Measure-Object -Minimum | Select-Object Minimum
    
    #get sum of three best rolls (by adding all four and subtracting lowest)
    $final = $sum.sum-$min.Minimum
    
    #write rolls to screen
    $count = 0
    $first = $true
    $rolls | ForEach-Object -Process {
        if($rolls[$count] -eq $min.Minimum)
        {
            if($first -eq $true)
            {
                Write-Host $rolls[$count] -ForegroundColor Red -NoNewline
                $first = $false
            }else{
                Write-Host $rolls[$count] -ForegroundColor Cyan -NoNewline
            }
        }else{
            Write-Host $rolls[$count] -ForegroundColor Cyan -NoNewline
        }
        $count++
        if($count -lt 4)
        {
            Write-Host "   " -NoNewline
        }
    }
    Write-Host ""
    return $final
}
    
#the Roll_Character function rolls all 6 stats for one character using the 4d6 method and writes to output file
function Roll_Character($CharNumber){
   #call Get-StatRoll for each stat
    $Str = Get-StatRoll
    Write-Host "Strength......$Str"
    
    $Dex = Get-StatRoll
    Write-Host "Dexterity.....$Dex"
    
    $Con = Get-StatRoll
    Write-Host "Constitution..$Con"
    
    $Int = Get-StatRoll
    Write-Host "Intelligence..$Int"
    
    $Wis = Get-StatRoll
    Write-Host "Wisdom........$Wis"
    
    $Cha = Get-StatRoll
    Write-Host "Charisma......$Cha"

    Write-Host "----------------"
    
    #added total of all stats 
    $Total = ($Str+$Dex+$Con+$Int+$Wis+$Cha)
    Write-Host "Total.........$Total"
    
    #Add rolls to output file
    Add-Content -Path $OutPutFile -Value "$CharNumber,$Str,$Dex,$Con,$Int,$Wis,$Cha,$Total"
}

#write x characters to output file (x = value of $CharLimit)
$character = 1
while($character -le $CharLimit)
{
    Write-Host "Character $character    " -ForegroundColor Blue -BackgroundColor White
    Roll_Character($character)
    Write-Host "----------------"
    Write-Host ""
    $character++
}

Write-Host "Output to file $OutPutFile"