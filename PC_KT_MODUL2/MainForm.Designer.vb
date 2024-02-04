<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class MainForm
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
        Me.btnmanageemployee = New System.Windows.Forms.Button()
        Me.btnprepaidpackage = New System.Windows.Forms.Button()
        Me.btntransactiondeposit = New System.Windows.Forms.Button()
        Me.btnmanagepackage = New System.Windows.Forms.Button()
        Me.btnmanageservice = New System.Windows.Forms.Button()
        Me.btnviewtransaction = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.btnlogout = New System.Windows.Forms.Button()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'btnmanageemployee
        '
        Me.btnmanageemployee.Location = New System.Drawing.Point(12, 63)
        Me.btnmanageemployee.Name = "btnmanageemployee"
        Me.btnmanageemployee.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageemployee.TabIndex = 0
        Me.btnmanageemployee.Text = "Manage Employee"
        Me.btnmanageemployee.UseVisualStyleBackColor = True
        '
        'btnprepaidpackage
        '
        Me.btnprepaidpackage.Location = New System.Drawing.Point(12, 215)
        Me.btnprepaidpackage.Name = "btnprepaidpackage"
        Me.btnprepaidpackage.Size = New System.Drawing.Size(121, 32)
        Me.btnprepaidpackage.TabIndex = 1
        Me.btnprepaidpackage.Text = "Prepaid Package"
        Me.btnprepaidpackage.UseVisualStyleBackColor = True
        '
        'btntransactiondeposit
        '
        Me.btntransactiondeposit.Location = New System.Drawing.Point(12, 177)
        Me.btntransactiondeposit.Name = "btntransactiondeposit"
        Me.btntransactiondeposit.Size = New System.Drawing.Size(121, 32)
        Me.btntransactiondeposit.TabIndex = 2
        Me.btntransactiondeposit.Text = "Transaction Deposit"
        Me.btntransactiondeposit.UseVisualStyleBackColor = True
        '
        'btnmanagepackage
        '
        Me.btnmanagepackage.Location = New System.Drawing.Point(12, 139)
        Me.btnmanagepackage.Name = "btnmanagepackage"
        Me.btnmanagepackage.Size = New System.Drawing.Size(121, 32)
        Me.btnmanagepackage.TabIndex = 3
        Me.btnmanagepackage.Text = "Manage Package"
        Me.btnmanagepackage.UseVisualStyleBackColor = True
        '
        'btnmanageservice
        '
        Me.btnmanageservice.Location = New System.Drawing.Point(12, 101)
        Me.btnmanageservice.Name = "btnmanageservice"
        Me.btnmanageservice.Size = New System.Drawing.Size(121, 32)
        Me.btnmanageservice.TabIndex = 4
        Me.btnmanageservice.Text = "Manage Service"
        Me.btnmanageservice.UseVisualStyleBackColor = True
        '
        'btnviewtransaction
        '
        Me.btnviewtransaction.Location = New System.Drawing.Point(12, 253)
        Me.btnviewtransaction.Name = "btnviewtransaction"
        Me.btnviewtransaction.Size = New System.Drawing.Size(121, 32)
        Me.btnviewtransaction.TabIndex = 5
        Me.btnviewtransaction.Text = "View Transaction"
        Me.btnviewtransaction.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.0!)
        Me.Label1.Location = New System.Drawing.Point(125, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(159, 25)
        Me.Label1.TabIndex = 6
        Me.Label1.Text = "Esemka Laundry"
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(12, 9)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(58, 30)
        Me.Button1.TabIndex = 7
        Me.Button1.Text = "Hide"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'btnlogout
        '
        Me.btnlogout.Location = New System.Drawing.Point(713, 16)
        Me.btnlogout.Name = "btnlogout"
        Me.btnlogout.Size = New System.Drawing.Size(75, 23)
        Me.btnlogout.TabIndex = 8
        Me.btnlogout.Text = "logout"
        Me.btnlogout.UseVisualStyleBackColor = True
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(639, 21)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(31, 13)
        Me.Label2.TabIndex = 9
        Me.Label2.Text = "Hello"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 14.0!)
        Me.Label3.Location = New System.Drawing.Point(348, 185)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(91, 24)
        Me.Label3.TabIndex = 10
        Me.Label3.Text = "Welcome"
        '
        'MainForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.SkyBlue
        Me.ClientSize = New System.Drawing.Size(800, 450)
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
        Me.Name = "MainForm"
        Me.Text = "MainForm"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents btnmanageemployee As Button
    Friend WithEvents btnprepaidpackage As Button
    Friend WithEvents btntransactiondeposit As Button
    Friend WithEvents btnmanagepackage As Button
    Friend WithEvents btnmanageservice As Button
    Friend WithEvents btnviewtransaction As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Button1 As Button
    Friend WithEvents btnlogout As Button
    Friend WithEvents Timer1 As Timer
    Friend WithEvents Label2 As Label
    Friend WithEvents Label3 As Label
End Class
