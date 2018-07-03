Sub StudentStarCount():

Dim StarCount As Long
Dim Rooows As Long
Dim Cols As Long

    For Rooows = 2 To 51
            
        For Cols = 4 To 8
            If Cells(Rooows, Cols).Value = "Full-Star" Then
                StarCount = StarCount + 1
                'MsgBox ("StarCount" + Str(StarCount))
            End If
            If Cols = 8 Then
                 Cells(Rooows, Cols + 1) = StarCount
                 StarCount = 0
            End If
            'MsgBox(Cells(Rooows, Cols).Value)
        Next Cols
    
    Next Rooows

End Sub
