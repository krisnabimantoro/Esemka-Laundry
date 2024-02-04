<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Customer
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.tbphonenumber = New System.Windows.Forms.TextBox()
        Me.tbcustomername = New System.Windows.Forms.TextBox()
        Me.btnsubmit = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.tbaddress = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'tbphonenumber
        '
        Me.tbphonenumber.Location = New System.Drawing.Point(134, 104)
        Me.tbphonenumber.Name = "tbphonenumber"
        Me.tbphonenumber.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.tbphonenumber.Size = New System.Drawing.Size(215, 20)
        Me.tbphonenumber.TabIndex = 13
        '
        'tbcustomername
        '
        Me.tbcustomername.Location = New System.Drawing.Point(134, 78)
        Me.tbcustomername.Name = "tbcustomername"
        Me.tbcustomername.Size = New System.Drawing.Size(215, 20)
        Me.tbcustomername.TabIndex = 12
        '
        'btnsubmit
        '
        Me.btnsubmit.Location = New System.Drawing.Point(134, 203)
        Me.btnsubmit.Name = "btnsubmit"
        Me.btnsubmit.Size = New System.Drawing.Size(75, 23)
        Me.btnsubmit.TabIndex = 10
        Me.btnsubmit.Text = "Submit"
        Me.btnsubmit.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(43, 117)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(78, 13)
        Me.Label3.TabIndex = 9
        Me.Label3.Text = "Phone Number"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(43, 81)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(82, 13)
        Me.Label2.TabIndex = 8
        Me.Label2.Text = "Customer Name"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.Label1.Location = New System.Drawing.Point(129, 24)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(138, 25)
        Me.Label1.TabIndex = 7
        Me.Label1.Text = "Add Customer"
        '
        'tbaddress
        '
        Me.tbaddress.Location = New System.Drawing.Point(134, 130)
        Me.tbaddress.Multiline = True
        Me.tbaddress.Name = "tbaddress"
        Me.tbaddress.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.tbaddress.Size = New System.Drawing.Size(215, 57)
        Me.tbaddress.TabIndex = 14
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(43, 133)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(45, 13)
        Me.Label4.TabIndex = 15
        Me.Label4.Text = "Address"
        '
        'Customer
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(468, 320)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.tbaddress)
        Me.Controls.Add(Me.tbphonenumber)
        Me.Controls.Add(Me.tbcustomername)
        Me.Controls.Add(Me.btnsubmit)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Customer"
        Me.Text = "Customer"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents tbphonenumber As TextBox
    Friend WithEvents tbcustomername As TextBox
    Friend WithEvents btnsubmit As Button
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents tbaddress As TextBox
    Friend WithEvents Label4 As Label
End Class
