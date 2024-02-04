Imports System.Data.SqlClient

Public Class MainForm
    Dim theConnection As SqlConnection
    Dim theCommand As SqlCommand
    Dim theDataReader As SqlDataReader
    Private Sub btnmanageemployee_Click(sender As Object, e As EventArgs) Handles btnmanageemployee.Click
        Manage_Employee.Show()
        Me.Hide()
    End Sub

    Private Sub btnmanageservice_Click(sender As Object, e As EventArgs) Handles btnmanageservice.Click
        ManageService.Show()
        Me.Hide()
    End Sub

    Private Sub btnmanagepackage_Click(sender As Object, e As EventArgs) Handles btnmanagepackage.Click
        ManagePackage.Show()
        Me.Hide()
    End Sub

    Private Sub btntransactiondeposit_Click(sender As Object, e As EventArgs) Handles btntransactiondeposit.Click
        TransactionDeposit.Show()
        Me.Hide()
    End Sub

    Private Sub btnprepaidpackage_Click(sender As Object, e As EventArgs) Handles btnprepaidpackage.Click
        Prepaid_Package.Show()
        Me.Hide()
    End Sub

    Private Sub btnviewtransaction_Click(sender As Object, e As EventArgs) Handles btnviewtransaction.Click
        ViewTransaction.Show()
        Me.Hide()
    End Sub

    Private Sub MainForm_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub btnlogout_Click(sender As Object, e As EventArgs) Handles btnlogout.Click
        Form1.Show()
        Me.Hide()
    End Sub
End Class