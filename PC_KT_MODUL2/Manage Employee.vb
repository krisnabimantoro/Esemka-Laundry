Imports System.Data.SqlClient
Public Class Manage_Employee
    Dim theConnection As New SqlConnection
    Dim theCommand As New SqlCommand
    Dim theDataReader As SqlDataReader
    Private Sub Manage_Employee_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.PrepaidPackage' table. You can move, or remove it, as needed.
        Me.PrepaidPackageTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.PrepaidPackage)
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.Package' table. You can move, or remove it, as needed.
        Me.PackageTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.Package)
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.Service' table. You can move, or remove it, as needed.
        Me.ServiceTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.Service)
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.Job' table. You can move, or remove it, as needed.
        Me.JobTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.Job)
        'TODO: This line of code loads data into the 'PC_KT_MODUL02DataSet.Employee' table. You can move, or remove it, as needed.
        Me.EmployeeTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.Employee)
        theConnection.ConnectionString = "SERVER = .\SQLEXPRESS; DATABASE = PC_KT_MODUL02; INTEGRATED SECURITY = TRUE"
    End Sub

    Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles dgvemployee.CellContentClick
        On Error Resume Next
        Me.labelid = dgvemployee.Rows(e.RowIndex).Cells(1).Value = labelid.Text
        Me.tbpassword = dgvemployee.Rows(e.RowIndex).Cells(1).Value = tbpassword.Text
        Me.tbname = dgvemployee.Rows(e.RowIndex).Cells(2).Value = tbname.Text
        Me.tbemail = dgvemployee.Rows(e.RowIndex).Cells(3).Value = tbemail.Text
        Me.tbaddress = dgvemployee.Rows(e.RowIndex).Cells(4).Value = tbaddress.Text
        Me.tbphonenumber = dgvemployee.Rows(e.RowIndex).Cells(5).Value = tbphonenumber.Text
        Me.dtpdateofbirth = dgvemployee.Rows(e.RowIndex).Cells(6).Value = dtpdateofbirth.Value
        Me.cbjob = dgvemployee.Rows(e.RowIndex).Cells(7).Value = cbjob.Text
        Me.nudsalary = dgvemployee.Rows(e.RowIndex).Cells(8).Value = nudsalary.Value

        'Me.labelid = dgvemployee.Rows(e.RowIndex).Cells(1).Value = labelid
        'Me.tbpassword = dgvemployee.Rows(e.RowIndex).Cells(1).Value = tbpassword.Text
        'Me.tbname = dgvemployee.Rows(e.RowIndex).Cells(2).Value = tbname.Text
        'Me.tbemail = dgvemployee.Rows(e.RowIndex).Cells(3).Value = tbemail.Text
        'Me.tbaddress = dgvemployee.Rows(e.RowIndex).Cells(4).Value = tbaddress.Text
        'Me.tbphonenumber = dgvemployee.Rows(e.RowIndex).Cells(5).Value = tbphonenumber.Text
        'Me.dtpdateofbirth = dgvemployee.Rows(e.RowIndex).Cells(6).Value = dtpdateofbirth.Value
        'Me.cbjob = dgvemployee.Rows(e.RowIndex).Cells(7).Value = cbjob.Text
        'Me.nudsalary = dgvemployee.Rows(e.RowIndex).Cells(8).Value = nudsalary.Value

    End Sub

    Private Sub btninsert_Click(sender As Object, e As EventArgs) Handles btninsert.Click
        theConnection.Open()

        theCommand.Parameters.Add("@Name", SqlDbType.VarChar).Value = Me.tbname.Text
        theCommand.Parameters.Add("@Password", SqlDbType.VarChar).Value = Me.tbpassword.Text
        theCommand.Parameters.Add("@Email", SqlDbType.VarChar).Value = Me.tbemail.Text
        theCommand.Parameters.Add("@Address", SqlDbType.VarChar).Value = Me.tbaddress.Text
        theCommand.Parameters.Add("@DateofBirth", SqlDbType.Date).Value = Me.dtpdateofbirth.Value
        theCommand.Parameters.Add("@IdJob", SqlDbType.Int).Value = Me.cbjob.SelectedValue
        theCommand.Parameters.Add("@PhoneNumber", SqlDbType.VarChar).Value = Me.tbphonenumber.Text
        theCommand.Parameters.Add("@Salary", SqlDbType.Float).Value = Me.nudsalary.Value
        Using theDataReader
            theCommand.Connection = theConnection
            theCommand.CommandText = "Insert into Employee (Name, Password, Email, Address, DateofBirth, IdJob, PhoneNumber, Salary) Values (@Name, @Password, @Email, @Address, @DateofBirth, @PhoneNumber, @IdJob, @Salary)"
            theDataReader = theCommand.ExecuteReader()
            Me.EmployeeTableAdapter.Fill(Me.PC_KT_MODUL02DataSet.Employee)
            theCommand.Parameters.Clear()
            theConnection.Close()
        End Using


    End Sub
End Class