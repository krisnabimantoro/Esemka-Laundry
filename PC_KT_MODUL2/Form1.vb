Imports System.Data.SqlClient

Public Class Form1
    Dim theConnection As New SqlConnection
    Dim theCommand As New SqlCommand
    Dim theDataReader As SqlDataReader

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles btnlogin.Click
        theConnection.Open()
        theCommand.Parameters.Add("@Password", SqlDbType.VarChar).Value = Me.tbpassword.Text
        theCommand.Parameters.Add("@Name", SqlDbType.VarChar).Value = Me.tbusername.Text

        Using theDataReader
            theCommand.Connection = theConnection
            theCommand.CommandText = "SELECT Name, Password, IdJob FROM Employee WHERE Name = @Name AND Password = @Password"
            theDataReader = theCommand.ExecuteReader()

            If theDataReader.Read = True Then
                If theDataReader("IdJob") = "1" Then
                    MainForm.Show()
                    Me.Hide()
                ElseIf theDataReader("IdJob") = "2" Then
                    MainForm.Show()
                    Me.Hide()

                End If

            Else
                MsgBox("Please Try Again, Your data is not valid", 0, "login")
            End If

            theCommand.Parameters.Clear()
            theConnection.Close()


        End Using

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        theConnection.ConnectionString = "SERVER = .\SQLEXPRESS; DATABASE = PC_KT_MODUL02; INTEGRATED SECURITY = TRUE"

    End Sub
End Class
