--Readme--

Place the DnD-Scripts folder in one of the locations your PSModulePath points to. 

You can find these paths by entering the following command in to PowerShell:

$Env:PSModulePath

Typically it will be one of the following:

C:\Users\<you>\OneDrive\Documents\WindowsPowerShell\Modules
C:\Program Files\WindowsPowerShell\Modules
C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules

Once placed in that directory you can run the following commands:

------------------------------------------------------------------------------------------------
D# (where # is 2, 3, 4, 6, 8, 10, 12, 20, or 100)
Example: (rolling a d20)
PS C:\WINDOWS\system32> D20
15

------------------------------------------------------------------------------------------------
RollDice # # (where the first # is the number of dice, and the second # is the number of sides)
Example: (rolling 8d6)
PS C:\WINDOWS\system32> RollDice 8 6
29

------------------------------------------------------------------------------------------------
RandomIndividualTreasure # (where # is the challenge rating of the creature)
Example: (challenge rating 10 creature)
PS C:\WINDOWS\system32> RandomIndividualTreasure 10
Gold - 50
Platinum - 10

------------------------------------------------------------------------------------------------
RandomTreasureHoard # (where # is the challenge rating of the creatures)
Example: (challenge rating 10 creatures)
PS C:\WINDOWS\system32> RandomTreasureHoard 10

Coins
QTY  Type    
---  ----    
1800 Gold    
4000 Silver  
500  Copper  
70   Platinum


Art Objects
QTY Value  Detail                           
--- -----  ------                           
1 x 250gp  Carved ivory statuette           
1 x 250gp  Box of turquoise animal figurines
3 x 250gp  Silk robe with gold embroidery   
1 x 250gp  Large well-made tapestry         
1 x 250gp  Bronze crown                     
1 x 250gp  Gold ring set with bloodstones   


Magic Items
QTY Item                  
--- ----                  
1 x Wand of magic missiles
1 x Bracers of archery    

