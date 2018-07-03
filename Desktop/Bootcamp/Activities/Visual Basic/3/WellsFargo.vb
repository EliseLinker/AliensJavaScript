Sub WellsFargo():

Dim YearSplit() As String
Dim WSName() As String
Dim Cols As Long
Dim LastColumn As String
Dim State() As String

For Each ws In Worksheets

        'Determin the Last Column
        LastColumn = ws.Cells(1, Columns.Count).End(xlToLeft).Column

         ' Determine the Last Row
        LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row

        
        'MsgBox (LastRow)
        
        'Pull State  out of Worksheet Name and Insert it into a new column
        'Use Split to find State in Worksheet Name
        WSName = Split(ws.Name, "_")
        
        'MsgBox (WSName(0))
        
        'Insert Column
        ws.Range("A1").EntireColumn.Insert
        
        ' Add the word State to the First Column Header
        ws.Cells(1, 1).Value = "State"
            
        'MsgBox ("A2:A" & Str(LastRow))
    
        ' Add the State to all rows
        ws.Range("A2:A" & LastRow) = WSName(0)
        
       'Take Year out of Column Header and replace Column Header with Year
        'For Cols = 2 To LastColumn
        '    YearSplit = Split(ws.Cells(1, Cols).Value, " ")

         '   'MsgBox (Str(YearSplit(3)))

        '    ws.Cells(1, Cols).Value = YearSplit(3)

       ' Next Cols
        

Next ws
    MsgBox ("Fixes Complete")
    
End Sub


