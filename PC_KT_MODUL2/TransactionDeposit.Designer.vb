<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class TransactionDeposit
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
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnviewtransaction = New System.Windows.Forms.Button()
        Me.btnmanageservice = New System.Windows.Forms.Button()
        Me.btnmanagepackage = New System.Windows.Forms.Button()
        Me.btntransactiondeposit = New System.Windows.Forms.Button()
        Me.btnprepaidpackage = New System.Windows.Forms.Button()
        Me.btnmanageemployee = New System.Windows.Forms.Button()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnlogout = New System.Windows.Forms.Button()
        Me.cbservice = New System.Windows.Forms.ComboBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.tbroomnumber = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.tbperunit = New System.Windows.Forms.TextBox()
        Me.nudtotalunit = New System.Windows.Forms.NumericUpDown()
        Me.CheckBox1 = New System.Windows.Forms.CheckBox()
        Me.btnadd = New System.Windows.Forms.Button()
        Me.dgvtransactiondeposit = New System.Windows.Forms.DataGridView()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.Label16 = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        CType(Me.nudtotalunit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgvtransactiondeposit, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(12, 12)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(58, 30)
        Me.Button1.TabIndex = 102
        Me.Button1.Text = "Hide"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.Label1.Location = New System.Drawing.Point(125, 12)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(159, 25)
        Me.Label1.TabIndex = 101
        Me.Label1.Text = "Esemka Laundry"
        '
        'btnviewtransaction
        '
        Me.btnviewtransaction.Location = New System.Drawing.Point(12, 256)
        Me.btnviewtransaction.Name = "btnviewtransaction"
        Me.btnviewtransaction.Size = New System.Drawing.Size(121, 32)
        Me.btnviewtransaction.TabIndex = 100
        Me.btnviewtransaction.Text = "View Transaction"
        Me.btnviewtransaction.UseVisualStyleBackColor = True
        '
        'btnmanageservice
        '
        Me.btnmanageservice.Location = New System.Drawing.Point(12, 104)
        Me.btnmanageservice.Name = "btnmanageservice"
        Me.btnmanageservice.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageservice.TabIndex = 99
        Me.btnmanageservice.Text = "Manage Service"
        Me.btnmanageservice.UseVisualStyleBackColor = True
        '
        'btnmanagepackage
        '
        Me.btnmanagepackage.Location = New System.Drawing.Point(12, 142)
        Me.btnmanagepackage.Name = "btnmanagepackage"
        Me.btnmanagepackage.Size = New System.Drawing.Size(121, 32)
        Me.btnmanagepackage.TabIndex = 98
        Me.btnmanagepackage.Text = "Manage Package"
        Me.btnmanagepackage.UseVisualStyleBackColor = True
        '
        'btntransactiondeposit
        '
        Me.btntransactiondeposit.Location = New System.Drawing.Point(12, 180)
        Me.btntransactiondeposit.Name = "btntransactiondeposit"
        Me.btntransactiondeposit.Size = New System.Drawing.Size(121, 32)
        Me.btntransactiondeposit.TabIndex = 97
        Me.btntransactiondeposit.Text = "Transaction Deposit"
        Me.btntransactiondeposit.UseVisualStyleBackColor = True
        '
        'btnprepaidpackage
        '
        Me.btnprepaidpackage.Location = New System.Drawing.Point(12, 218)
        Me.btnprepaidpackage.Name = "btnprepaidpackage"
        Me.btnprepaidpackage.Size = New System.Drawing.Size(121, 32)
        Me.btnprepaidpackage.TabIndex = 96
        Me.btnprepaidpackage.Text = "Prepaid Package"
        Me.btnprepaidpackage.UseVisualStyleBackColor = True
        '
        'btnmanageemployee
        '
        Me.btnmanageemployee.Location = New System.Drawing.Point(12, 66)
        Me.btnmanageemployee.Name = "btnmanageemployee"
        Me.btnmanageemployee.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageemployee.TabIndex = 95
        Me.btnmanageemployee.Text = "Manage Employee"
        Me.btnmanageemployee.UseVisualStyleBackColor = True
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(382, 42)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(151, 20)
        Me.Label3.TabIndex = 103
        Me.Label3.Text = "Transaction Deposit"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(726, 17)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 105
        Me.Label2.Text = "Hello"
        '
        'btnlogout
        '
        Me.btnlogout.Location = New System.Drawing.Point(800, 12)
        Me.btnlogout.Name = "btnlogout"
        Me.btnlogout.Size = New System.Drawing.Size(75, 23)
        Me.btnlogout.TabIndex = 104
        Me.btnlogout.Text = "logout"
        Me.btnlogout.UseVisualStyleBackColor = True
        '
        'cbservice
        '
        Me.cbservice.FormattingEnabled = True
        Me.cbservice.Location = New System.Drawing.Point(252, 218)
        Me.cbservice.Name = "cbservice"
        Me.cbservice.Size = New System.Drawing.Size(142, 21)
        Me.cbservice.TabIndex = 123
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(174, 274)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(53, 13)
        Me.Label9.TabIndex = 120
        Me.Label9.Text = "Total Unit"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(174, 248)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(72, 13)
        Me.Label8.TabIndex = 119
        Me.Label8.Text = "Price Per Unit"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(174, 221)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(46, 13)
        Me.Label7.TabIndex = 118
        Me.Label7.Text = "Service "
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label11)
        Me.GroupBox1.Controls.Add(Me.Label12)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.tbroomnumber)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Location = New System.Drawing.Point(177, 77)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(698, 86)
        Me.GroupBox1.TabIndex = 125
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Customer"
        '
        'tbroomnumber
        '
        Me.tbroomnumber.Location = New System.Drawing.Point(108, 19)
        Me.tbroomnumber.Name = "tbroomnumber"
        Me.tbroomnumber.Size = New System.Drawing.Size(142, 20)
        Me.tbroomnumber.TabIndex = 127
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(6, 24)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(78, 13)
        Me.Label4.TabIndex = 126
        Me.Label4.Text = "Phone Number"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(331, 22)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(35, 13)
        Me.Label5.TabIndex = 128
        Me.Label5.Text = "Name"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(331, 46)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(45, 13)
        Me.Label10.TabIndex = 129
        Me.Label10.Text = "Address"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(404, 46)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(45, 13)
        Me.Label11.TabIndex = 131
        Me.Label11.Text = "Address"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(404, 22)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(35, 13)
        Me.Label12.TabIndex = 130
        Me.Label12.Text = "Name"
        '
        'tbperunit
        '
        Me.tbperunit.Location = New System.Drawing.Point(252, 245)
        Me.tbperunit.Name = "tbperunit"
        Me.tbperunit.Size = New System.Drawing.Size(142, 20)
        Me.tbperunit.TabIndex = 132
        '
        'nudtotalunit
        '
        Me.nudtotalunit.Location = New System.Drawing.Point(252, 272)
        Me.nudtotalunit.Name = "nudtotalunit"
        Me.nudtotalunit.Size = New System.Drawing.Size(142, 20)
        Me.nudtotalunit.TabIndex = 133
        '
        'CheckBox1
        '
        Me.CheckBox1.AutoSize = True
        Me.CheckBox1.Enabled = False
        Me.CheckBox1.Location = New System.Drawing.Point(252, 298)
        Me.CheckBox1.Name = "CheckBox1"
        Me.CheckBox1.Size = New System.Drawing.Size(130, 17)
        Me.CheckBox1.TabIndex = 134
        Me.CheckBox1.Text = "Use Prepaid Package"
        Me.CheckBox1.UseVisualStyleBackColor = True
        '
        'btnadd
        '
        Me.btnadd.Location = New System.Drawing.Point(252, 336)
        Me.btnadd.Name = "btnadd"
        Me.btnadd.Size = New System.Drawing.Size(75, 23)
        Me.btnadd.TabIndex = 135
        Me.btnadd.Text = "Add"
        Me.btnadd.UseVisualStyleBackColor = True
        '
        'dgvtransactiondeposit
        '
        Me.dgvtransactiondeposit.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvtransactiondeposit.Location = New System.Drawing.Point(413, 180)
        Me.dgvtransactiondeposit.Name = "dgvtransactiondeposit"
        Me.dgvtransactiondeposit.Size = New System.Drawing.Size(462, 251)
        Me.dgvtransactiondeposit.TabIndex = 136
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.0!)
        Me.Label6.Location = New System.Drawing.Point(734, 471)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(111, 18)
        Me.Label6.TabIndex = 135
        Me.Label6.Text = "2 days 00:00:00"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.0!)
        Me.Label13.Location = New System.Drawing.Point(747, 447)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(31, 18)
        Me.Label13.TabIndex = 134
        Me.Label13.Text = "Rp."
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.0!)
        Me.Label14.Location = New System.Drawing.Point(532, 471)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(119, 18)
        Me.Label14.TabIndex = 133
        Me.Label14.Text = "Estimation Time:"
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.0!)
        Me.Label15.Location = New System.Drawing.Point(568, 447)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(79, 18)
        Me.Label15.TabIndex = 132
        Me.Label15.Text = "Total Price"
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Font = New System.Drawing.Font("Microsoft Sans Serif", 11.0!)
        Me.Label16.Location = New System.Drawing.Point(784, 447)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(40, 18)
        Me.Label16.TabIndex = 137
        Me.Label16.Text = "2400"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(800, 513)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 138
        Me.Button2.Text = "Submit"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'TransactionDeposit
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(922, 575)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Label16)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.dgvtransactiondeposit)
        Me.Controls.Add(Me.Label13)
        Me.Controls.Add(Me.btnadd)
        Me.Controls.Add(Me.Label14)
        Me.Controls.Add(Me.CheckBox1)
        Me.Controls.Add(Me.Label15)
        Me.Controls.Add(Me.nudtotalunit)
        Me.Controls.Add(Me.tbperunit)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.cbservice)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.btnlogout)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnviewtransaction)
        Me.Controls.Add(Me.btnmanageservice)
        Me.Controls.Add(Me.btnmanagepackage)
        Me.Controls.Add(Me.btntransactiondeposit)
        Me.Controls.Add(Me.btnprepaidpackage)
        Me.Controls.Add(Me.btnmanageemployee)
        Me.Name = "TransactionDeposit"
        Me.Text = "TransactionDeposit"
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.nudtotalunit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgvtransactiondeposit, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Button1 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents btnviewtransaction As Button
    Friend WithEvents btnmanageservice As Button
    Friend WithEvents btnmanagepackage As Button
    Friend WithEvents btntransactiondeposit As Button
    Friend WithEvents btnprepaidpackage As Button
    Friend WithEvents btnmanageemployee As Button
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents btnlogout As Button
    Friend WithEvents cbservice As ComboBox
    Friend WithEvents Label9 As Label
    Friend WithEvents Label8 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label5 As Label
    Friend WithEvents tbroomnumber As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents tbperunit As TextBox
    Friend WithEvents nudtotalunit As NumericUpDown
    Friend WithEvents CheckBox1 As CheckBox
    Friend WithEvents btnadd As Button
    Friend WithEvents dgvtransactiondeposit As DataGridView
    Friend WithEvents Label6 As Label
    Friend WithEvents Label13 As Label
    Friend WithEvents Label14 As Label
    Friend WithEvents Label15 As Label
    Friend WithEvents Label16 As Label
    Friend WithEvents Button2 As Button
End Class
