<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class ViewTransaction
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
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.dgvheaderdeposit = New System.Windows.Forms.DataGridView()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.dgvdetaildeposit = New System.Windows.Forms.DataGridView()
        Me.PC_KT_MODUL02DataSet = New PC_KT_MODUL2.PC_KT_MODUL02DataSet()
        Me.HeaderDepositBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.IdDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdCustomerDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdEmployeeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TransactionDatetimeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CompleteEstimationDatetimeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DetailDepositBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.IdDataGridViewTextBoxColumn1 = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdDepositDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdServiceDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdPrepaidPackageDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.PriceUnitDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TotalUnitDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.CompletedDatetimeDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.GroupBox1.SuspendLayout()
        CType(Me.dgvheaderdeposit, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        CType(Me.dgvdetaildeposit, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.HeaderDepositBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DetailDepositBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'tbsearch
        '
        Me.tbsearch.Location = New System.Drawing.Point(593, 70)
        Me.tbsearch.Name = "tbsearch"
        Me.tbsearch.Size = New System.Drawing.Size(247, 20)
        Me.tbsearch.TabIndex = 155
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(546, 73)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(41, 13)
        Me.Label4.TabIndex = 153
        Me.Label4.Text = "Search"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(386, 41)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(130, 20)
        Me.Label3.TabIndex = 152
        Me.Label3.Text = "View Transaction"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(637, 21)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 151
        Me.Label2.Text = "Hello"
        '
        'btnlogout
        '
        Me.btnlogout.Location = New System.Drawing.Point(711, 16)
        Me.btnlogout.Name = "btnlogout"
        Me.btnlogout.Size = New System.Drawing.Size(75, 23)
        Me.btnlogout.TabIndex = 150
        Me.btnlogout.Text = "logout"
        Me.btnlogout.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(10, 9)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(58, 30)
        Me.Button1.TabIndex = 149
        Me.Button1.Text = "Hide"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.Label1.Location = New System.Drawing.Point(123, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(159, 25)
        Me.Label1.TabIndex = 148
        Me.Label1.Text = "Esemka Laundry"
        '
        'btnviewtransaction
        '
        Me.btnviewtransaction.Location = New System.Drawing.Point(10, 253)
        Me.btnviewtransaction.Name = "btnviewtransaction"
        Me.btnviewtransaction.Size = New System.Drawing.Size(121, 32)
        Me.btnviewtransaction.TabIndex = 147
        Me.btnviewtransaction.Text = "View Transaction"
        Me.btnviewtransaction.UseVisualStyleBackColor = True
        '
        'btnmanageservice
        '
        Me.btnmanageservice.Location = New System.Drawing.Point(10, 101)
        Me.btnmanageservice.Name = "btnmanageservice"
        Me.btnmanageservice.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageservice.TabIndex = 146
        Me.btnmanageservice.Text = "Manage Service"
        Me.btnmanageservice.UseVisualStyleBackColor = True
        '
        'btnmanagepackage
        '
        Me.btnmanagepackage.Location = New System.Drawing.Point(10, 139)
        Me.btnmanagepackage.Name = "btnmanagepackage"
        Me.btnmanagepackage.Size = New System.Drawing.Size(121, 32)
        Me.btnmanagepackage.TabIndex = 145
        Me.btnmanagepackage.Text = "Manage Package"
        Me.btnmanagepackage.UseVisualStyleBackColor = True
        '
        'btntransactiondeposit
        '
        Me.btntransactiondeposit.Location = New System.Drawing.Point(10, 177)
        Me.btntransactiondeposit.Name = "btntransactiondeposit"
        Me.btntransactiondeposit.Size = New System.Drawing.Size(121, 32)
        Me.btntransactiondeposit.TabIndex = 144
        Me.btntransactiondeposit.Text = "Transaction Deposit"
        Me.btntransactiondeposit.UseVisualStyleBackColor = True
        '
        'btnprepaidpackage
        '
        Me.btnprepaidpackage.Location = New System.Drawing.Point(10, 215)
        Me.btnprepaidpackage.Name = "btnprepaidpackage"
        Me.btnprepaidpackage.Size = New System.Drawing.Size(121, 32)
        Me.btnprepaidpackage.TabIndex = 143
        Me.btnprepaidpackage.Text = "Prepaid Package"
        Me.btnprepaidpackage.UseVisualStyleBackColor = True
        '
        'btnmanageemployee
        '
        Me.btnmanageemployee.Location = New System.Drawing.Point(10, 63)
        Me.btnmanageemployee.Name = "btnmanageemployee"
        Me.btnmanageemployee.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageemployee.TabIndex = 142
        Me.btnmanageemployee.Text = "Manage Employee"
        Me.btnmanageemployee.UseVisualStyleBackColor = True
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.dgvheaderdeposit)
        Me.GroupBox1.Location = New System.Drawing.Point(182, 101)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(658, 199)
        Me.GroupBox1.TabIndex = 156
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Header Deposit"
        '
        'dgvheaderdeposit
        '
        Me.dgvheaderdeposit.AutoGenerateColumns = False
        Me.dgvheaderdeposit.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvheaderdeposit.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdDataGridViewTextBoxColumn, Me.IdCustomerDataGridViewTextBoxColumn, Me.IdEmployeeDataGridViewTextBoxColumn, Me.TransactionDatetimeDataGridViewTextBoxColumn, Me.CompleteEstimationDatetimeDataGridViewTextBoxColumn})
        Me.dgvheaderdeposit.DataSource = Me.HeaderDepositBindingSource
        Me.dgvheaderdeposit.Location = New System.Drawing.Point(6, 19)
        Me.dgvheaderdeposit.Name = "dgvheaderdeposit"
        Me.dgvheaderdeposit.Size = New System.Drawing.Size(646, 174)
        Me.dgvheaderdeposit.TabIndex = 0
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.dgvdetaildeposit)
        Me.GroupBox2.Location = New System.Drawing.Point(176, 315)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(658, 199)
        Me.GroupBox2.TabIndex = 157
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Detail Deposit"
        '
        'dgvdetaildeposit
        '
        Me.dgvdetaildeposit.AutoGenerateColumns = False
        Me.dgvdetaildeposit.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvdetaildeposit.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdDataGridViewTextBoxColumn1, Me.IdDepositDataGridViewTextBoxColumn, Me.IdServiceDataGridViewTextBoxColumn, Me.IdPrepaidPackageDataGridViewTextBoxColumn, Me.PriceUnitDataGridViewTextBoxColumn, Me.TotalUnitDataGridViewTextBoxColumn, Me.CompletedDatetimeDataGridViewTextBoxColumn})
        Me.dgvdetaildeposit.DataSource = Me.DetailDepositBindingSource
        Me.dgvdetaildeposit.Location = New System.Drawing.Point(6, 19)
        Me.dgvdetaildeposit.Name = "dgvdetaildeposit"
        Me.dgvdetaildeposit.Size = New System.Drawing.Size(646, 174)
        Me.dgvdetaildeposit.TabIndex = 0
        '
        'PC_KT_MODUL02DataSet
        '
        Me.PC_KT_MODUL02DataSet.DataSetName = "PC_KT_MODUL02DataSet"
        Me.PC_KT_MODUL02DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'HeaderDepositBindingSource
        '
        Me.HeaderDepositBindingSource.DataMember = "HeaderDeposit"
        Me.HeaderDepositBindingSource.DataSource = Me.PC_KT_MODUL02DataSet
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
        'IdEmployeeDataGridViewTextBoxColumn
        '
        Me.IdEmployeeDataGridViewTextBoxColumn.DataPropertyName = "IdEmployee"
        Me.IdEmployeeDataGridViewTextBoxColumn.HeaderText = "IdEmployee"
        Me.IdEmployeeDataGridViewTextBoxColumn.Name = "IdEmployeeDataGridViewTextBoxColumn"
        '
        'TransactionDatetimeDataGridViewTextBoxColumn
        '
        Me.TransactionDatetimeDataGridViewTextBoxColumn.DataPropertyName = "TransactionDatetime"
        Me.TransactionDatetimeDataGridViewTextBoxColumn.HeaderText = "TransactionDatetime"
        Me.TransactionDatetimeDataGridViewTextBoxColumn.Name = "TransactionDatetimeDataGridViewTextBoxColumn"
        '
        'CompleteEstimationDatetimeDataGridViewTextBoxColumn
        '
        Me.CompleteEstimationDatetimeDataGridViewTextBoxColumn.DataPropertyName = "CompleteEstimationDatetime"
        Me.CompleteEstimationDatetimeDataGridViewTextBoxColumn.HeaderText = "CompleteEstimationDatetime"
        Me.CompleteEstimationDatetimeDataGridViewTextBoxColumn.Name = "CompleteEstimationDatetimeDataGridViewTextBoxColumn"
        '
        'DetailDepositBindingSource
        '
        Me.DetailDepositBindingSource.DataMember = "DetailDeposit"
        Me.DetailDepositBindingSource.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'IdDataGridViewTextBoxColumn1
        '
        Me.IdDataGridViewTextBoxColumn1.DataPropertyName = "Id"
        Me.IdDataGridViewTextBoxColumn1.HeaderText = "Id"
        Me.IdDataGridViewTextBoxColumn1.Name = "IdDataGridViewTextBoxColumn1"
        Me.IdDataGridViewTextBoxColumn1.ReadOnly = True
        '
        'IdDepositDataGridViewTextBoxColumn
        '
        Me.IdDepositDataGridViewTextBoxColumn.DataPropertyName = "IdDeposit"
        Me.IdDepositDataGridViewTextBoxColumn.HeaderText = "IdDeposit"
        Me.IdDepositDataGridViewTextBoxColumn.Name = "IdDepositDataGridViewTextBoxColumn"
        '
        'IdServiceDataGridViewTextBoxColumn
        '
        Me.IdServiceDataGridViewTextBoxColumn.DataPropertyName = "IdService"
        Me.IdServiceDataGridViewTextBoxColumn.HeaderText = "IdService"
        Me.IdServiceDataGridViewTextBoxColumn.Name = "IdServiceDataGridViewTextBoxColumn"
        '
        'IdPrepaidPackageDataGridViewTextBoxColumn
        '
        Me.IdPrepaidPackageDataGridViewTextBoxColumn.DataPropertyName = "IdPrepaidPackage"
        Me.IdPrepaidPackageDataGridViewTextBoxColumn.HeaderText = "IdPrepaidPackage"
        Me.IdPrepaidPackageDataGridViewTextBoxColumn.Name = "IdPrepaidPackageDataGridViewTextBoxColumn"
        '
        'PriceUnitDataGridViewTextBoxColumn
        '
        Me.PriceUnitDataGridViewTextBoxColumn.DataPropertyName = "PriceUnit"
        Me.PriceUnitDataGridViewTextBoxColumn.HeaderText = "PriceUnit"
        Me.PriceUnitDataGridViewTextBoxColumn.Name = "PriceUnitDataGridViewTextBoxColumn"
        '
        'TotalUnitDataGridViewTextBoxColumn
        '
        Me.TotalUnitDataGridViewTextBoxColumn.DataPropertyName = "TotalUnit"
        Me.TotalUnitDataGridViewTextBoxColumn.HeaderText = "TotalUnit"
        Me.TotalUnitDataGridViewTextBoxColumn.Name = "TotalUnitDataGridViewTextBoxColumn"
        '
        'CompletedDatetimeDataGridViewTextBoxColumn
        '
        Me.CompletedDatetimeDataGridViewTextBoxColumn.DataPropertyName = "CompletedDatetime"
        Me.CompletedDatetimeDataGridViewTextBoxColumn.HeaderText = "CompletedDatetime"
        Me.CompletedDatetimeDataGridViewTextBoxColumn.Name = "CompletedDatetimeDataGridViewTextBoxColumn"
        '
        'ViewTransaction
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(922, 575)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.tbsearch)
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
        Me.Name = "ViewTransaction"
        Me.Text = "ViewTransaction"
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.dgvheaderdeposit, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        CType(Me.dgvdetaildeposit, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.HeaderDepositBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DetailDepositBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents tbsearch As TextBox
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
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents dgvheaderdeposit As DataGridView
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents dgvdetaildeposit As DataGridView
    Friend WithEvents IdDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdCustomerDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdEmployeeDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents TransactionDatetimeDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents CompleteEstimationDatetimeDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents HeaderDepositBindingSource As BindingSource
    Friend WithEvents PC_KT_MODUL02DataSet As PC_KT_MODUL02DataSet
    Friend WithEvents IdDataGridViewTextBoxColumn1 As DataGridViewTextBoxColumn
    Friend WithEvents IdDepositDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdServiceDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdPrepaidPackageDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents PriceUnitDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents TotalUnitDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents CompletedDatetimeDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents DetailDepositBindingSource As BindingSource
End Class
