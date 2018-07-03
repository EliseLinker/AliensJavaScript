Sub StockHW():

Dim SumVolume as Long
Dim HoldTicker as String 
Dim Rooows as Long 
Dim Cols as Long 
Dim LastRos as Long 
Dim TickerCol as String 
Dim VolumeCol as String 


        
    LastRow = Cells(Rows.Count, 1).End(xlUp).Row 

    HoldTicker = ""
    SumVolume = 0 

    For Rooows = 2 to LastRow 
        TickerCol = Cells(Rooows,1).Value 
        VolumeCol = Cells(Rooows,7).Value 


        HoldTicker = TickerCol

        SumVolume = SumVolume + VolumeCol
        MsgBox("Hold Ticker " + HoldTicker)
        MsgBox("Sum Vol " + Str(SumVolume))

    Next Rooows 

End Sub 