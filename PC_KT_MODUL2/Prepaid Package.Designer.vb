<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Prepaid_Package
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
        Me.components = New System.ComponentModel.Container()
        Me.tbsearch = New System.Windows.Forms.TextBox()
        Me.tbservicename = New System.Windows.Forms.TextBox()
        Me.tbprepaidpackageid = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.dgvmanagepackage = New System.Windows.Forms.DataGridView()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.btnlogout = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnviewtransaction = New System.Windows.Forms.Button()
        Me.btnmanageservice = New System.Windows.Forms.Button()
        Me.btnmanagepackage = New System.Windows.Forms.Button()
        Me.btntransactiondeposit = New System.Windows.Forms.Button()
        Me.btnprepaidpackage = New System.Windows.Forms.Button()
        Me.btnmanageemployee = New System.Windows.Forms.Button()
        Me.nudprice = New System.Windows.Forms.NumericUpDown()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.tbroomnumber = New System.Windows.Forms.TextBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.btnsubmit = New System.Windows.Forms.Button()
        Me.PC_KT_MODUL02DataSet = New PC_KT_MODUL2.PC_KT_MODUL02DataSet()
        Me.PrepaidPackageBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.IdDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdCustomerDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdPackageDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.PriceDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.StartDatetimeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CompletedDatetimeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        CType(Me.dgvmanagepackage, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nudprice, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox1.SuspendLayout()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PrepaidPackageBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'tbsearch
        '
        Me.tbsearch.Location = New System.Drawing.Point(595, 73)
        Me.tbsearch.Name = "tbsearch"
        Me.tbsearch.Size = New System.Drawing.Size(247, 20)
        Me.tbsearch.TabIndex = 141
        '
        'tbservicename
        '
        Me.tbservicename.Location = New System.Drawing.Point(274, 399)
        Me.tbservicename.Name = "tbservicename"
        Me.tbservicename.Size = New System.Drawing.Size(200, 20)
        Me.tbservicename.TabIndex = 135
        '
        'tbprepaidpackageid
        '
        Me.tbprepaidpackageid.Location = New System.Drawing.Point(274, 373)
        Me.tbprepaidpackageid.Name = "tbprepaidpackageid"
        Me.tbprepaidpackageid.Size = New System.Drawing.Size(200, 20)
        Me.tbprepaidpackageid.TabIndex = 134
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(172, 425)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(31, 13)
        Me.Label8.TabIndex = 132
        Me.Label8.Text = "Price"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(172, 402)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(50, 13)
        Me.Label7.TabIndex = 131
        Me.Label7.Text = "Package"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(172, 378)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(103, 13)
        Me.Label6.TabIndex = 130
        Me.Label6.Text = "Prepaid Package ID"
        '
        'dgvmanagepackage
        '
        Me.dgvmanagepackage.AutoGenerateColumns = False
        Me.dgvmanagepackage.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvmanagepackage.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdDataGridViewTextBoxColumn, Me.IdCustomerDataGridViewTextBoxColumn, Me.IdPackageDataGridViewTextBoxColumn, Me.PriceDataGridViewTextBoxColumn, Me.StartDatetimeDataGridViewTextBoxColumn, Me.CompletedDatetimeDataGridViewTextBoxColumn})
        Me.dgvmanagepackage.DataSource = Me.PrepaidPackageBindingSource
        Me.dgvmanagepackage.Location = New System.Drawing.Point(169, 104)
        Me.dgvmanagepackage.Name = "dgvmanagepackage"
        Me.dgvmanagepackage.Size = New System.Drawing.Size(673, 227)
        Me.dgvmanagepackage.TabIndex = 129
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(548, 76)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(41, 13)
        Me.Label4.TabIndex = 128
        Me.Label4.Text = "Search"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(388, 44)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(133, 20)
        Me.Label3.TabIndex = 127
        Me.Label3.Text = "Manage Package"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(639, 24)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 126
        Me.Label2.Text = "Hello"
        '
        'btnlogout
        '
        Me.btnlogout.Location = New System.Drawing.Point(713, 19)
        Me.btnlogout.Name = "btnlogout"
        Me.btnlogout.Size = New System.Drawing.Size(75, 23)
        Me.btnlogout.TabIndex = 125
        Me.btnlogout.Text = "logout"
        Me.btnlogout.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(12, 12)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(58, 30)
        Me.Button1.TabIndex = 124
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
        Me.Label1.TabIndex = 123
        Me.Label1.Text = "Esemka Laundry"
        '
        'btnviewtransaction
        '
        Me.btnviewtransaction.Location = New System.Drawing.Point(12, 256)
        Me.btnviewtransaction.Name = "btnviewtransaction"
        Me.btnviewtransaction.Size = New System.Drawing.Size(121, 32)
        Me.btnviewtransaction.TabIndex = 122
        Me.btnviewtransaction.Text = "View Transaction"
        Me.btnviewtransaction.UseVisualStyleBackColor = True
        '
        'btnmanageservice
        '
        Me.btnmanageservice.Location = New System.Drawing.Point(12, 104)
        Me.btnmanageservice.Name = "btnmanageservice"
        Me.btnmanageservice.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageservice.TabIndex = 121
        Me.btnmanageservice.Text = "Manage Service"
        Me.btnmanageservice.UseVisualStyleBackColor = True
        '
        'btnmanagepackage
        '
        Me.btnmanagepackage.Location = New System.Drawing.Point(12, 142)
        Me.btnmanagepackage.Name = "btnmanagepackage"
        Me.btnmanagepackage.Size = New System.Drawing.Size(121, 32)
        Me.btnmanagepackage.TabIndex = 120
        Me.btnmanagepackage.Text = "Manage Package"
        Me.btnmanagepackage.UseVisualStyleBackColor = True
        '
        'btntransactiondeposit
        '
        Me.btntransactiondeposit.Location = New System.Drawing.Point(12, 180)
        Me.btntransactiondeposit.Name = "btntransactiondeposit"
        Me.btntransactiondeposit.Size = New System.Drawing.Size(121, 32)
        Me.btntransactiondeposit.TabIndex = 119
        Me.btntransactiondeposit.Text = "Transaction Deposit"
        Me.btntransactiondeposit.UseVisualStyleBackColor = True
        '
        'btnprepaidpackage
        '
        Me.btnprepaidpackage.Location = New System.Drawing.Point(12, 218)
        Me.btnprepaidpackage.Name = "btnprepaidpackage"
        Me.btnprepaidpackage.Size = New System.Drawing.Size(121, 32)
        Me.btnprepaidpackage.TabIndex = 118
        Me.btnprepaidpackage.Text = "Prepaid Package"
        Me.btnprepaidpackage.UseVisualStyleBackColor = True
        '
        'btnmanageemployee
        '
        Me.btnmanageemployee.Location = New System.Drawing.Point(12, 66)
        Me.btnmanageemployee.Name = "btnmanageemployee"
        Me.btnmanageemployee.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageemployee.TabIndex = 117
        Me.btnmanageemployee.Text = "Manage Employee"
        Me.btnmanageemployee.UseVisualStyleBackColor = True
        '
        'nudprice
        '
        Me.nudprice.Location = New System.Drawing.Point(274, 425)
        Me.nudprice.Name = "nudprice"
        Me.nudprice.Size = New System.Drawing.Size(200, 20)
        Me.nudprice.TabIndex = 142
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label11)
        Me.GroupBox1.Controls.Add(Me.Label12)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.tbroomnumber)
        Me.GroupBox1.Controls.Add(Me.Label9)
        Me.GroupBox1.Location = New System.Drawing.Point(534, 350)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(271, 131)
        Me.GroupBox1.TabIndex = 143
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Customer"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(85, 90)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(45, 13)
        Me.Label11.TabIndex = 131
        Me.Label11.Text = "Address"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(85, 66)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(35, 13)
        Me.Label12.TabIndex = 130
        Me.Label12.Text = "Name"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(12, 90)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(45, 13)
        Me.Label10.TabIndex = 129
        Me.Label10.Text = "Address"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(12, 66)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(35, 13)
        Me.Label5.TabIndex = 128
        Me.Label5.Text = "Name"
        '
        'tbroomnumber
        '
        Me.tbroomnumber.Location = New System.Drawing.Point(108, 19)
        Me.tbroomnumber.Name = "tbroomnumber"
        Me.tbroomnumber.Size = New System.Drawing.Size(142, 20)
        Me.tbroomnumber.TabIndex = 127
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(6, 24)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(78, 13)
        Me.Label9.TabIndex = 126
        Me.Label9.Text = "Phone Number"
        '
        'btnsubmit
        '
        Me.btnsubmit.Location = New System.Drawing.Point(399, 458)
        Me.btnsubmit.Name = "btnsubmit"
        Me.btnsubmit.Size = New System.Drawing.Size(75, 23)
        Me.btnsubmit.TabIndex = 144
        Me.btnsubmit.Text = "Submit"
        Me.btnsubmit.UseVisualStyleBackColor = True
        '
        'PC_KT_MODUL02DataSet
        '
        Me.PC_KT_MODUL02DataSet.DataSetName = "PC_KT_MODUL02DataSet"
        Me.PC_KT_MODUL02DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'PrepaidPackageBindingSource
        '
        Me.PrepaidPackageBindingSource.DataMember = "PrepaidPackage"
        Me.PrepaidPackageBindingSource.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'IdDataGridViewTextBoxColumn
        '
        Me.IdDataGridViewTextBoxColumn.DataPropertyName = "Id"
        Me.IdDataGridViewTextBoxColumn.HeaderText = "Id"
        Me.IdDataGridViewTextBoxColumn.Name = "IdDataGridViewTextBoxColumn"
        Me.IdDataGridViewTextBoxColumn.ReadOnly = True
        '
        'IdCustomerDataGridViewTextBoxColumn
        '
        Me.IdCustomerDataGridViewTextBoxColumn.DataPropertyName = "IdCustomer"
        Me.IdCustomerDataGridViewTextBoxColumn.HeaderText = "IdCustomer"
        Me.IdCustomerDataGridViewTextBoxColumn.Name = "IdCustomerDataGridViewTextBoxColumn"
        '
        'IdPackageDataGridViewTextBoxColumn
        '
        Me.IdPackageDataGridViewTextBoxColumn.DataPropertyName = "IdPackage"
        Me.IdPackageDataGridViewTextBoxColumn.HeaderText = "IdPackage"
        Me.IdPackageDataGridViewTextBoxColumn.Name = "IdPackageDataGridViewTextBoxColumn"
        '
        'PriceDataGridViewTextBoxColumn
        '
        Me.PriceDataGridViewTextBoxColumn.DataPropertyName = "Price"
        Me.PriceDataGridViewTextBoxColumn.HeaderText = "Price"
        Me.PriceDataGridViewTextBoxColumn.Name = "PriceDataGridViewTextBoxColumn"
        '
        'StartDatetimeDataGridViewTextBoxColumn
        '
        Me.StartDatetimeDataGridViewTextBoxColumn.DataPropertyName = "StartDatetime"
        Me.StartDatetimeDataGridViewTextBoxColumn.HeaderText = "StartDatetime"
        Me.StartDatetimeDataGridViewTextBoxColumn.Name = "StartDatetimeDataGridViewTextBoxColumn"
        '
        'CompletedDatetimeDataGridViewTextBoxColumn
        '
        Me.CompletedDatetimeDataGridViewTextBoxColumn.DataPropertyName = "CompletedDatetime"
        Me.CompletedDatetimeDataGridViewTextBoxColumn.HeaderText = "CompletedDatetime"
        Me.CompletedDatetimeDataGridViewTextBoxColumn.Name = "CompletedDatetimeDataGridViewTextBoxColumn"
        '
        'Prepaid_Package
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(922, 575)
        Me.Controls.Add(Me.btnsubmit)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.nudprice)
        Me.Controls.Add(Me.tbsearch)
        Me.Controls.Add(Me.tbservicename)
        Me.Controls.Add(Me.tbprepaidpackageid)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.dgvmanagepackage)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.btnlogout)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnviewtransaction)
        Me.Controls.Add(Me.btnmanageservice)
        Me.Controls.Add(Me.btnmanagepackage)
        Me.Controls.Add(Me.btntransactiondeposit)
        Me.Controls.Add(Me.btnprepaidpackage)
        Me.Controls.Add(Me.btnmanageemployee)
        Me.Name = "Prepaid_Package"
        Me.Text = "Prepaid_Package"
        CType(Me.dgvmanagepackage, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nudprice, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PrepaidPackageBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents tbsearch As TextBox
    Friend WithEvents tbservicename As TextBox
    Friend WithEvents tbprepaidpackageid As TextBox
    Friend WithEvents Label8 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents dgvmanagepackage As DataGridView
    Friend WithEvents Label4 As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents btnlogout As Button
    Friend WithEvents Button1 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents btnviewtransaction As Button
    Friend WithEvents btnmanageservice As Button
    Friend WithEvents btnmanagepackage As Button
    Friend WithEvents btntransactiondeposit As Button
    Friend WithEvents btnprepaidpackage As Button
    Friend WithEvents btnmanageemployee As Button
    Friend WithEvents nudprice As NumericUpDown
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents tbroomnumber As TextBox
    Friend WithEvents Label9 As Label
    Friend WithEvents btnsubmit As Button
    Friend WithEvents IdDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdCustomerDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdPackageDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents PriceDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents StartDatetimeDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents CompletedDatetimeDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents PrepaidPackageBindingSource As BindingSource
    Friend WithEvents PC_KT_MODUL02DataSet As PC_KT_MODUL02DataSet
End Class
