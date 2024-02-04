Public Class ManagePackage
    Private Sub ManagePackage_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.DetailDeposit' table. You can move, or remove it, as needed.
        Me.DetailDepositTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.DetailDeposit)
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.HeaderDeposit' table. You can move, or remove it, as needed.
        Me.HeaderDepositTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.HeaderDeposit)

    End Sub
End Class