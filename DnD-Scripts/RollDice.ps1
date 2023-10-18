function RollDice ([int]$dice,[int]$type){
    $count = 0
    $rolls = @()

    do{
        $rolls += switch ($type){
            2   {D2}
            3   {D3}
            4   {D4}
            6   {D6}
            8   {D8}
            10  {D10}
            12  {D12}
            20  {D20}
            100 {D100}
        }   
        
        $count ++

    }until ($count -eq $dice)
    
    return $rolls | Measure-Object -Sum | Select-Object -ExpandProperty Sum
}