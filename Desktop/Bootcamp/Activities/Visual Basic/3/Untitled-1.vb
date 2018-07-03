Sub CreditCardTotals():

Dim CreditCardBrand as String 
Dim SumAmountCharged as Double 
Dim TotalAmountCharged as Double 
Dim Rooows as Long 
Dim ColumnBrand as String 
Dim ColumnAmount as Double  


ColumnBrand = 1
ColumnAmount = 3  

    For Rooows = 2 to 100 
        CreditCardBrand = Cells(Rooows, ColumnBrand).Value 
        SumAmountCharged = SumAmountCharged + Cells(Rooows, COlumnAmount).Value 

        MsgBox("Brand " + str(CreditCardBrand) + " Sum Amount " + str(SumAmountCharged))
        
    Next Rooows 



End Sub 