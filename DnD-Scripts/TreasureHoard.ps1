class TreasureHoard {
    $Coins = @()
    $Gemstones = @()
    $ArtObjects = @()
    $MagicItems = @()
    
    $CoinsCount = @{}
    $GemCount  = @{}
    $GemDetail = @{}
    $ObjectCount  = @{}
    $ItemsCount = @{}

    [int]$GemValue
    [int]$ObjectValue

    TreasureHoard([int]$cr){
        $d100 = RollDice 1 100
        
        if($cr -le 4){
            $this.CoinsCount.add("Copper",(RollDice 6 6) * 100)
            $this.CoinsCount.add("Silver",(RollDice 3 6) * 100)
            $this.CoinsCount.add("Gold",(RollDice 2 6) * 10)
            
            switch ($true){
                ($d100 -le 6){
                    #just coins
                }
                ($d100 -ge 7 -and $d100 -le 16){
                    $this.GetGemstones((RollDice 2 6),10)
                }
                ($d100 -ge 17 -and $d100 -le 26){
                    $this.GetArtObjects((RollDice 2 4),25)
                }
                ($d100 -ge 27 -and $d100 -le 36){
                    $this.GetGemstones((RollDice 2 6),50)
                }
                ($d100 -ge 37 -and $d100 -le 44){
                    $this.GetGemstones((RollDice 2 6),10)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 45 -and $d100 -le 52){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 53 -and $d100 -le 60){
                    $this.GetGemstones((RollDice 2 6),50)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 61 -and $d100 -le 65){
                    $this.GetGemstones((RollDice 2 6),10)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 66 -and $d100 -le 70){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 71 -and $d100 -le 75){
                    $this.GetGemstones((RollDice 2 6),50)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 76 -and $d100 -le 78){
                    $this.GetGemstones((RollDice 2 6),10)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 79 -and $d100 -le 80){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 81 -and $d100 -le 85){
                    $this.GetGemstones((RollDice 2 6),50)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 86 -and $d100 -le 92){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 4),'F')
                }
                ($d100 -ge 93 -and $d100 -le 97){
                    $this.GetGemstones((RollDice 2 6),50)
                    $this.GetMagicItems((RollDice 1 4),'F')
                }
                ($d100 -ge 98 -and $d100 -le 99){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems(1,'G')
                }
                ($d100 -ge 100){
                    $this.GetGemstones((RollDice 2 6),50)
                    $this.GetMagicItems(1,'G')
                }
            }
        }

        if($cr -ge 5 -and $cr -le 10){
            $this.CoinsCount.add("Copper",(RollDice 2 6) * 100)
            $this.CoinsCount.add("Silver",(RollDice 2 6) * 1000)
            $this.CoinsCount.add("Gold",(RollDice 6 6) * 100)
            $this.CoinsCount.add("Platinum",(RollDice 3 6) * 10)
            
            switch ($true){
                ($d100 -le 4){
                    #just coins
                }
                ($d100 -ge 5 -and $d100 -le 10){
                    $this.GetArtObjects((RollDice 2 4),25)
                }
                ($d100 -ge 11 -and $d100 -le 16){
                    $this.GetGemstones((RollDice 3 6),50)
                }
                ($d100 -ge 17 -and $d100 -le 22){
                    $this.GetGemstones((RollDice 3 6),100)
                }
                ($d100 -ge 23 -and $d100 -le 28){
                    $this.GetArtObjects((RollDice 2 4),250)
                }
                ($d100 -ge 29 -and $d100 -le 32){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 33 -and $d100 -le 36){
                    $this.GetGemstones((RollDice 3 6),50)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 37 -and $d100 -le 40){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 41 -and $d100 -le 44){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 6),'A')
                }
                ($d100 -ge 45 -and $d100 -le 49){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 50 -and $d100 -le 54){
                    $this.GetGemstones((RollDice 3 6),50)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 55 -and $d100 -le 59){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 60 -and $d100 -le 63){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'B')
                }
                ($d100 -ge 64 -and $d100 -le 66){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 67 -and $d100 -le 69){
                    $this.GetGemstones((RollDice 3 6),50)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 70 -and $d100 -le 72){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 73 -and $d100 -le 74){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'C')
                }
                ($d100 -ge 75 -and $d100 -le 76){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems(1,'D')
                }
                ($d100 -ge 77 -and $d100 -le 78){
                    $this.GetGemstones((RollDice 3 6),50)
                    $this.GetMagicItems(1,'D')
                }
                ($d100 -eq 79){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems(1,'D')
                }
                ($d100 -eq 80){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems(1,'D')
                }
                ($d100 -ge 81 -and $d100 -le 84){
                    $this.GetArtObjects((RollDice 2 4),25)
                    $this.GetMagicItems((RollDice 1 4),'F')
                }
                ($d100 -ge 85 -and $d100 -le 88){
                    $this.GetGemstones((RollDice 3 6),50)
                    $this.GetMagicItems((RollDice 1 4),'F')
                }
                ($d100 -ge 89 -and $d100 -le 91){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems((RollDice 1 4),'F')
                }
                ($d100 -ge 92 -and $d100 -le 94){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'F')
                }
                ($d100 -ge 95 -and $d100 -le 96){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -ge 97 -and $d100 -le 98){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -eq 99){
                    $this.GetGemstones((RollDice 3 6),100)
                    $this.GetMagicItems(1,'H')
                }
                ($d100 -eq 100){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems(1,'H')
                }
            }
        }

        if($cr -ge 11 -and $cr -le 16){
            $this.CoinsCount.add("Gold",(RollDice 4 6) * 1000)
            $this.CoinsCount.add("Platinum",(RollDice 5 6) * 100)

            switch ($true){
                ($d100 -le 3){
                    #just coins
                }
                ($d100 -ge 4 -and $d100 -le 6){
                    $this.GetArtObjects((RollDice 2 4),250)
                }
                ($d100 -ge 7 -and $d100 -le 9){
                    $this.GetArtObjects((RollDice 2 4),750)
                }
                ($d100 -ge 10 -and $d100 -le 12){
                    $this.GetGemstones((RollDice 3 6),500)
                }
                ($d100 -ge 13 -and $d100 -le 15){
                    $this.GetGemstones((RollDice 3 6),1000)
                }
                ($d100 -ge 16 -and $d100 -le 19){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'A')
                    $this.GetMagicItems((RollDice 1 6),'B')
                }
                ($d100 -ge 20 -and $d100 -le 23){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems((RollDice 1 4),'A')
                    $this.GetMagicItems((RollDice 1 6),'B')
                }
                ($d100 -ge 24 -and $d100 -le 26){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems((RollDice 1 4),'A')
                    $this.GetMagicItems((RollDice 1 6),'B')
                }
                ($d100 -ge 27 -and $d100 -le 29){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'A')
                    $this.GetMagicItems((RollDice 1 6),'B')
                }
                ($d100 -ge 30 -and $d100 -le 35){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 6),'C')
                }
                ($d100 -ge 36 -and $d100 -le 40){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems((RollDice 1 6),'C')
                }
                ($d100 -ge 41 -and $d100 -le 45){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems((RollDice 1 6),'C')
                }
                ($d100 -ge 46 -and $d100 -le 50){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 6),'C')
                }
                ($d100 -ge 51 -and $d100 -le 54){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'D')
                }
                ($d100 -ge 55 -and $d100 -le 58){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems((RollDice 1 4),'D')
                }
                ($d100 -ge 59 -and $d100 -le 62){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems((RollDice 1 4),'D')
                }
                ($d100 -ge 63 -and $d100 -le 66){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'D')
                }
                ($d100 -ge 67 -and $d100 -le 68){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems(1,'E')
                }
                ($d100 -ge 69 -and $d100 -le 70){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems(1,'E')
                }
                ($d100 -ge 71 -and $d100 -le 72){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems(1,'E')
                }
                ($d100 -ge 73 -and $d100 -le 74){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems(1,'E')
                }
                ($d100 -ge 75 -and $d100 -le 76){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'F')
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -ge 77 -and $d100 -le 78){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems((RollDice 1 4),'F')
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -ge 79 -and $d100 -le 80){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems((RollDice 1 4),'F')
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -ge 81 -and $d100 -le 82){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'F')
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -ge 83 -and $d100 -le 85){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 86 -and $d100 -le 88){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 89 -and $d100 -le 90){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 91 -and $d100 -le 92){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 93 -and $d100 -le 94){
                    $this.GetArtObjects((RollDice 2 4),250)
                    $this.GetMagicItems(1,'I')
                }
                ($d100 -ge 95 -and $d100 -le 96){
                    $this.GetArtObjects((RollDice 2 4),750)
                    $this.GetMagicItems(1,'I')
                }
                ($d100 -ge 97 -and $d100 -le 98){
                    $this.GetGemstones((RollDice 3 6),500)
                    $this.GetMagicItems(1,'I')
                }
                ($d100 -ge 99){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems(1,'I')
                }
            }
        }

        if($cr -ge 17){
            $this.CoinsCount.add("Gold",(RollDice 12 6) * 1000)
            $this.CoinsCount.add("Platinum",(RollDice 8 6) * 1000)
            
            switch ($true){
                ($d100 -le 2){
                    #just coins
                }
                ($d100 -ge 3 -and $d100 -le 5){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 8),'C')
                }
                ($d100 -ge 6 -and $d100 -le 8){
                    $this.GetArtObjects((RollDice 1 10),2500)
                    $this.GetMagicItems((RollDice 1 8),'C')
                }
                ($d100 -ge 9 -and $d100 -le 11){
                    $this.GetArtObjects((RollDice 1 4),7500)
                    $this.GetMagicItems((RollDice 1 8),'C')
                }
                ($d100 -ge 12 -and $d100 -le 14){
                    $this.GetGemstones((RollDice 1 8),5000)
                    $this.GetMagicItems((RollDice 1 8),'C')
                }
                ($d100 -ge 15 -and $d100 -le 22){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 6),'D')
                }
                ($d100 -ge 23 -and $d100 -le 30){
                    $this.GetArtObjects((RollDice 1 10),2500)
                    $this.GetMagicItems((RollDice 1 6),'D')
                }
                ($d100 -ge 31 -and $d100 -le 38){
                    $this.GetArtObjects((RollDice 1 4),7500)
                    $this.GetMagicItems((RollDice 1 6),'D')
                }
                ($d100 -ge 39 -and $d100 -le 46){
                    $this.GetGemstones((RollDice 1 8),5000)
                    $this.GetMagicItems((RollDice 1 6),'D')
                }
                ($d100 -ge 47 -and $d100 -le 52){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 6),'E')
                }
                ($d100 -ge 53 -and $d100 -le 58){
                    $this.GetArtObjects((RollDice 1 10),2500)
                    $this.GetMagicItems((RollDice 1 6),'E')
                }
                ($d100 -ge 59 -and $d100 -le 63){
                    $this.GetArtObjects((RollDice 1 4),7500)
                    $this.GetMagicItems((RollDice 1 6),'E')
                }
                ($d100 -ge 64 -and $d100 -le 68){
                    $this.GetGemstones((RollDice 1 8),5000)
                    $this.GetMagicItems((RollDice 1 6),'E')
                }
                ($d100 -eq 69){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -eq 70){
                    $this.GetArtObjects((RollDice 1 10),2500)
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -eq 71){
                    $this.GetArtObjects((RollDice 1 4),7500)
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -eq 72){
                    $this.GetGemstones((RollDice 1 8),5000)
                    $this.GetMagicItems((RollDice 1 4),'G')
                }
                ($d100 -ge 73 -and $d100 -le 74){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 75 -and $d100 -le 76){
                    $this.GetArtObjects((RollDice 1 10),2500)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 77 -and $d100 -le 78){
                    $this.GetArtObjects((RollDice 1 4),7500)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 79 -and $d100 -le 80){
                    $this.GetGemstones((RollDice 1 8),5000)
                    $this.GetMagicItems((RollDice 1 4),'H')
                }
                ($d100 -ge 81 -and $d100 -le 85){
                    $this.GetGemstones((RollDice 3 6),1000)
                    $this.GetMagicItems((RollDice 1 4),'I')
                }
                ($d100 -ge 86 -and $d100 -le 90){
                    $this.GetArtObjects((RollDice 1 10),2500)
                    $this.GetMagicItems((RollDice 1 4),'I')
                }
                ($d100 -ge 91 -and $d100 -le 95){
                    $this.GetArtObjects((RollDice 1 4),7500)
                    $this.GetMagicItems((RollDice 1 4),'I')
                }
                ($d100 -ge 96){
                    $this.GetGemstones((RollDice 1 8),5000)
                    $this.GetMagicItems((RollDice 1 4),'I')
                }
            }
        }
        
        $this.CoinsCount.keys | ForEach-Object {
            $Row = "" | Select-Object QTY,Type
            $Row.QTY     = "$($this.CoinsCount[$_])"
            $Row.Type    = $_
            $this.Coins += $Row
        }

        $this.GemCount.keys | ForEach-Object{
            $Row = "" | Select-Object QTY,Value,Type,Detail
            $Row.QTY         = "$($this.GemCount[$_]) x"
            $Row.Value       = "$($this.GemValue)gp "
            $Row.Type        = $_
            $Row.Detail      = $this.GemDetail[$_]+" "
            $this.Gemstones += $Row
        }

        $this.ObjectCount.keys | ForEach-Object{
            $Row = "" | Select-Object QTY,Value,Detail
            $Row.QTY         = "$($this.ObjectCount[$_]) x"
            $Row.Value       = "$($this.ObjectValue)gp "
            $Row.Detail      = $_
            $this.ArtObjects += $Row
        }

        $this.ItemsCount.keys | ForEach-Object{
            $Row = "" | Select-Object QTY,Item
            $Row.QTY         = "$($this.ItemsCount[$_]) x"
            $Row.Item      = $_
            $this.MagicItems += $Row
        }
    }
    
    [void]GetGemstones([int]$gems,[int]$value){
        $count     = 0
        $this.GemValue = $value

        do{
            $gemstone = switch ($value){
                10 {
                    switch (RollDice 1 12){
                        1  {'Azurite','(opaque mottled deep blue)'}
                        2  {'Banded Agate','(translucent striped brown, blue, white, or red)'}
                        3  {'Blue Quartz','(transparent pale blue)'}
                        4  {'Eye Agate','(translucent circles of gray, white, brown, blue, or green)'}
                        5  {'Hematite','(opaque gray-black)'}
                        6  {'Lapis Lazuli','(opaque light and dark blue with yellow flecks)'}
                        7  {'Malachite','(opaque striated light and dark green)'}
                        8  {'Moss Agate','(translucent pink or yellow-white with mossy gray or green markings)'}
                        9  {'Obsidian','(opaque black)'}
                        10 {'Rhodochrosite','(opaque light pink)'}
                        11 {'Tiger Eye','(translucent brown with golden center)'}
                        12 {'Turquoise','(opaque light blue-green)'}
                    }
                }
                50 {
                    switch (RollDice 1 12){
                        1  {'Bloodstone','(opaque dark gray with red flecks)'}
                        2  {'Carnelian','(opaque orange to red-brown)'}
                        3  {'Chalcedony','(opaque white)'}
                        4  {'Chrysoprase','(translucent green)'}
                        5  {'Citrine','(transparent pale yellow-brown)'}
                        6  {'Jasper','(opaque blue, black, or brown)'}
                        7  {'Moonstone','(translucent white with pale blue glow)'}
                        8  {'Onyx','(opaque bands of black and white, or pure black or white)'}
                        9  {'Quartz','(transparent white, smoky gray, or yellow)'}
                        10 {'Sardonyx','(opaque bands of red and white)'}
                        11 {'Star Rose Quartz','(translucent rosy stone with white star-shaped center)'}
                        12 {'Zircon','(transparent pale blue-green)'}
                    }
                }
                100 {
                    switch (RollDice 1 10){
                        1  {'Amber','(transparent watery gold to rich gold)'}
                        2  {'Amethyst','(transparent deep purple)'}
                        3  {'Chrysoberyl','(transparent yellow-green to pale green)'}
                        4  {'Coral','(opaque crimson)'}
                        5  {'Garnet','(transparent red, brown-green, or violet)'}
                        6  {'Jade','(translucent light green, deep green, or white)'}
                        7  {'Jet','(opaque deep black)'}
                        8  {'Pearl','(opaque lustrous white, yellow, or pink)'}
                        9  {'Spinel','(transparent red, red-brown, or deep green)'}
                        10 {'Tourmaline','(transparent pale green, blue, brown, or red)'}
                    }
                }
                500 {
                    switch (RollDice 1 6){
                        1  {'Alexandrite','(transparent dark green)'}
                        2  {'Aquamarine','(transparent pale blue-green)'}
                        3  {'Black Pearl','(opaque pure black)'}
                        4  {'Blue Spinel','(transparent deep blue)'}
                        5  {'Peridot','(transparent rich olive green)'}
                        6  {'Topaz','(transparent golden yellow)'}
                    }
                }
                1000 {
                    switch (RollDice 1 8){
                        1  {'Black Opal','(translucent dark green with black mottling and golden flecks)'}
                        2  {'Blue Sapphire','(transparent blue-white to medium blue)'}
                        3  {'Emerald','(transparent deep bright green)'}
                        4  {'Fire Opal','(translucent fiery red)'}
                        5  {'Opal','(translucent pale blue with green and golden mottling)'}
                        6  {'Star Ruby','(translucent ruby with white star-shaped center)'}
                        7  {'Star Sapphire','(translucent blue sapphire with white star-shaped center)'}
                        8  {'Yellow Sapphire','(transparent fiery yellow or yellow-green)'}
                    } 
                }
                5000 {
                    switch (RollDice 1 4){
                        1  {'Black Sapphire','(translucent lustrous black with glowing highlights)'}
                        2  {'Diamond','(transparent blue-white, canary, pink, brown, or blue)'}
                        3  {'Jacinth','(transparent fiery orange)'}
                        4  {'Ruby','(transparent clear red to deep crimson)'}
                    }
                }
            }
            
            if($this.GemCount.ContainsKey($gemstone[0])){
                $this.GemCount.($gemstone[0]) ++
            }else{
                $this.GemCount.add($gemstone[0],1)
                $this.GemDetail.add($gemstone[0],$gemstone[1])
            }
            
            $count ++

        }until ($count -eq $gems)
    }

    [void]GetArtObjects([int]$objects,[int]$value){
        $count     = 0
        $this.ObjectValue = $value
        
        do{
            $object = switch ($value){
                25 {
                    switch (RollDice 1 10){
                        1  {'Silver ewer'}
                        2  {'Carved bone statuette'}
                        3  {'Small gold bracelet'}
                        4  {'Cloth-of-gold vestments'}
                        5  {'Black velvet mask stitched with silver thread'}
                        6  {'Copper chalice with silver filigree'}
                        7  {'Pair of engraved bone dice'}
                        8  {'Small mirror set in a painted wooden frame'}
                        9  {'Embroidered silk handkerchief'}
                        10 {'Gold locket with a painted portrait inside'}
                    }
                }
                250 {
                    switch (RollDice 1 10){
                        1  {'Gold ring set with bloodstones'}
                        2  {'Carved ivory statuette'}
                        3  {'Large gold bracelet'}
                        4  {'Silver necklace with a gemstone pendant'}
                        5  {'Bronze crown'}
                        6  {'Silk robe with gold embroidery'}
                        7  {'Large well-made tapestry'}
                        8  {'Brass mug with jade inlay'}
                        9  {'Box of turquoise animal figurines'}
                        10 {'Gold bird cage with electrum filigree'}
                    }
                }
                750 {
                    switch (RollDice 1 10){
                        1  {'Silver chalice set with moonstones'}
                        2  {'Silver-plated steel longsword with jet set in hilt'}
                        3  {'Carved harp of exotic wood with ivory inlay and zircon gems'}
                        4  {'Small gold idol'}
                        5  {'Gold dragon comb set with red garnets as eyes'}
                        6  {'Bottle stopper cork embossed with gold leaf and set with amethysts'}
                        7  {'Ceremonial electrum dagger with a black pearl in the pommel'}
                        8  {'Silver and gold brooch'}
                        9  {'Obsidian statuette with gold fittings and inlay'}
                        10 {'Painted gold war mask'}
                    }
                }
                2500 {
                    switch (RollDice 1 10){
                        1  {'Fine gold chain set with a fire opal'}
                        2  {'Old masterpiece painting'}
                        3  {'Embroidered silk and velvet mantle set with numerous moonstones'}
                        4  {'Platinum bracelet set with a sapphire'}
                        5  {'Embroidered glove set with jewel chips'}
                        6  {'Jeweled anklet'}
                        7  {'Gold music box'}
                        8  {'Gold circlet set with four aquamarines'}
                        9  {'Eye patch with a mock eye set in blue sapphire and moonstone'}
                        10 {'A necklace string of small pink pearls'}
                    } 
                }
                7500 {
                    switch (RollDice 1 8){
                        1  {'Jeweled gold crown'}
                        2  {'Jeweled platinum ring'}
                        3  {'Small gold statuette set with rubies'}
                        4  {'Gold cup set with emeralds'}
                        5  {'Gold jewelry box with platinum filigree'}
                        6  {'Painted gold child''s sarcophagus'}
                        7  {'Jade game board with solid gold playing pieces'}
                        8  {'Bejeweled ivory drinking horn with gold filigree'}
                    }
                }
            }
            
            if($this.ObjectCount.ContainsKey($object)){
                $this.ObjectCount.($object) ++
            }else{
                $this.ObjectCount.add($object,1)
            } 

            $count ++

        }until ($count -eq $objects)
    }

    [void]GetMagicItems([int]$items,[string]$table){
        $count = 0
        
        do{
            $item = switch ($table){
                'A' {
                    $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 50){
                            'Potion of healing'
                        }
                        ($MId100 -ge 51 -and $MId100 -le 60){
                            'Spell scroll (cantrip)'
                        }
                        ($MId100 -ge 61 -and $MId100 -le 70){
                            'Potion of climbing'
                        }
                        ($MId100 -ge 71 -and $MId100 -le 90){
                            'Spell scroll (1st level)'
                        }
                        ($MId100 -ge 91 -and $MId100 -le 94){
                            'Spell scroll (2nd level)'
                        }
                        ($MId100 -ge 95 -and $MId100 -le 98){
                            'Potion of healing (greater)'
                        }
                        ($MId100 -eq 99){
                            'Bag of holding'
                        }
                        ($MId100 -eq 100){
                            'Driftglobe'
                        }
                    }
                }
                'B' {
                    $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 15){
                            'Potion of healing (greater)'
                        }
                        ($MId100 -ge 16 -and $MId100 -le 22){
                            'Potion of fire breath'
                        }
                        ($MId100 -ge 23 -and $MId100 -le 29){
                            'Potion of resistance'
                        }
                        ($MId100 -ge 30 -and $MId100 -le 34){
                            'Ammunition, +1'
                        }
                        ($MId100 -ge 35 -and $MId100 -le 39){
                            'Potion of animal friendship'
                        }
                        ($MId100 -ge 40 -and $MId100 -le 44){
                            'Potion of hill giant strength'
                        }
                        ($MId100 -ge 45 -and $MId100 -le 49){
                            'Potion of growth'
                        }
                        ($MId100 -ge 50 -and $MId100 -le 54){
                            'Potion of water breathing'
                        }
                        ($MId100 -ge 55 -and $MId100 -le 59){
                            'Spell scroll (2nd level)'
                        }
                        ($MId100 -ge 60 -and $MId100 -le 64){
                            'Spell scroll (3rd level)'
                        }
                        ($MId100 -ge 65 -and $MId100 -le 67){
                            'Bag of holding'
                        }
                        ($MId100 -ge 68 -and $MId100 -le 70){
                            'Keoghtom''s ointment'
                        }
                        ($MId100 -ge 71 -and $MId100 -le 73){
                            'Oil of slipperiness'
                        }
                        ($MId100 -ge 74 -and $MId100 -le 75){
                            'Dust of disappearance'
                        }
                        ($MId100 -ge 76 -and $MId100 -le 77){
                            'Dust of dryness'
                        }
                        ($MId100 -ge 78 -and $MId100 -le 79){
                            'Dust of sneezing and choking'
                        }
                        ($MId100 -ge 80 -and $MId100 -le 81){
                            'Elemental gem'
                        }
                        ($MId100 -ge 82 -and $MId100 -le 83){
                            'Philter of love'
                        }
                        ($MId100 -eq 84){
                            'Alchemy jug'
                        }
                        ($MId100 -eq 85){
                            'Cap of water breathing'
                        }
                        ($MId100 -eq 86){
                            'Cloak of the manta ray'
                        }
                        ($MId100 -eq 87){
                            'Driftglobe'
                        }
                        ($MId100 -eq 88){
                            'Goggles of night'
                        }
                        ($MId100 -eq 89){
                            'Helm of comprehending languages'
                        }
                        ($MId100 -eq 90){
                            'Immovable rod'
                        }
                        ($MId100 -eq 91){
                            'Lantern of revealing'
                        }
                        ($MId100 -eq 92){
                            'Mariner''s armor'
                        }
                        ($MId100 -eq 93){
                            'Mithral armor'
                        }
                        ($MId100 -eq 94){
                            'Potion of poison'
                        }
                        ($MId100 -eq 95){
                            'Ring of swimming'
                        }
                        ($MId100 -eq 96){
                            'Robe of useful items'
                        }
                        ($MId100 -eq 97){
                            'Rope of climbing'
                        }
                        ($MId100 -eq 98){
                            'Saddle of the cavalier'
                        }
                        ($MId100 -eq 99){
                            'Wand of magic detection'
                        }
                        ($MId100 -eq 100){
                            'Wand of secrets'
                        }
                    }
                }
                'C' {
                    $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 15){
                            'Potion of healing (superior)'
                        }
                        ($MId100 -ge 16 -and $MId100 -le 22){
                            'Spell scroll (4th level)'
                        }
                        ($MId100 -ge 23 -and $MId100 -le 27){
                            'Ammunition, +2'
                        }
                        ($MId100 -ge 28 -and $MId100 -le 32){
                            'Potion of clairvoyance'
                        }
                        ($MId100 -ge 33 -and $MId100 -le 37){
                            'Potion of diminution'
                        }
                        ($MId100 -ge 38 -and $MId100 -le 42){
                            'Potion of gaseous form'
                        }
                        ($MId100 -ge 43 -and $MId100 -le 47){
                            'Potion of frost giant strength'
                        }
                        ($MId100 -ge 48 -and $MId100 -le 52){
                            'Potion of stone giant strength'
                        }
                        ($MId100 -ge 53 -and $MId100 -le 57){
                            'Potion of heroism'
                        }
                        ($MId100 -ge 58 -and $MId100 -le 62){
                            'Potion of invulnerability'
                        }
                        ($MId100 -ge 63 -and $MId100 -le 67){
                            'Potion of mind reading'
                        }
                        ($MId100 -ge 68 -and $MId100 -le 72){
                            'Spell scroll (5th level)'
                        }
                        ($MId100 -ge 73 -and $MId100 -le 75){
                            'Elixir of health'
                        }
                        ($MId100 -ge 76 -and $MId100 -le 78){
                            'Oil of etherealness'
                        }
                        ($MId100 -ge 79 -and $MId100 -le 81){
                            'Potion of fire giant strength'
                        }
                        ($MId100 -ge 82 -and $MId100 -le 84){
                            'Quaal''s feather token'
                        }
                        ($MId100 -ge 85 -and $MId100 -le 87){
                            'Scroll of protection'
                        }
                        ($MId100 -ge 88 -and $MId100 -le 89){
                            'Bag of beans'
                        }
                        ($MId100 -ge 90 -and $MId100 -le 91){
                            'Bead of force'
                        }
                        ($MId100 -eq 92){
                            'Chime of opening'
                        }
                        ($MId100 -eq 93){
                            'Decanter of endless water'
                        }
                        ($MId100 -eq 94){
                            'Eyes of minute seeing'
                        }
                        ($MId100 -eq 95){
                            'Folding boat'
                        }
                        ($MId100 -eq 96){
                            'Heward''s handy haversack'
                        }
                        ($MId100 -eq 97){
                            'Horseshoes of speed'
                        }
                        ($MId100 -eq 98){
                            'Necklace of fireballs'
                        }
                        ($MId100 -eq 99){
                            'Periapt of health'
                        }
                        ($MId100 -eq 100){
                            'Sending stones'
                        }
                    }
                }
                'D' {
                    $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 20){
                            'Potion of healing (supreme)'
                        }
                        ($MId100 -ge 21 -and $MId100 -le 30){
                            'Potion of invisibility'
                        }
                        ($MId100 -ge 31 -and $MId100 -le 40){
                            'Potion of speed'
                        }
                        ($MId100 -ge 41 -and $MId100 -le 50){
                            'Spell scroll (6th level)'
                        }
                        ($MId100 -ge 51 -and $MId100 -le 57){
                            'Spell scroll (7th level)'
                        }
                        ($MId100 -ge 58 -and $MId100 -le 62){
                            'Ammunition, +3'
                        }
                        ($MId100 -ge 63 -and $MId100 -le 67){
                            'Oil of sharpness'
                        }
                        ($MId100 -ge 68 -and $MId100 -le 72){
                            'Potion of flying'
                        }
                        ($MId100 -ge 73 -and $MId100 -le 77){
                            'Potion of cloud giant strength'
                        }
                        ($MId100 -ge 78 -and $MId100 -le 82){
                            'Potion of longevity'
                        }
                        ($MId100 -ge 83 -and $MId100 -le 87){
                            'Potion of vitality'
                        }
                        ($MId100 -ge 88 -and $MId100 -le 92){
                            'Spell scroll (8th level)'
                        }
                        ($MId100 -ge 93 -and $MId100 -le 95){
                            'Horseshoes of a zephyr'
                        }
                        ($MId100 -ge 96 -and $MId100 -le 98){
                            'Nolzur''s marvelous pigments'
                        }
                        ($MId100 -eq 99){
                            'Bag of devouring'
                        }
                        ($MId100 -eq 100){
                            'Portable hole'
                        }
                    }
                }
                'E' {
                    $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 30){
                            'Spell scroll (8th level)'
                        }
                        ($MId100 -ge 31 -and $MId100 -le 55){
                            'Potion of storm giant strength'
                        }
                        ($MId100 -ge 56 -and $MId100 -le 70){
                            'Potion of healing (supreme)'
                        }
                        ($MId100 -ge 71 -and $MId100 -le 85){
                            'Spell scroll (9th level)'
                        }
                        ($MId100 -ge 86 -and $MId100 -le 93){
                            'Universal solvent'
                        }
                        ($MId100 -ge 94 -and $MId100 -le 98){
                            'Arrow of slaying'
                        }
                        ($MId100 -ge 99){
                            'Sovereign glue'
                        }
                    }
                }
                'F' {
                $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 15){
                            'Weapon, +1'
                        }
                        ($MId100 -ge 16 -and $MId100 -le 18){
                            'Shield, +1'
                        }
                        ($MId100 -ge 19 -and $MId100 -le 21){
                            'Sentinel shield'
                        }
                        ($MId100 -ge 22 -and $MId100 -le 23){
                            'Amulet of proof against detection and location'
                        }
                        ($MId100 -ge 24 -and $MId100 -le 25){
                            'Boots of elvenkind'
                        }
                        ($MId100 -ge 26 -and $MId100 -le 27){
                            'Boots of striding and springing'
                        }
                        ($MId100 -ge 28 -and $MId100 -le 29){
                            'Bracers of archery'
                        }
                        ($MId100 -ge 30 -and $MId100 -le 31){
                            'Brooch of shielding'
                        }
                        ($MId100 -ge 32 -and $MId100 -le 33){
                            'Broom of flying'
                        }
                        ($MId100 -ge 34 -and $MId100 -le 35){
                            'Cloak of elvenkind'
                        }
                        ($MId100 -ge 36 -and $MId100 -le 37){
                            'Cloak of protection'
                        }
                        ($MId100 -ge 38 -and $MId100 -le 39){
                            'Gauntlets of ogre power'
                        }
                        ($MId100 -ge 40 -and $MId100 -le 41){
                            'Hat of disguise'
                        }
                        ($MId100 -ge 42 -and $MId100 -le 43){
                            'Javelin of lightning'
                        }
                        ($MId100 -ge 44 -and $MId100 -le 45){
                            'Pearl of power'
                        }
                        ($MId100 -ge 46 -and $MId100 -le 47){
                            'Rod of the pact keeper, +1'
                        }
                        ($MId100 -ge 48 -and $MId100 -le 49){
                            'Slippers of spider climbing'
                        }
                        ($MId100 -ge 50 -and $MId100 -le 51){
                            'Staff of the adder'
                        }
                        ($MId100 -ge 52 -and $MId100 -le 53){
                            'Staff of the python'
                        }
                        ($MId100 -ge 54 -and $MId100 -le 55){
                            'Sword of vengeance'
                        }
                        ($MId100 -ge 56 -and $MId100 -le 57){
                            'Trident of fish command'
                        }
                        ($MId100 -ge 58 -and $MId100 -le 59){
                            'Wand of magic missiles'
                        }
                        ($MId100 -ge 60 -and $MId100 -le 61){
                            'Wand of the war mage, +1'
                        }
                        ($MId100 -ge 62 -and $MId100 -le 63){
                            'Wand of web'
                        }
                        ($MId100 -ge 64 -and $MId100 -le 65){
                            'Weapon of warning'
                        }
                        ($MId100 -eq 66){
                            'Adamantine armor (chain mail)'
                        }
                        ($MId100 -eq 67){
                            'Adamantine armor (chain shirt)'
                        }
                        ($MId100 -eq 68){
                            'Adamantine armor (scale mail)'
                        }
                        ($MId100 -eq 69){
                            'Bag of tricks (gray)'
                        }
                        ($MId100 -eq 70){
                            'Bag of tricks (rust)'
                        }
                        ($MId100 -eq 71){
                            'Bag of tricks (tan)'
                        }
                        ($MId100 -eq 72){
                            'Boots of the winterlands'
                        }
                        ($MId100 -eq 73){
                            'Circlet of blasting'
                        }
                        ($MId100 -eq 74){
                            'Deck of illusions'
                        }
                        ($MId100 -eq 75){
                            'Eversmoking bottle'
                        }
                        ($MId100 -eq 76){
                            'Eyes of charming'
                        }
                        ($MId100 -eq 77){
                            'Eyes of the eagle'
                        }
                        ($MId100 -eq 78){
                            'Figurine of wondrous power (silver raven)'
                        }
                        ($MId100 -eq 79){
                            'Gem of brightness'
                        }
                        ($MId100 -eq 80){
                            'Gloves of missile snaring'
                        }
                        ($MId100 -eq 81){
                            'Gloves of swimming and climbing'
                        }
                        ($MId100 -eq 82){
                            'Gloves of thievery'
                        }
                        ($MId100 -eq 83){
                            'Headband of intellect'
                        }
                        ($MId100 -eq 84){
                            'Helm of telepathy'
                        }
                        ($MId100 -eq 85){
                            'Instrument of the bards (Doss lute)'
                        }
                        ($MId100 -eq 86){
                            'Instrument of the bards (Fochlucan bandore)'
                        }
                        ($MId100 -eq 87){
                            'Instrument of the bards (Mac-Fuimidh cittern)'
                        }
                        ($MId100 -eq 88){
                            'Medallion of thoughts'
                        }
                        ($MId100 -eq 89){
                            'Necklace of adaptation'
                        }
                        ($MId100 -eq 90){
                            'Periapt of wound closure'
                        }
                        ($MId100 -eq 91){
                            'Pipes of haunting'
                        }
                        ($MId100 -eq 92){
                            'Pipes of the sewers'
                        }
                        ($MId100 -eq 93){
                            'Ring of jumping'
                        }
                        ($MId100 -eq 94){
                            'Ring of mind shielding'
                        }
                        ($MId100 -eq 95){
                            'Ring of warmth'
                        }
                        ($MId100 -eq 96){
                            'Ring of water walking'
                        }
                        ($MId100 -eq 97){
                            'Quiver of Ehlonna'
                        }
                        ($MId100 -eq 98){
                            'Stone of good luck (luckstone)'
                        }
                        ($MId100 -eq 99){
                            'Wind fan'
                        }
                        ($MId100 -eq 100){
                            'Winged boots'
                        }
                    }
                }
                'G' {
                $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 11){
                            'Weapon, +2'
                        }
                        ($MId100 -ge 12 -and $MId100 -le 14){
                            switch (RollDice 1 8){
                                1{'Figurine of wondrous power (Bronze griffon)'}
                                2{'Figurine of wondrous power (Ebony fly)'}
                                3{'Figurine of wondrous power (Golden lions)'}
                                4{'Figurine of wondrous power (Ivory goats)'}
                                5{'Figurine of wondrous power (Marble elephant)'}
                                6{'Figurine of wondrous power (Onyx dog)'}
                                7{'Figurine of wondrous power (Onyx dog)'}
                                8{'Figurine of wondrous power (Serpentine owl)'}
                            }
                        }
                        ($MId100 -eq 15){
                            'Adamantine armor (breastplate)'
                        }
                        ($MId100 -eq 16){
                            'Adamantine armor (splint)'
                        }
                        ($MId100 -eq 17){
                            'Amulet of health'
                        }
                        ($MId100 -eq 18){
                            'Armor of vulnerability'
                        }
                        ($MId100 -eq 19){
                            'Arrow-catching shield'
                        }
                        ($MId100 -eq 20){
                            'Belt of dwarvenkind'
                        }
                        ($MId100 -eq 21){
                            'Belt of hill giant strength'
                        }
                        ($MId100 -eq 22){
                            'Berserker axe'
                        }
                        ($MId100 -eq 23){
                            'Boots of levitation'
                        }
                        ($MId100 -eq 24){
                            'Boots of speed'
                        }
                        ($MId100 -eq 25){
                            'Bowl of commanding water elementals'
                        }
                        ($MId100 -eq 26){
                            'Bracers of defense'
                        }
                        ($MId100 -eq 27){
                            'Brazier of commanding fire elementals'
                        }
                        ($MId100 -eq 28){
                            'Cape of the mountebank'
                        }
                        ($MId100 -eq 29){
                            'Censer of controlling air elementals'
                        }
                        ($MId100 -eq 30){
                            'Armor, +1 chain mail'
                        }
                        ($MId100 -eq 31){
                            'Armor of resistance (chain mail)'
                        }
                        ($MId100 -eq 32){
                            'Armor, +1 chain shirt'
                        }
                        ($MId100 -eq 33){
                            'Armor of resistance (chain shirt)'
                        }
                        ($MId100 -eq 34){
                            'Cloak of displacement'
                        }
                        ($MId100 -eq 35){
                            'Cloak of the bat'
                        }
                        ($MId100 -eq 36){
                            'Cube of force'
                        }
                        ($MId100 -eq 37){
                            'Daern''s instant fortress'
                        }
                        ($MId100 -eq 38){
                            'Dagger of venom'
                        }
                        ($MId100 -eq 39){
                            'Dimensional shackles'
                        }
                        ($MId100 -eq 40){
                            'Dragon slayer'
                        }
                        ($MId100 -eq 41){
                            'Elven chain'
                        }
                        ($MId100 -eq 42){
                            'Flame tongue'
                        }
                        ($MId100 -eq 43){
                            'Gem of seeing'
                        }
                        ($MId100 -eq 44){
                            'Giant slayer'
                        }
                        ($MId100 -eq 45){
                            'Glamoured studded leather'
                        }
                        ($MId100 -eq 46){
                            'Helm of teleportation'
                        }
                        ($MId100 -eq 47){
                            'Horn of blasting'
                        }
                        ($MId100 -eq 48){
                            'Horn of Valhalla (silver or brass)'
                        }
                        ($MId100 -eq 49){
                            'Instrument of the bards (Canaith mandolin)'
                        }
                        ($MId100 -eq 50){
                            'Instrument of the bards (Cli lyre)'
                        }
                        ($MId100 -eq 51){
                            'Ioun stone (awareness)'
                        }
                        ($MId100 -eq 52){
                            'Ioun stone (protection)'
                        }
                        ($MId100 -eq 53){
                            'Ioun stone (reserve)'
                        }
                        ($MId100 -eq 54){
                            'Ioun stone (sustenance)'
                        }
                        ($MId100 -eq 55){
                            'Iron bands of Bilarro'
                        }
                        ($MId100 -eq 56){
                            'Armor, +1 leather'
                        }
                        ($MId100 -eq 57){
                            'Armor of resistance (leather)'
                        }
                        ($MId100 -eq 58){
                            'Mace of disruption'
                        }
                        ($MId100 -eq 59){
                            'Mace of smiting'
                        }
                        ($MId100 -eq 60){
                            'Mace of terror'
                        }
                        ($MId100 -eq 61){
                            'Mantle of spell resistance'
                        }
                        ($MId100 -eq 62){
                            'Necklace of prayer beads'
                        }
                        ($MId100 -eq 63){
                            'Periapt of proof against poison'
                        }
                        ($MId100 -eq 64){
                            'Ring of animal influence'
                        }
                        ($MId100 -eq 65){
                            'Ring of evasion'
                        }
                        ($MId100 -eq 66){
                            'Ring of feather falling'
                        }
                        ($MId100 -eq 67){
                            'Ring of free action'
                        }
                        ($MId100 -eq 68){
                            'Ring of protection'
                        }
                        ($MId100 -eq 69){
                            'Ring of resistance'
                        }
                        ($MId100 -eq 70){
                            'Ring of spell storing'
                        }
                        ($MId100 -eq 71){
                            'Ring of the ram'
                        }
                        ($MId100 -eq 72){
                            'Ring of X-ray vision'
                        }
                        ($MId100 -eq 73){
                            'Robe of eyes'
                        }
                        ($MId100 -eq 74){
                            'Rod of rulership'
                        }
                        ($MId100 -eq 75){
                            'Rod of the pact keeper, +2'
                        }
                        ($MId100 -eq 76){
                            'Rope of entanglement'
                        }
                        ($MId100 -eq 77){
                            'Armor, +1 scale mail'
                        }
                        ($MId100 -eq 78){
                            'Armor of resistance (scale mail)'
                        }
                        ($MId100 -eq 79){
                            'Shield, +2'
                        }
                        ($MId100 -eq 80){
                            'Shield of missile attraction'
                        }
                        ($MId100 -eq 81){
                            'Staff of charming'
                        }
                        ($MId100 -eq 82){
                            'Staff of healing'
                        }
                        ($MId100 -eq 83){
                            'Staff of swarming insects'
                        }
                        ($MId100 -eq 84){
                            'Staff of the woodlands'
                        }
                        ($MId100 -eq 85){
                            'Staff of withering'
                        }
                        ($MId100 -eq 86){
                            'Stone of controlling earth elementals'
                        }
                        ($MId100 -eq 87){
                            'Sun blade'
                        }
                        ($MId100 -eq 88){
                            'Sword of life stealing'
                        }
                        ($MId100 -eq 89){
                            'Sword of wounding'
                        }
                        ($MId100 -eq 90){
                            'Tentacle rod'
                        }
                        ($MId100 -eq 91){
                            'Vicious weapon'
                        }
                        ($MId100 -eq 92){
                            'Wand of binding'
                        }
                        ($MId100 -eq 93){
                            'Wand of enemy detection'
                        }
                        ($MId100 -eq 94){
                            'Wand of fear'
                        }
                        ($MId100 -eq 95){
                            'Wand of fireballs'
                        }
                        ($MId100 -eq 96){
                            'Wand of lightning bolts'
                        }
                        ($MId100 -eq 97){
                            'Wand of paralysis'
                        }
                        ($MId100 -eq 98){
                            'Wand of the war mage, +2'
                        }
                        ($MId100 -eq 99){
                            'Wand of wonder'
                        }
                        ($MId100 -eq 100){
                            'Wings of flying'
                        }
                    }
                }
                'H' {
                $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 10){
                            'Weapon, +3'
                        }
                        ($MId100 -ge 11 -and $MId100 -le 12){
                            'Amulet of the planes'
                        }
                        ($MId100 -ge 13 -and $MId100 -le 14){
                            'Carpet of flying'
                        }
                        ($MId100 -ge 15 -and $MId100 -le 16){
                            'Crystal ball (very rare version)'
                        }
                        ($MId100 -ge 17 -and $MId100 -le 18){
                            'Ring of regeneration'
                        }
                        ($MId100 -ge 19 -and $MId100 -le 20){
                            'Ring of shooting stars'
                        }
                        ($MId100 -ge 21 -and $MId100 -le 22){
                            'Ring of telekinesis'
                        }
                        ($MId100 -ge 23 -and $MId100 -le 24){
                            'Robe of scintillating colors'
                        }
                        ($MId100 -ge 25 -and $MId100 -le 26){
                            'Robe of stars'
                        }
                        ($MId100 -ge 27 -and $MId100 -le 28){
                            'Rod of absorption'
                        }
                        ($MId100 -ge 29 -and $MId100 -le 30){
                            'Rod of alertness'
                        }
                        ($MId100 -ge 31 -and $MId100 -le 32){
                            'Rod of security'
                        }
                        ($MId100 -ge 33 -and $MId100 -le 34){
                            'Rod of the pact keeper, +3'
                        }
                        ($MId100 -ge 35 -and $MId100 -le 36){
                            'Scimitar of speed'
                        }
                        ($MId100 -ge 37 -and $MId100 -le 38){
                            'Shield, +3'
                        }
                        ($MId100 -ge 39 -and $MId100 -le 40){
                            'Staff of fire'
                        }
                        ($MId100 -ge 41 -and $MId100 -le 42){
                            'Staff of frost'
                        }
                        ($MId100 -ge 43 -and $MId100 -le 44){
                            'Staff of power'
                        }
                        ($MId100 -ge 45 -and $MId100 -le 46){
                            'Staff of striking'
                        }
                        ($MId100 -ge 47 -and $MId100 -le 48){
                            'Staff of thunder and lightning'
                        }
                        ($MId100 -ge 49 -and $MId100 -le 50){
                            'Sword of sharpness'
                        }
                        ($MId100 -ge 51 -and $MId100 -le 52){
                            'Wand of polymorph'
                        }
                        ($MId100 -ge 53 -and $MId100 -le 54){
                            'Wand of the war mage, +3'
                        }
                        ($MId100 -eq 55){
                            'Adamantine armor (half plate)'
                        }
                        ($MId100 -eq 56){
                            'Adamantine armor (plate)'
                        }
                        ($MId100 -eq 57){
                            'Animated shield'
                        }
                        ($MId100 -eq 58){
                            'Belt of fire giant strength'
                        }
                        ($MId100 -eq 59){
                            'Belt of frost giant strength (or stone)'
                        }
                        ($MId100 -eq 60){
                            'Armor, +1 breastplate'
                        }
                        ($MId100 -eq 61){
                            'Armor of resistance (breastplate)'
                        }
                        ($MId100 -eq 62){
                            'Candle of invocation'
                        }
                        ($MId100 -eq 63){
                            'Armor, +2 chain mail'
                        }
                        ($MId100 -eq 64){
                            'Armor, +2 chain shirt'
                        }
                        ($MId100 -eq 65){
                            'Cloak of arachnida'
                        }
                        ($MId100 -eq 66){
                            'Dancing sword'
                        }
                        ($MId100 -eq 67){
                            'Demon armor'
                        }
                        ($MId100 -eq 68){
                            'Dragon scale mail'
                        }
                        ($MId100 -eq 69){
                            'Dwarven plate'
                        }
                        ($MId100 -eq 70){
                            'Dwarven thrower'
                        }
                        ($MId100 -eq 71){
                            'Efreeti bottle'
                        }
                        ($MId100 -eq 72){
                            'Figurine of wondrous power (obsidian steed)'
                        }
                        ($MId100 -eq 73){
                            'Frost brand'
                        }
                        ($MId100 -eq 74){
                            'Helm of brilliance'
                        }
                        ($MId100 -eq 75){
                            'Horn of Valhalla (bronze)'
                        }
                        ($MId100 -eq 76){
                            'Instrument of the bards (Anstruth harp)'
                        }
                        ($MId100 -eq 77){
                            'Ioun stone (absorption)'
                        }
                        ($MId100 -eq 78){
                            'Ioun stone (agility)'
                        }
                        ($MId100 -eq 79){
                            'Ioun stone (fortitude)'
                        }
                        ($MId100 -eq 80){
                            'Ioun stone (insight)'
                        }
                        ($MId100 -eq 81){
                            'Ioun stone (intellect)'
                        }
                        ($MId100 -eq 82){
                            'Ioun stone (leadership)'
                        }
                        ($MId100 -eq 83){
                            'Ioun stone (strength)'
                        }
                        ($MId100 -eq 84){
                            'Armor, +2 leather'
                        }
                        ($MId100 -eq 85){
                            'Manual of bodily health'
                        }
                        ($MId100 -eq 86){
                            'Manual of gainful exercise'
                        }
                        ($MId100 -eq 87){
                            'Manual of golems'
                        }
                        ($MId100 -eq 88){
                            'Manual of quickness of action'
                        }
                        ($MId100 -eq 89){
                            'Mirror of life trapping'
                        }
                        ($MId100 -eq 90){
                            'Nine lives stealer'
                        }
                        ($MId100 -eq 91){
                            'Oathbow'
                        }
                        ($MId100 -eq 92){
                            'Armor, +2 scale mail'
                        }
                        ($MId100 -eq 93){
                            'Spellguard shield'
                        }
                        ($MId100 -eq 94){
                            'Armor, +1 splint'
                        }
                        ($MId100 -eq 95){
                            'Armor of resistance (splint)'
                        }
                        ($MId100 -eq 96){
                            'Armor, +1 studded leather'
                        }
                        ($MId100 -eq 97){
                            'Armor of resistance (studded leather)'
                        }
                        ($MId100 -eq 98){
                            'Tome of clear thought'
                        }
                        ($MId100 -eq 99){
                            'Tome of leadership and influence'
                        }
                        ($MId100 -eq 100){
                            'Tome of understanding'
                        }
                    }
                }
                'I' {
                $MId100 = RollDice 1 100
                    switch ($true){
                        ($MId100 -le 5){
                            'Defender'
                        }
                        ($MId100 -ge 6 -and $MId100 -le 10){
                            'Hammer of thunderbolts'
                        }
                        ($MId100 -ge 11 -and $MId100 -le 15){
                            'Luck blade'
                        }
                        ($MId100 -ge 16 -and $MId100 -le 20){
                            'Sword of answering'
                        }
                        ($MId100 -ge 21 -and $MId100 -le 23){
                            'Holy avenger'
                        }
                        ($MId100 -ge 24 -and $MId100 -le 26){
                            'Ring of djinni summoning'
                        }
                        ($MId100 -ge 27 -and $MId100 -le 29){
                            'Ring of invisibility'
                        }
                        ($MId100 -ge 30 -and $MId100 -le 32){
                            'Ring of spell turning'
                        }
                        ($MId100 -ge 33 -and $MId100 -le 35){
                            'Rod of lordly might'
                        }
                        ($MId100 -ge 36 -and $MId100 -le 38){
                            'Staff of the magi'
                        }
                        ($MId100 -ge 39 -and $MId100 -le 41){
                            'Vorpal sword'
                        }
                        ($MId100 -ge 42 -and $MId100 -le 43){
                            'Belt of cloud giant strength'
                        }
                        ($MId100 -ge 44 -and $MId100 -le 45){
                            'Armor, +2 breastplate'
                        }
                        ($MId100 -ge 46 -and $MId100 -le 47){
                            'Armor, +3 chain mail'
                        }
                        ($MId100 -ge 48 -and $MId100 -le 49){
                            'Armor, +3 chain shirt'
                        }
                        ($MId100 -ge 50 -and $MId100 -le 51){
                            'Cloak of invisibility'
                        }
                        ($MId100 -ge 52 -and $MId100 -le 53){
                            'Crystal ball (legendary version)'
                        }
                        ($MId100 -ge 54 -and $MId100 -le 55){
                            'Armor, +1 half plate'
                        }
                        ($MId100 -ge 56 -and $MId100 -le 57){
                            'Iron flask'
                        }
                        ($MId100 -ge 58 -and $MId100 -le 59){
                            'Armor, +3 leather'
                        }
                        ($MId100 -ge 60 -and $MId100 -le 61){
                            'Armor, +1 plate'
                        }
                        ($MId100 -ge 62 -and $MId100 -le 63){
                            'Robe of the archmagi'
                        }
                        ($MId100 -ge 64 -and $MId100 -le 65){
                            'Rod of resurrection'
                        }
                        ($MId100 -ge 66 -and $MId100 -le 67){
                            'Armor, +1 scale mail'
                        }
                        ($MId100 -ge 68 -and $MId100 -le 69){
                            'Scarab of protection'
                        }
                        ($MId100 -ge 70 -and $MId100 -le 71){
                            'Armor, +2 splint'
                        }
                        ($MId100 -ge 72 -and $MId100 -le 73){
                            'Armor, +2 studded leather'
                        }
                        ($MId100 -ge 74 -and $MId100 -le 75){
                            'Well of many worlds'
                        }
                        ($MId100 -eq 76){
                            switch (RollDice 1 12){
                                1  {'Armor, +2 half plate'}
                                2  {'Armor, +2 half plate'}
                                3  {'Armor, +2 plate'}
                                4  {'Armor, +2 plate'}
                                5  {'Armor, +3 studded leather'}
                                6  {'Armor, +3 studded leather'}
                                7  {'Armor, +3 breastplate'}
                                8  {'Armor, +3 breastplate'}
                                9  {'Armor, +3 splint'}
                                10 {'Armor, +3 splint'}
                                11 {'Armor, +3 half plate'}
                                12 {'Armor, +3 plate'}
                            }
                        }
                        ($MId100 -eq 77){
                            'Apparatus of Kwalish'
                        }
                        ($MId100 -eq 78){
                            'Armor of invulnerability'
                        }
                        ($MId100 -eq 79){
                            'Belt of storm giant strength'
                        }
                        ($MId100 -eq 80){
                            'Cubic gate'
                        }
                        ($MId100 -eq 81){
                            'Deck of many things'
                        }
                        ($MId100 -eq 82){
                            'Efreeti chain'
                        }
                        ($MId100 -eq 83){
                            'Armor of resistance (half plate)'
                        }
                        ($MId100 -eq 84){
                            'Horn of Valhalla (iron)'
                        }
                        ($MId100 -eq 85){
                            'Instrument of the bards (Ollamh harp)'
                        }
                        ($MId100 -eq 86){
                            'Ioun stone (greater absorption)'
                        }
                        ($MId100 -eq 87){
                            'Ioun stone (mastery)'
                        }
                        ($MId100 -eq 88){
                            'Ioun stone (regeneration)'
                        }
                        ($MId100 -eq 89){
                            'Plate armor of etherealness'
                        }
                        ($MId100 -eq 90){
                            'Armor of resistance (plate)'
                        }
                        ($MId100 -eq 91){
                            'Ring of air elemental command'
                        }
                        ($MId100 -eq 92){
                            'Ring of earth elemental command'
                        }
                        ($MId100 -eq 93){
                            'Ring of fire elemental command'
                        }
                        ($MId100 -eq 94){
                            'Ring of three wishes'
                        }
                        ($MId100 -eq 95){
                            'Ring of water elemental command'
                        }
                        ($MId100 -eq 96){
                            'Sphere of annihilation'
                        }
                        ($MId100 -eq 97){
                            'Talisman of pure good'
                        }
                        ($MId100 -eq 98){
                            'Talisman of the sphere'
                        }
                        ($MId100 -eq 99){
                            'Talisman of ultimate evil'
                        }
                        ($MId100 -eq 100){
                            'Tome of the stilled tongue'
                        }
                    }
                }
            }

            if($this.ItemsCount.ContainsKey($item)){
                $this.ItemsCount.($item) ++
            }else{
                $this.ItemsCount.add($item,1)
            } 

            $count ++

        }until ($count -eq $items)
    }
}

<#

$randomCR = Get-Random -Minimum 1 -Maximum 21
$randomCR
$TH = [TreasureHoard]::new($randomCR)

write-host ""
write-host "Coins" -NoNewline
printcoins

if($TH.Gemstones -ne $null){
    write-host "Gemstones" -NoNewline
    printgemstones
}

if($TH.ArtObjects -ne $null){
    write-host "Art Objects" -NoNewline
    printobjects
}

if($TH.MagicItems -ne $null){
    write-host "Magic Items" -NoNewline
    printitems
}

#>