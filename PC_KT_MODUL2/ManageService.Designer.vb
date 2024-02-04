<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ManageService
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
        Me.nudduratuion = New System.Windows.Forms.NumericUpDown()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.btndelete = New System.Windows.Forms.Button()
        Me.btnupdate = New System.Windows.Forms.Button()
        Me.btninsert = New System.Windows.Forms.Button()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.tbservicename = New System.Windows.Forms.TextBox()
        Me.tbserviceid = New System.Windows.Forms.TextBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.dgvmanageservice = New System.Windows.Forms.DataGridView()
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
        Me.cbcategory = New System.Windows.Forms.ComboBox()
        Me.cbunit = New System.Windows.Forms.ComboBox()
        Me.nudprice = New System.Windows.Forms.NumericUpDown()
        Me.PC_KT_MODUL02DataSet = New PC_KT_MODUL2.PC_KT_MODUL02DataSet()
        Me.ServiceBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.IdDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NameDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdCategoryDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdUnitDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.PriceUnitDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.EstimationDurationDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        CType(Me.nudduratuion, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dgvmanageservice, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nudprice, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.ServiceBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'tbsearch
        '
        Me.tbsearch.Location = New System.Drawing.Point(595, 73)
        Me.tbsearch.Name = "tbsearch"
        Me.tbsearch.Size = New System.Drawing.Size(247, 20)
        Me.tbsearch.TabIndex = 83
        '
        'nudduratuion
        '
        Me.nudduratuion.Location = New System.Drawing.Point(642, 395)
        Me.nudduratuion.Name = "nudduratuion"
        Me.nudduratuion.Size = New System.Drawing.Size(200, 20)
        Me.nudduratuion.TabIndex = 81
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(692, 464)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(75, 23)
        Me.Button7.TabIndex = 79
        Me.Button7.Text = "Cancel"
        Me.Button7.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(597, 464)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(75, 23)
        Me.Button6.TabIndex = 78
        Me.Button6.Text = "Save"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'btndelete
        '
        Me.btndelete.Location = New System.Drawing.Point(735, 435)
        Me.btndelete.Name = "btndelete"
        Me.btndelete.Size = New System.Drawing.Size(75, 23)
        Me.btndelete.TabIndex = 77
        Me.btndelete.Text = "Delete"
        Me.btndelete.UseVisualStyleBackColor = True
        '
        'btnupdate
        '
        Me.btnupdate.Location = New System.Drawing.Point(644, 435)
        Me.btnupdate.Name = "btnupdate"
        Me.btnupdate.Size = New System.Drawing.Size(75, 23)
        Me.btnupdate.TabIndex = 76
        Me.btnupdate.Text = "Update"
        Me.btnupdate.UseVisualStyleBackColor = True
        '
        'btninsert
        '
        Me.btninsert.Location = New System.Drawing.Point(553, 435)
        Me.btninsert.Name = "btninsert"
        Me.btninsert.Size = New System.Drawing.Size(75, 23)
        Me.btninsert.TabIndex = 75
        Me.btninsert.Text = "Insert"
        Me.btninsert.UseVisualStyleBackColor = True
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(548, 402)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(65, 13)
        Me.Label11.TabIndex = 72
        Me.Label11.Text = "Est Duration"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(548, 376)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(31, 13)
        Me.Label10.TabIndex = 71
        Me.Label10.Text = "Price"
        '
        'tbservicename
        '
        Me.tbservicename.Location = New System.Drawing.Point(274, 399)
        Me.tbservicename.Name = "tbservicename"
        Me.tbservicename.Size = New System.Drawing.Size(200, 20)
        Me.tbservicename.TabIndex = 68
        '
        'tbserviceid
        '
        Me.tbserviceid.Location = New System.Drawing.Point(274, 373)
        Me.tbserviceid.Name = "tbserviceid"
        Me.tbserviceid.Size = New System.Drawing.Size(200, 20)
        Me.tbserviceid.TabIndex = 67
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(172, 455)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(26, 13)
        Me.Label9.TabIndex = 65
        Me.Label9.Text = "Unit"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(172, 425)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(49, 13)
        Me.Label8.TabIndex = 64
        Me.Label8.Text = "Category"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(172, 402)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(74, 13)
        Me.Label7.TabIndex = 63
        Me.Label7.Text = "Service Name"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(172, 378)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(57, 13)
        Me.Label6.TabIndex = 62
        Me.Label6.Text = "Service ID"
        '
        'dgvmanageservice
        '
        Me.dgvmanageservice.AutoGenerateColumns = False
        Me.dgvmanageservice.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvmanageservice.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdDataGridViewTextBoxColumn, Me.NameDataGridViewTextBoxColumn, Me.IdCategoryDataGridViewTextBoxColumn, Me.IdUnitDataGridViewTextBoxColumn, Me.PriceUnitDataGridViewTextBoxColumn, Me.EstimationDurationDataGridViewTextBoxColumn})
        Me.dgvmanageservice.DataSource = Me.ServiceBindingSource
        Me.dgvmanageservice.Location = New System.Drawing.Point(169, 104)
        Me.dgvmanageservice.Name = "dgvmanageservice"
        Me.dgvmanageservice.Size = New System.Drawing.Size(673, 227)
        Me.dgvmanageservice.TabIndex = 60
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(548, 76)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(41, 13)
        Me.Label4.TabIndex = 59
        Me.Label4.Text = "Search"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(388, 44)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(123, 20)
        Me.Label3.TabIndex = 58
        Me.Label3.Text = "Manage Service"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(639, 24)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 57
        Me.Label2.Text = "Hello"
        '
        'btnlogout
        '
        Me.btnlogout.Location = New System.Drawing.Point(713, 19)
        Me.btnlogout.Name = "btnlogout"
        Me.btnlogout.Size = New System.Drawing.Size(75, 23)
        Me.btnlogout.TabIndex = 56
        Me.btnlogout.Text = "logout"
        Me.btnlogout.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(12, 12)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(58, 30)
        Me.Button1.TabIndex = 55
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
        Me.Label1.TabIndex = 54
        Me.Label1.Text = "Esemka Laundry"
        '
        'btnviewtransaction
        '
        Me.btnviewtransaction.Location = New System.Drawing.Point(12, 256)
        Me.btnviewtransaction.Name = "btnviewtransaction"
        Me.btnviewtransaction.Size = New System.Drawing.Size(121, 32)
        Me.btnviewtransaction.TabIndex = 53
        Me.btnviewtransaction.Text = "View Transaction"
        Me.btnviewtransaction.UseVisualStyleBackColor = True
        '
        'btnmanageservice
        '
        Me.btnmanageservice.Location = New System.Drawing.Point(12, 104)
        Me.btnmanageservice.Name = "btnmanageservice"
        Me.btnmanageservice.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageservice.TabIndex = 52
        Me.btnmanageservice.Text = "Manage Service"
        Me.btnmanageservice.UseVisualStyleBackColor = True
        '
        'btnmanagepackage
        '
        Me.btnmanagepackage.Location = New System.Drawing.Point(12, 142)
        Me.btnmanagepackage.Name = "btnmanagepackage"
        Me.btnmanagepackage.Size = New System.Drawing.Size(121, 32)
        Me.btnmanagepackage.TabIndex = 51
        Me.btnmanagepackage.Text = "Manage Package"
        Me.btnmanagepackage.UseVisualStyleBackColor = True
        '
        'btntransactiondeposit
        '
        Me.btntransactiondeposit.Location = New System.Drawing.Point(12, 180)
        Me.btntransactiondeposit.Name = "btntransactiondeposit"
        Me.btntransactiondeposit.Size = New System.Drawing.Size(121, 32)
        Me.btntransactiondeposit.TabIndex = 50
        Me.btntransactiondeposit.Text = "Transaction Deposit"
        Me.btntransactiondeposit.UseVisualStyleBackColor = True
        '
        'btnprepaidpackage
        '
        Me.btnprepaidpackage.Location = New System.Drawing.Point(12, 218)
        Me.btnprepaidpackage.Name = "btnprepaidpackage"
        Me.btnprepaidpackage.Size = New System.Drawing.Size(121, 32)
        Me.btnprepaidpackage.TabIndex = 49
        Me.btnprepaidpackage.Text = "Prepaid Package"
        Me.btnprepaidpackage.UseVisualStyleBackColor = True
        '
        'btnmanageemployee
        '
        Me.btnmanageemployee.Location = New System.Drawing.Point(12, 66)
        Me.btnmanageemployee.Name = "btnmanageemployee"
        Me.btnmanageemployee.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageemployee.TabIndex = 48
        Me.btnmanageemployee.Text = "Manage Employee"
        Me.btnmanageemployee.UseVisualStyleBackColor = True
        '
        'cbcategory
        '
        Me.cbcategory.FormattingEnabled = True
        Me.cbcategory.Location = New System.Drawing.Point(274, 425)
        Me.cbcategory.Name = "cbcategory"
        Me.cbcategory.Size = New System.Drawing.Size(200, 21)
        Me.cbcategory.TabIndex = 84
        '
        'cbunit
        '
        Me.cbunit.FormattingEnabled = True
        Me.cbunit.Location = New System.Drawing.Point(274, 452)
        Me.cbunit.Name = "cbunit"
        Me.cbunit.Size = New System.Drawing.Size(200, 21)
        Me.cbunit.TabIndex = 85
        '
        'nudprice
        '
        Me.nudprice.Location = New System.Drawing.Point(642, 369)
        Me.nudprice.Name = "nudprice"
        Me.nudprice.Size = New System.Drawing.Size(200, 20)
        Me.nudprice.TabIndex = 86
        '
        'PC_KT_MODUL02DataSet
        '
        Me.PC_KT_MODUL02DataSet.DataSetName = "PC_KT_MODUL02DataSet"
        Me.PC_KT_MODUL02DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'ServiceBindingSource
        '
        Me.ServiceBindingSource.DataMember = "Service"
        Me.ServiceBindingSource.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'IdDataGridViewTextBoxColumn
        '
        Me.IdDataGridViewTextBoxColumn.DataPropertyName = "Id"
        Me.IdDataGridViewTextBoxColumn.HeaderText = "Id"
        Me.IdDataGridViewTextBoxColumn.Name = "IdDataGridViewTextBoxColumn"
        Me.IdDataGridViewTextBoxColumn.ReadOnly = True
        '
        'NameDataGridViewTextBoxColumn
        '
        Me.NameDataGridViewTextBoxColumn.DataPropertyName = "Name"
        Me.NameDataGridViewTextBoxColumn.HeaderText = "Name"
        Me.NameDataGridViewTextBoxColumn.Name = "NameDataGridViewTextBoxColumn"
        '
        'IdCategoryDataGridViewTextBoxColumn
        '
        Me.IdCategoryDataGridViewTextBoxColumn.DataPropertyName = "IdCategory"
        Me.IdCategoryDataGridViewTextBoxColumn.HeaderText = "IdCategory"
        Me.IdCategoryDataGridViewTextBoxColumn.Name = "IdCategoryDataGridViewTextBoxColumn"
        '
        'IdUnitDataGridViewTextBoxColumn
        '
        Me.IdUnitDataGridViewTextBoxColumn.DataPropertyName = "IdUnit"
        Me.IdUnitDataGridViewTextBoxColumn.HeaderText = "IdUnit"
        Me.IdUnitDataGridViewTextBoxColumn.Name = "IdUnitDataGridViewTextBoxColumn"
        '
        'PriceUnitDataGridViewTextBoxColumn
        '
        Me.PriceUnitDataGridViewTextBoxColumn.DataPropertyName = "PriceUnit"
        Me.PriceUnitDataGridViewTextBoxColumn.HeaderText = "PriceUnit"
        Me.PriceUnitDataGridViewTextBoxColumn.Name = "PriceUnitDataGridViewTextBoxColumn"
        '
        'EstimationDurationDataGridViewTextBoxColumn
        '
        Me.EstimationDurationDataGridViewTextBoxColumn.DataPropertyName = "EstimationDuration"
        Me.EstimationDurationDataGridViewTextBoxColumn.HeaderText = "EstimationDuration"
        Me.EstimationDurationDataGridViewTextBoxColumn.Name = "EstimationDurationDataGridViewTextBoxColumn"
        '
        'ManageService
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(922, 575)
        Me.Controls.Add(Me.nudprice)
        Me.Controls.Add(Me.cbunit)
        Me.Controls.Add(Me.cbcategory)
        Me.Controls.Add(Me.tbsearch)
        Me.Controls.Add(Me.nudduratuion)
        Me.Controls.Add(Me.Button7)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.btndelete)
        Me.Controls.Add(Me.btnupdate)
        Me.Controls.Add(Me.btninsert)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.tbservicename)
        Me.Controls.Add(Me.tbserviceid)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.dgvmanageservice)
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
        Me.Name = "ManageService"
        Me.Text = "s"
        CType(Me.nudduratuion, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dgvmanageservice, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nudprice, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.ServiceBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents tbsearch As TextBox
    Friend WithEvents nudduratuion As NumericUpDown
    Friend WithEvents Button7 As Button
    Friend WithEvents Button6 As Button
    Friend WithEvents btndelete As Button
    Friend WithEvents btnupdate As Button
    Friend WithEvents btninsert As Button
    Friend WithEvents Label11 As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents tbservicename As TextBox
    Friend WithEvents tbserviceid As TextBox
    Friend WithEvents Label9 As Label
    Friend WithEvents Label8 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents dgvmanageservice As DataGridView
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
    Friend WithEvents cbcategory As ComboBox
    Friend WithEvents cbunit As ComboBox
    Friend WithEvents nudprice As NumericUpDown
    Friend WithEvents IdDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents NameDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdCategoryDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdUnitDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents PriceUnitDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents EstimationDurationDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents ServiceBindingSource As BindingSource
    Friend WithEvents PC_KT_MODUL02DataSet As PC_KT_MODUL02DataSet
End Class
