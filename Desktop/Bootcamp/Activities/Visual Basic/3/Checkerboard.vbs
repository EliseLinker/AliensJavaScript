Sub CheckerBoard():
Dim Rooows as Long 
Dim Cols as Long 

    For Rooows = 1 to 8 

        For Cols = 1 to 8 

        If ((Rooows Mod 2 <> 0 and COls Mod 2 <> 0) or (Rooows Mod 2 = 0 and Cols Mod 2 = 0)) then 
            Cells(Rooows, COls).Interior.ColorIndex = 3 
        Else 
            Cells(Rooows, Cols).Interior.COlorIndex = 1 
        End If 

        Next Cols 


    Next Rooows 


End Sub 
