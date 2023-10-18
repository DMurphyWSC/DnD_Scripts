function RandomTreasureHoard([int]$ChallengeRating){

    $TH = [TreasureHoard]::new($ChallengeRating)

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

}