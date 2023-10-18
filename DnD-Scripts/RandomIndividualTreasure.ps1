function RandomIndividualTreasure([int]$cr){
    
    #CR 0-4
    if($cr -lt 5){
        $d100 = RollDice 1 100
 
        switch ($true){
            ($d100 -le 30){
                $coins = RollDice 5 6
                Write-Host "Copper - $coins"
            }
            ($d100 -ge 31 -and $d100 -le 60){
                $coins = RollDice 4 6
                Write-Host "Silver - $coins"
            }
            ($d100 -ge 61 -and $d100 -le 70){
                $coins = RollDice 3 6
                Write-Host "Electrum - $coins"
            }
            ($d100 -ge 71 -and $d100 -le 95){
                $coins = RollDice 3 6
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 96){
                $coins = RollDice 1 6
                Write-Host "Platinum - $coins"
            }
        }
    }

    #CR 5-10
    if($cr -ge 5 -and $cr -lt 11){
        $d100 = RollDice 1 100
 
        switch ($true){
            ($d100 -le 30){
                $coins = (RollDice 4 6) * 100
                Write-Host "Copper - $coins"
                $coins = (RollDice 1 6) * 10
                Write-Host "Electrum - $coins"
            }
            ($d100 -ge 31 -and $d100 -le 60){
                $coins = (RollDice 6 6) * 10
                Write-Host "Silver - $coins"
                $coins = (RollDice 2 6) * 10
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 61 -and $d100 -le 70){
                $coins = (RollDice 3 6) * 10
                Write-Host "Electrum - $coins"
                $coins = (RollDice 2 6) * 10
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 71 -and $d100 -le 95){
                $coins = (RollDice 4 6) * 10
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 96){
                $coins = (RollDice 2 6) * 10
                Write-Host "Gold - $coins"
                $coins = RollDice 3 6
                Write-Host "Platinum - $coins"
            }
        }
    }

    #CR 11-16
    if($cr -ge 11 -and $cr -lt 17){
        $d100 = RollDice 1 100
 
        switch ($true){
            ($d100 -le 20){
                $coins = (RollDice 4 6) * 100
                Write-Host "Silver - $coins"
                $coins = (RollDice 1 6) * 100
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 21 -and $d100 -le 35){
                $coins = (RollDice 1 6) * 100
                Write-Host "Electrum - $coins"
                $coins = (RollDice 1 6) * 100
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 36 -and $d100 -le 75){
                $coins = (RollDice 2 6) * 100
                Write-Host "Gold - $coins"
                $coins = (RollDice 1 6) * 10
                Write-Host "Platinum - $coins"
            }
            ($d100 -ge 76){
                $coins = (RollDice 2 6) * 100
                Write-Host "Gold - $coins"
                $coins = (RollDice 2 6) * 10
                Write-Host "Platinum - $coins"
            }
        }
    }

    #CR 17+
    if($cr -ge 17){
        $d100 = RollDice 1 100
 
        switch ($true){
            ($d100 -le 15){
                $coins = (RollDice 2 6) * 1000
                Write-Host "Electrum - $coins"
                $coins = (RollDice 8 6) * 100
                Write-Host "Gold - $coins"
            }
            ($d100 -ge 16 -and $d100 -le 55){
                $coins = (RollDice 1 6) * 1000
                Write-Host "Gold - $coins"
                $coins = (RollDice 1 6) * 100
                Write-Host "Platinum - $coins"
            }
            ($d100 -ge 56){
                $coins = (RollDice 2 6) * 1000
                Write-Host "Gold - $coins"
                $coins = (RollDice 2 6) * 100
                Write-Host "Platinum - $coins"
            }
        }
    }
}

#$randomCR = Get-Random -Minimum 1 -Maximum 21
#RandomIndividualTreasure($randomCR)