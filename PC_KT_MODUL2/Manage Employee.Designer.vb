<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Manage_Employee
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
        Me.Label3 = New System.Windows.Forms.Label()
        Me.labelid = New System.Windows.Forms.Label()
        Me.btnlogout = New System.Windows.Forms.Button()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.btnviewtransaction = New System.Windows.Forms.Button()
        Me.btnmanageservice = New System.Windows.Forms.Button()
        Me.btnmanagepackage = New System.Windows.Forms.Button()
        Me.btntransactiondeposit = New System.Windows.Forms.Button()
        Me.btnprepaidpackage = New System.Windows.Forms.Button()
        Me.btnmanageemployee = New System.Windows.Forms.Button()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.dgvemployee = New System.Windows.Forms.DataGridView()
        Me.IdDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.PasswordDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NameDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.EmailDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.AddressDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.PhoneNumberDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DateofBirthDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.IdJobDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.SalaryDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.EmployeeBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.PC_KT_MODUL02DataSet = New PC_KT_MODUL2.PC_KT_MODUL02DataSet()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.tbname = New System.Windows.Forms.TextBox()
        Me.tbemail = New System.Windows.Forms.TextBox()
        Me.tbphonenumber = New System.Windows.Forms.TextBox()
        Me.tbaddress = New System.Windows.Forms.TextBox()
        Me.dtpdateofbirth = New System.Windows.Forms.DateTimePicker()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.btninsert = New System.Windows.Forms.Button()
        Me.btnupdate = New System.Windows.Forms.Button()
        Me.btndelete = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        Me.Button7 = New System.Windows.Forms.Button()
        Me.cbjob = New System.Windows.Forms.ComboBox()
        Me.nudsalary = New System.Windows.Forms.NumericUpDown()
        Me.tbpassword = New System.Windows.Forms.TextBox()
        Me.TextBox6 = New System.Windows.Forms.TextBox()
        Me.tbconfirmpassword = New System.Windows.Forms.TextBox()
        Me.tbid = New System.Windows.Forms.TextBox()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.EmployeeTableAdapter = New PC_KT_MODUL2.PC_KT_MODUL02DataSetTableAdapters.EmployeeTableAdapter()
        Me.JobBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.JobTableAdapter = New PC_KT_MODUL2.PC_KT_MODUL02DataSetTableAdapters.JobTableAdapter()
        Me.EmployeeBindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.EmployeeBindingSource2 = New System.Windows.Forms.BindingSource(Me.components)
        Me.EmployeeBindingSource3 = New System.Windows.Forms.BindingSource(Me.components)
        Me.JobBindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.ServiceTableAdapter = New PC_KT_MODUL2.PC_KT_MODUL02DataSetTableAdapters.ServiceTableAdapter()
        Me.PackageTableAdapter = New PC_KT_MODUL2.PC_KT_MODUL02DataSetTableAdapters.PackageTableAdapter()
        Me.PrepaidPackageTableAdapter = New PC_KT_MODUL2.PC_KT_MODUL02DataSetTableAdapters.PrepaidPackageTableAdapter()
        CType(Me.dgvemployee, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EmployeeBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nudsalary, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.JobBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EmployeeBindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EmployeeBindingSource2, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.EmployeeBindingSource3, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.JobBindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 12.0!)
        Me.Label3.Location = New System.Drawing.Point(385, 41)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(141, 20)
        Me.Label3.TabIndex = 21
        Me.Label3.Text = "Manage Employee"
        '
        'labelid
        '
        Me.labelid.AutoSize = True
        Me.labelid.Location = New System.Drawing.Point(636, 21)
        Me.labelid.Name = "labelid"
        Me.labelid.Size = New System.Drawing.Size(31, 13)
        Me.labelid.TabIndex = 20
        Me.labelid.Text = "Hello"
        '
        'btnlogout
        '
        Me.btnlogout.Location = New System.Drawing.Point(710, 16)
        Me.btnlogout.Name = "btnlogout"
        Me.btnlogout.Size = New System.Drawing.Size(75, 23)
        Me.btnlogout.TabIndex = 19
        Me.btnlogout.Text = "logout"
        Me.btnlogout.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(9, 9)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(58, 30)
        Me.Button1.TabIndex = 18
        Me.Button1.Text = "Hide"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.Label1.Location = New System.Drawing.Point(122, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(159, 25)
        Me.Label1.TabIndex = 17
        Me.Label1.Text = "Esemka Laundry"
        '
        'btnviewtransaction
        '
        Me.btnviewtransaction.Location = New System.Drawing.Point(9, 253)
        Me.btnviewtransaction.Name = "btnviewtransaction"
        Me.btnviewtransaction.Size = New System.Drawing.Size(121, 32)
        Me.btnviewtransaction.TabIndex = 16
        Me.btnviewtransaction.Text = "View Transaction"
        Me.btnviewtransaction.UseVisualStyleBackColor = True
        '
        'btnmanageservice
        '
        Me.btnmanageservice.Location = New System.Drawing.Point(9, 101)
        Me.btnmanageservice.Name = "btnmanageservice"
        Me.btnmanageservice.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageservice.TabIndex = 15
        Me.btnmanageservice.Text = "Manage Service"
        Me.btnmanageservice.UseVisualStyleBackColor = True
        '
        'btnmanagepackage
        '
        Me.btnmanagepackage.Location = New System.Drawing.Point(9, 139)
        Me.btnmanagepackage.Name = "btnmanagepackage"
        Me.btnmanagepackage.Size = New System.Drawing.Size(121, 32)
        Me.btnmanagepackage.TabIndex = 14
        Me.btnmanagepackage.Text = "Manage Package"
        Me.btnmanagepackage.UseVisualStyleBackColor = True
        '
        'btntransactiondeposit
        '
        Me.btntransactiondeposit.Location = New System.Drawing.Point(9, 177)
        Me.btntransactiondeposit.Name = "btntransactiondeposit"
        Me.btntransactiondeposit.Size = New System.Drawing.Size(121, 32)
        Me.btntransactiondeposit.TabIndex = 13
        Me.btntransactiondeposit.Text = "Transaction Deposit"
        Me.btntransactiondeposit.UseVisualStyleBackColor = True
        '
        'btnprepaidpackage
        '
        Me.btnprepaidpackage.Location = New System.Drawing.Point(9, 215)
        Me.btnprepaidpackage.Name = "btnprepaidpackage"
        Me.btnprepaidpackage.Size = New System.Drawing.Size(121, 32)
        Me.btnprepaidpackage.TabIndex = 12
        Me.btnprepaidpackage.Text = "Prepaid Package"
        Me.btnprepaidpackage.UseVisualStyleBackColor = True
        '
        'btnmanageemployee
        '
        Me.btnmanageemployee.Location = New System.Drawing.Point(9, 63)
        Me.btnmanageemployee.Name = "btnmanageemployee"
        Me.btnmanageemployee.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageemployee.TabIndex = 11
        Me.btnmanageemployee.Text = "Manage Employee"
        Me.btnmanageemployee.UseVisualStyleBackColor = True
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(545, 73)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(41, 13)
        Me.Label4.TabIndex = 22
        Me.Label4.Text = "Search"
        '
        'dgvemployee
        '
        Me.dgvemployee.AutoGenerateColumns = False
        Me.dgvemployee.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.dgvemployee.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IdDataGridViewTextBoxColumn, Me.PasswordDataGridViewTextBoxColumn, Me.NameDataGridViewTextBoxColumn, Me.EmailDataGridViewTextBoxColumn, Me.AddressDataGridViewTextBoxColumn, Me.PhoneNumberDataGridViewTextBoxColumn, Me.DateofBirthDataGridViewTextBoxColumn, Me.IdJobDataGridViewTextBoxColumn, Me.SalaryDataGridViewTextBoxColumn})
        Me.dgvemployee.DataSource = Me.EmployeeBindingSource
        Me.dgvemployee.Location = New System.Drawing.Point(166, 101)
        Me.dgvemployee.Name = "dgvemployee"
        Me.dgvemployee.Size = New System.Drawing.Size(673, 227)
        Me.dgvemployee.TabIndex = 23
        '
        'IdDataGridViewTextBoxColumn
        '
        Me.IdDataGridViewTextBoxColumn.DataPropertyName = "Id"
        Me.IdDataGridViewTextBoxColumn.HeaderText = "Id"
        Me.IdDataGridViewTextBoxColumn.Name = "IdDataGridViewTextBoxColumn"
        Me.IdDataGridViewTextBoxColumn.ReadOnly = True
        '
        'PasswordDataGridViewTextBoxColumn
        '
        Me.PasswordDataGridViewTextBoxColumn.DataPropertyName = "Password"
        Me.PasswordDataGridViewTextBoxColumn.HeaderText = "Password"
        Me.PasswordDataGridViewTextBoxColumn.Name = "PasswordDataGridViewTextBoxColumn"
        '
        'NameDataGridViewTextBoxColumn
        '
        Me.NameDataGridViewTextBoxColumn.DataPropertyName = "Name"
        Me.NameDataGridViewTextBoxColumn.HeaderText = "Name"
        Me.NameDataGridViewTextBoxColumn.Name = "NameDataGridViewTextBoxColumn"
        '
        'EmailDataGridViewTextBoxColumn
        '
        Me.EmailDataGridViewTextBoxColumn.DataPropertyName = "Email"
        Me.EmailDataGridViewTextBoxColumn.HeaderText = "Email"
        Me.EmailDataGridViewTextBoxColumn.Name = "EmailDataGridViewTextBoxColumn"
        '
        'AddressDataGridViewTextBoxColumn
        '
        Me.AddressDataGridViewTextBoxColumn.DataPropertyName = "Address"
        Me.AddressDataGridViewTextBoxColumn.HeaderText = "Address"
        Me.AddressDataGridViewTextBoxColumn.Name = "AddressDataGridViewTextBoxColumn"
        '
        'PhoneNumberDataGridViewTextBoxColumn
        '
        Me.PhoneNumberDataGridViewTextBoxColumn.DataPropertyName = "PhoneNumber"
        Me.PhoneNumberDataGridViewTextBoxColumn.HeaderText = "PhoneNumber"
        Me.PhoneNumberDataGridViewTextBoxColumn.Name = "PhoneNumberDataGridViewTextBoxColumn"
        '
        'DateofBirthDataGridViewTextBoxColumn
        '
        Me.DateofBirthDataGridViewTextBoxColumn.DataPropertyName = "DateofBirth"
        Me.DateofBirthDataGridViewTextBoxColumn.HeaderText = "DateofBirth"
        Me.DateofBirthDataGridViewTextBoxColumn.Name = "DateofBirthDataGridViewTextBoxColumn"
        '
        'IdJobDataGridViewTextBoxColumn
        '
        Me.IdJobDataGridViewTextBoxColumn.DataPropertyName = "IdJob"
        Me.IdJobDataGridViewTextBoxColumn.HeaderText = "IdJob"
        Me.IdJobDataGridViewTextBoxColumn.Name = "IdJobDataGridViewTextBoxColumn"
        '
        'SalaryDataGridViewTextBoxColumn
        '
        Me.SalaryDataGridViewTextBoxColumn.DataPropertyName = "Salary"
        Me.SalaryDataGridViewTextBoxColumn.HeaderText = "Salary"
        Me.SalaryDataGridViewTextBoxColumn.Name = "SalaryDataGridViewTextBoxColumn"
        '
        'EmployeeBindingSource
        '
        Me.EmployeeBindingSource.DataMember = "Employee"
        Me.EmployeeBindingSource.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'PC_KT_MODUL02DataSet
        '
        Me.PC_KT_MODUL02DataSet.DataSetName = "PC_KT_MODUL02DataSet"
        Me.PC_KT_MODUL02DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(163, 395)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(35, 13)
        Me.Label5.TabIndex = 24
        Me.Label5.Text = "Name"
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(163, 423)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(32, 13)
        Me.Label6.TabIndex = 25
        Me.Label6.Text = "Email"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(163, 447)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(78, 13)
        Me.Label7.TabIndex = 26
        Me.Label7.Text = "Phone Number"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(163, 470)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(45, 13)
        Me.Label8.TabIndex = 27
        Me.Label8.Text = "Address"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(163, 525)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(66, 13)
        Me.Label9.TabIndex = 28
        Me.Label9.Text = "Date of Birth"
        '
        'tbname
        '
        Me.tbname.Location = New System.Drawing.Point(265, 392)
        Me.tbname.Name = "tbname"
        Me.tbname.Size = New System.Drawing.Size(200, 20)
        Me.tbname.TabIndex = 29
        '
        'tbemail
        '
        Me.tbemail.Location = New System.Drawing.Point(265, 418)
        Me.tbemail.Name = "tbemail"
        Me.tbemail.Size = New System.Drawing.Size(200, 20)
        Me.tbemail.TabIndex = 30
        '
        'tbphonenumber
        '
        Me.tbphonenumber.Location = New System.Drawing.Point(265, 444)
        Me.tbphonenumber.Name = "tbphonenumber"
        Me.tbphonenumber.Size = New System.Drawing.Size(200, 20)
        Me.tbphonenumber.TabIndex = 31
        '
        'tbaddress
        '
        Me.tbaddress.Location = New System.Drawing.Point(265, 470)
        Me.tbaddress.Multiline = True
        Me.tbaddress.Name = "tbaddress"
        Me.tbaddress.Size = New System.Drawing.Size(200, 43)
        Me.tbaddress.TabIndex = 32
        '
        'dtpdateofbirth
        '
        Me.dtpdateofbirth.Location = New System.Drawing.Point(265, 519)
        Me.dtpdateofbirth.Name = "dtpdateofbirth"
        Me.dtpdateofbirth.Size = New System.Drawing.Size(200, 20)
        Me.dtpdateofbirth.TabIndex = 33
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(545, 373)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(47, 13)
        Me.Label10.TabIndex = 34
        Me.Label10.Text = "Job Title"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(545, 399)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(36, 13)
        Me.Label11.TabIndex = 35
        Me.Label11.Text = "Salary"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(545, 425)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(53, 13)
        Me.Label12.TabIndex = 36
        Me.Label12.Text = "Password"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(545, 451)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(91, 13)
        Me.Label13.TabIndex = 37
        Me.Label13.Text = "Confirm Password"
        '
        'btninsert
        '
        Me.btninsert.Location = New System.Drawing.Point(548, 480)
        Me.btninsert.Name = "btninsert"
        Me.btninsert.Size = New System.Drawing.Size(75, 23)
        Me.btninsert.TabIndex = 38
        Me.btninsert.Text = "Insert"
        Me.btninsert.UseVisualStyleBackColor = True
        '
        'btnupdate
        '
        Me.btnupdate.Location = New System.Drawing.Point(639, 480)
        Me.btnupdate.Name = "btnupdate"
        Me.btnupdate.Size = New System.Drawing.Size(75, 23)
        Me.btnupdate.TabIndex = 39
        Me.btnupdate.Text = "Update"
        Me.btnupdate.UseVisualStyleBackColor = True
        '
        'btndelete
        '
        Me.btndelete.Location = New System.Drawing.Point(730, 480)
        Me.btndelete.Name = "btndelete"
        Me.btndelete.Size = New System.Drawing.Size(75, 23)
        Me.btndelete.TabIndex = 40
        Me.btndelete.Text = "Delete"
        Me.btndelete.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(592, 509)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(75, 23)
        Me.Button6.TabIndex = 41
        Me.Button6.Text = "Save"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(687, 509)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(75, 23)
        Me.Button7.TabIndex = 42
        Me.Button7.Text = "Cancel"
        Me.Button7.UseVisualStyleBackColor = True
        '
        'cbjob
        '
        Me.cbjob.DataBindings.Add(New System.Windows.Forms.Binding("SelectedValue", Me.EmployeeBindingSource, "IdJob", True))
        Me.cbjob.DataSource = Me.JobBindingSource1
        Me.cbjob.DisplayMember = "Id"
        Me.cbjob.FormattingEnabled = True
        Me.cbjob.Location = New System.Drawing.Point(639, 365)
        Me.cbjob.Name = "cbjob"
        Me.cbjob.Size = New System.Drawing.Size(200, 21)
        Me.cbjob.TabIndex = 43
        Me.cbjob.ValueMember = "Id"
        '
        'nudsalary
        '
        Me.nudsalary.Location = New System.Drawing.Point(639, 392)
        Me.nudsalary.Name = "nudsalary"
        Me.nudsalary.Size = New System.Drawing.Size(200, 20)
        Me.nudsalary.TabIndex = 44
        '
        'tbpassword
        '
        Me.tbpassword.Location = New System.Drawing.Point(639, 418)
        Me.tbpassword.Name = "tbpassword"
        Me.tbpassword.Size = New System.Drawing.Size(200, 20)
        Me.tbpassword.TabIndex = 45
        '
        'TextBox6
        '
        Me.TextBox6.Location = New System.Drawing.Point(592, 70)
        Me.TextBox6.Name = "TextBox6"
        Me.TextBox6.Size = New System.Drawing.Size(247, 20)
        Me.TextBox6.TabIndex = 46
        '
        'tbconfirmpassword
        '
        Me.tbconfirmpassword.Location = New System.Drawing.Point(639, 448)
        Me.tbconfirmpassword.Name = "tbconfirmpassword"
        Me.tbconfirmpassword.Size = New System.Drawing.Size(200, 20)
        Me.tbconfirmpassword.TabIndex = 47
        '
        'tbid
        '
        Me.tbid.Location = New System.Drawing.Point(265, 365)
        Me.tbid.Name = "tbid"
        Me.tbid.Size = New System.Drawing.Size(200, 20)
        Me.tbid.TabIndex = 49
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(163, 368)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(67, 13)
        Me.Label14.TabIndex = 48
        Me.Label14.Text = "Employee ID"
        '
        'EmployeeTableAdapter
        '
        Me.EmployeeTableAdapter.ClearBeforeFill = True
        '
        'JobBindingSource
        '
        Me.JobBindingSource.DataMember = "Job"
        Me.JobBindingSource.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'JobTableAdapter
        '
        Me.JobTableAdapter.ClearBeforeFill = True
        '
        'EmployeeBindingSource1
        '
        Me.EmployeeBindingSource1.DataMember = "Employee"
        Me.EmployeeBindingSource1.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'EmployeeBindingSource2
        '
        Me.EmployeeBindingSource2.DataMember = "Employee"
        Me.EmployeeBindingSource2.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'EmployeeBindingSource3
        '
        Me.EmployeeBindingSource3.DataMember = "Employee"
        Me.EmployeeBindingSource3.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'JobBindingSource1
        '
        Me.JobBindingSource1.DataMember = "Job"
        Me.JobBindingSource1.DataSource = Me.PC_KT_MODUL02DataSet
        '
        'ServiceTableAdapter
        '
        Me.ServiceTableAdapter.ClearBeforeFill = True
        '
        'PackageTableAdapter
        '
        Me.PackageTableAdapter.ClearBeforeFill = True
        '
        'PrepaidPackageTableAdapter
        '
        Me.PrepaidPackageTableAdapter.ClearBeforeFill = True
        '
        'Manage_Employee
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(922, 575)
        Me.Controls.Add(Me.tbid)
        Me.Controls.Add(Me.Label14)
        Me.Controls.Add(Me.tbconfirmpassword)
        Me.Controls.Add(Me.TextBox6)
        Me.Controls.Add(Me.tbpassword)
        Me.Controls.Add(Me.nudsalary)
        Me.Controls.Add(Me.cbjob)
        Me.Controls.Add(Me.Button7)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.btndelete)
        Me.Controls.Add(Me.btnupdate)
        Me.Controls.Add(Me.btninsert)
        Me.Controls.Add(Me.Label13)
        Me.Controls.Add(Me.Label12)
        Me.Controls.Add(Me.Label11)
        Me.Controls.Add(Me.Label10)
        Me.Controls.Add(Me.dtpdateofbirth)
        Me.Controls.Add(Me.tbaddress)
        Me.Controls.Add(Me.tbphonenumber)
        Me.Controls.Add(Me.tbemail)
        Me.Controls.Add(Me.tbname)
        Me.Controls.Add(Me.Label9)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.dgvemployee)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.labelid)
        Me.Controls.Add(Me.btnlogout)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.btnviewtransaction)
        Me.Controls.Add(Me.btnmanageservice)
        Me.Controls.Add(Me.btnmanagepackage)
        Me.Controls.Add(Me.btntransactiondeposit)
        Me.Controls.Add(Me.btnprepaidpackage)
        Me.Controls.Add(Me.btnmanageemployee)
        Me.Name = "Manage_Employee"
        Me.Text = "Manage_Employee"
        CType(Me.dgvemployee, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EmployeeBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.PC_KT_MODUL02DataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nudsalary, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.JobBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EmployeeBindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EmployeeBindingSource2, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.EmployeeBindingSource3, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.JobBindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label3 As Label
    Friend WithEvents labelid As Label
    Friend WithEvents btnlogout As Button
    Friend WithEvents Button1 As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents btnviewtransaction As Button
    Friend WithEvents btnmanageservice As Button
    Friend WithEvents btnmanagepackage As Button
    Friend WithEvents btntransactiondeposit As Button
    Friend WithEvents btnprepaidpackage As Button
    Friend WithEvents btnmanageemployee As Button
    Friend WithEvents Label4 As Label
    Friend WithEvents dgvemployee As DataGridView
    Friend WithEvents Label5 As Label
    Friend WithEvents Label6 As Label
    Friend WithEvents Label7 As Label
    Friend WithEvents Label8 As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents tbname As TextBox
    Friend WithEvents tbemail As TextBox
    Friend WithEvents tbphonenumber As TextBox
    Friend WithEvents tbaddress As TextBox
    Friend WithEvents dtpdateofbirth As DateTimePicker
    Friend WithEvents Label10 As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents Label12 As Label
    Friend WithEvents Label13 As Label
    Friend WithEvents btninsert As Button
    Friend WithEvents btnupdate As Button
    Friend WithEvents btndelete As Button
    Friend WithEvents Button6 As Button
    Friend WithEvents Button7 As Button
    Friend WithEvents cbjob As ComboBox
    Friend WithEvents nudsalary As NumericUpDown
    Friend WithEvents tbpassword As TextBox
    Friend WithEvents TextBox6 As TextBox
    Friend WithEvents tbconfirmpassword As TextBox
    Friend WithEvents tbid As TextBox
    Friend WithEvents Label14 As Label
    Friend WithEvents PC_KT_MODUL02DataSet As PC_KT_MODUL02DataSet
    Friend WithEvents EmployeeBindingSource As BindingSource
    Friend WithEvents EmployeeTableAdapter As PC_KT_MODUL02DataSetTableAdapters.EmployeeTableAdapter
    Friend WithEvents IdDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents PasswordDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents NameDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents EmailDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents AddressDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents PhoneNumberDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents DateofBirthDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents IdJobDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents SalaryDataGridViewTextBoxColumn As DataGridViewTextBoxColumn
    Friend WithEvents JobBindingSource As BindingSource
    Friend WithEvents JobTableAdapter As PC_KT_MODUL02DataSetTableAdapters.JobTableAdapter
    Friend WithEvents EmployeeBindingSource1 As BindingSource
    Friend WithEvents EmployeeBindingSource2 As BindingSource
    Friend WithEvents JobBindingSource1 As BindingSource
    Friend WithEvents EmployeeBindingSource3 As BindingSource
    Friend WithEvents ServiceTableAdapter As PC_KT_MODUL02DataSetTableAdapters.ServiceTableAdapter
    Friend WithEvents PackageTableAdapter As PC_KT_MODUL02DataSetTableAdapters.PackageTableAdapter
    Friend WithEvents PrepaidPackageTableAdapter As PC_KT_MODUL02DataSetTableAdapters.PrepaidPackageTableAdapter
End Class
