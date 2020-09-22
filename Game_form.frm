VERSION 5.00
Begin VB.Form form1 
   BackColor       =   &H00FFFF80&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Shit 2 score"
   ClientHeight    =   6270
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10395
   DrawMode        =   6  'Mask Pen Not
   Icon            =   "Game_form.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6270
   ScaleWidth      =   10395
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer_falling_last 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   3600
      Top             =   3000
   End
   Begin VB.Timer Timer_falling2 
      Enabled         =   0   'False
      Interval        =   5
      Left            =   5280
      Top             =   1440
   End
   Begin VB.Timer Timer_falling_after_plane 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   5400
      Top             =   2040
   End
   Begin VB.Timer timer_plane 
      Interval        =   30
      Left            =   8160
      Top             =   2760
   End
   Begin VB.Timer Timer_flies 
      Interval        =   25
      Left            =   5280
      Top             =   3240
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H0000FF00&
      Caption         =   "What to do"
      Height          =   1335
      Left            =   2400
      TabIndex        =   10
      Top             =   4800
      Width           =   4095
      Begin VB.Label Label2 
         BackColor       =   &H0000FF00&
         Caption         =   $"Game_form.frx":0442
         Height          =   975
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   3855
      End
   End
   Begin VB.Timer Timer_shit_clean 
      Interval        =   50
      Left            =   1440
      Top             =   4320
   End
   Begin VB.Timer Timer_falling_burned 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   600
      Top             =   3120
   End
   Begin VB.Timer Timer_bliksem 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   2160
      Top             =   1560
   End
   Begin VB.Timer Timer_clouds 
      Interval        =   75
      Left            =   8760
      Top             =   4680
   End
   Begin VB.Timer Timer_falling_shit 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   0
      Top             =   4680
   End
   Begin VB.Timer Timer_wings 
      Interval        =   400
      Left            =   1080
      Top             =   2280
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H0000FF00&
      Caption         =   "Buttons"
      Height          =   1335
      Left            =   6600
      TabIndex        =   4
      Top             =   4800
      Width           =   3735
      Begin VB.Label Label12 
         BackColor       =   &H0000FF00&
         Caption         =   "Spacebar   -   Shit"
         Height          =   255
         Left            =   2160
         TabIndex        =   8
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label Label11 
         BackColor       =   &H0000FF00&
         Caption         =   "F5              -   restart"
         Height          =   255
         Left            =   2160
         TabIndex        =   7
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label10 
         BackColor       =   &H0000FF00&
         Caption         =   "Arrow Up       -   Fly Up"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label Label9 
         BackColor       =   &H0000FF00&
         Caption         =   "Arrow Down  -   Fly down"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   1815
      End
   End
   Begin VB.Image plane1 
      Height          =   690
      Left            =   6240
      Picture         =   "Game_form.frx":0548
      Top             =   360
      Visible         =   0   'False
      Width           =   2370
   End
   Begin VB.Image plane_shit 
      Height          =   690
      Left            =   3600
      Picture         =   "Game_form.frx":5B12
      Top             =   360
      Visible         =   0   'False
      Width           =   2370
   End
   Begin VB.Image falling_last 
      Height          =   960
      Left            =   3840
      Picture         =   "Game_form.frx":B0DC
      Top             =   2760
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label falling 
      Caption         =   "0"
      Height          =   255
      Left            =   6360
      TabIndex        =   15
      Top             =   1800
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Image dead_plane 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":C41E
      Top             =   3840
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image bird_going_up 
      Height          =   795
      Left            =   5520
      Picture         =   "Game_form.frx":DB28
      Top             =   1680
      Visible         =   0   'False
      Width           =   690
   End
   Begin VB.Image bird_hit_by_plane 
      Height          =   405
      Left            =   5400
      Picture         =   "Game_form.frx":F866
      Top             =   2640
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Label Label6 
      BackColor       =   &H0000FF00&
      Caption         =   "= Airplane"
      Height          =   255
      Left            =   1440
      TabIndex        =   14
      Top             =   5760
      Width           =   735
   End
   Begin VB.Image Image2 
      Height          =   405
      Left            =   0
      Picture         =   "Game_form.frx":10F70
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   1290
   End
   Begin VB.Label Label5 
      BackColor       =   &H0000FF00&
      Caption         =   "= You"
      Height          =   255
      Left            =   1440
      TabIndex        =   13
      Top             =   5400
      Width           =   615
   End
   Begin VB.Image Image1 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":1653A
      Top             =   5280
      Width           =   1080
   End
   Begin VB.Label Label4 
      BackColor       =   &H0000FF00&
      Caption         =   "= Fly"
      Height          =   255
      Left            =   1440
      TabIndex        =   12
      Top             =   5040
      Width           =   495
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   600
      Top             =   5040
      Width           =   135
   End
   Begin VB.Shape fly1 
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   2520
      Top             =   2280
      Width           =   135
   End
   Begin VB.Shape fly2 
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   9000
      Top             =   1800
      Width           =   135
   End
   Begin VB.Shape fly3 
      BackColor       =   &H80000006&
      FillStyle       =   0  'Solid
      Height          =   135
      Left            =   5040
      Top             =   3240
      Width           =   135
   End
   Begin VB.Image bird_electra 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":17C44
      Top             =   1680
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image bird_burned 
      Height          =   795
      Left            =   360
      Picture         =   "Game_form.frx":1934E
      Top             =   2640
      Visible         =   0   'False
      Width           =   405
   End
   Begin VB.Image Dead_burned 
      Height          =   405
      Left            =   0
      Picture         =   "Game_form.frx":1A4F4
      Top             =   4200
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Label bliksemteller 
      Caption         =   "0"
      Height          =   255
      Left            =   2640
      TabIndex        =   9
      Top             =   1680
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Shape cloud2 
      BackStyle       =   1  'Opaque
      Height          =   735
      Left            =   3720
      Shape           =   2  'Oval
      Top             =   720
      Width           =   4455
   End
   Begin VB.Line bliksem2 
      BorderColor     =   &H0000C0C0&
      Visible         =   0   'False
      X1              =   5880
      X2              =   6600
      Y1              =   1080
      Y2              =   3240
   End
   Begin VB.Image shit_on_ground 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":1BBFE
      Top             =   4680
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image Bird_crashed 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":1D308
      Top             =   4200
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image Blood_on_ground 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":1EA12
      Top             =   4680
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Label score 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFF80&
      Caption         =   "0"
      Height          =   195
      Left            =   2160
      TabIndex        =   3
      Top             =   120
      Width           =   90
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFF80&
      Caption         =   "Score:"
      Height          =   255
      Left            =   1440
      TabIndex        =   2
      Top             =   120
      Width           =   495
   End
   Begin VB.Label food 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFF80&
      Caption         =   "5"
      Height          =   195
      Left            =   720
      TabIndex        =   1
      Top             =   120
      Width           =   90
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFF80&
      Caption         =   "Food:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
   Begin VB.Image wings_down 
      Height          =   405
      Left            =   3360
      Picture         =   "Game_form.frx":2011C
      Top             =   4200
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Image wings_up 
      Height          =   405
      Left            =   2280
      Picture         =   "Game_form.frx":21826
      Top             =   4200
      Visible         =   0   'False
      Width           =   1080
   End
   Begin VB.Shape cloud3 
      BackStyle       =   1  'Opaque
      Height          =   615
      Left            =   9120
      Shape           =   2  'Oval
      Top             =   480
      Width           =   2895
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   3015
      Left            =   -120
      Top             =   4680
      Width           =   10575
   End
   Begin VB.Shape cloud1 
      BackStyle       =   1  'Opaque
      Height          =   615
      Left            =   480
      Shape           =   2  'Oval
      Top             =   600
      Width           =   5415
   End
   Begin VB.Image bird 
      Height          =   405
      Left            =   120
      Picture         =   "Game_form.frx":22F30
      Top             =   2040
      Width           =   1080
   End
   Begin VB.Image shit 
      Height          =   285
      Left            =   240
      Picture         =   "Game_form.frx":2463A
      Top             =   2160
      Width           =   135
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   1575
      Left            =   9360
      Shape           =   3  'Circle
      Top             =   -360
      Width           =   2055
   End
   Begin VB.Line bliksem1 
      BorderColor     =   &H0000C0C0&
      Visible         =   0   'False
      X1              =   2280
      X2              =   1920
      Y1              =   960
      Y2              =   4680
   End
   Begin VB.Line bliksem3 
      BorderColor     =   &H0000C0C0&
      Visible         =   0   'False
      X1              =   10080
      X2              =   9360
      Y1              =   840
      Y2              =   3240
   End
   Begin VB.Image plane 
      Height          =   690
      Left            =   6480
      Picture         =   "Game_form.frx":24890
      Top             =   2880
      Width           =   2370
   End
End
Attribute VB_Name = "form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 32 Then Timer_falling_shit.Enabled = True

If KeyCode = 116 Then
Unload form1
Load form1
form1.Visible = True
form1.SetFocus
End If



If KeyCode = 38 Then
    If bird.Visible = False Then GoTo verder
    bird.Top = bird.Top - 50
    If Timer_falling_shit.Enabled = True Then GoTo verder
    shit.Top = shit.Top - 50
verder:
End If



If KeyCode = 40 Then
    If bird.Visible = False Then GoTo verder2
    bird.Top = bird.Top + 50
    If Timer_falling_shit.Enabled = True Then GoTo verder2
    shit.Top = shit.Top + 50
verder2:
End If

If bird.Top <= cloud2.Top + cloud2.Height Then
If bliksem1.X1 > 100 And bliksem1.X1 < 5000 Then GoTo bliksem1
If bliksem2.X1 > 100 And bliksem2.X1 < 5000 Then GoTo bliksem2
If bliksem3.X1 > 100 And bliksem3.X1 < 5000 Then GoTo bliksem3

bliksem1:
bliksem1.X2 = bird.Left + (bird.Width / 2)
bliksem1.Y2 = bird.Top + (bird.Height / 2)
bliksem1.Visible = True
bliksem2.Visible = True
bliksem3.Visible = True
bird.Visible = False
shit.Visible = False
bird_electra.Top = bird.Top
bird_electra.Visible = True
Timer_bliksem.Enabled = True
bird.Top = bird.Top + 500
GoTo verdermetbliksem

bliksem2:
bliksem2.X2 = bird.Left + (bird.Width / 2)
bliksem2.Y2 = bird.Top + (bird.Height / 2)
bliksem1.Visible = True
bliksem2.Visible = True
bliksem3.Visible = True
bird.Visible = False
shit.Visible = False
bird_electra.Top = bird.Top
bird_electra.Visible = True
Timer_bliksem.Enabled = True
bird.Top = bird.Top + 500
GoTo verdermetbliksem

bliksem3:
bliksem3.X2 = bird.Left + (bird.Width / 2)
bliksem3.Y2 = bird.Top + (bird.Height / 2)
bliksem1.Visible = True
bliksem2.Visible = True
bliksem3.Visible = True
bird.Visible = False
shit.Visible = False
bird_electra.Top = bird.Top
bird_electra.Visible = True
Timer_bliksem.Enabled = True
bird.Top = bird.Top + 500
verdermetbliksem:
End If
    
If bird.Top >= Blood_on_ground.Top - bird.Height Then

    bird.Visible = False
    shit.Visible = False
    Timer_clouds.Enabled = False
    Bird_crashed.Visible = True
    Blood_on_ground.Visible = True

End If
End Sub


Private Sub Form_Load()
bird.Picture = wings_up.Picture
Bird_crashed.Top = Blood_on_ground.Top - Bird_crashed.Height
Dead_burned.Top = Blood_on_ground.Top - Dead_burned.Height
dead_plane.Top = Blood_on_ground.Top - dead_plane.Height

End Sub




Private Sub Timer_bliksem1_Timer()

End Sub

Private Sub Timer_bliksem_Timer()
If cloud1.BackColor = vbBlack Then GoTo witmaken
cloud1.BackColor = vbBlack
cloud2.BackColor = vbBlack
cloud3.BackColor = vbBlack
GoTo verder3
witmaken:
cloud1.BackColor = vbWhite
cloud2.BackColor = vbWhite
cloud3.BackColor = vbWhite
verder3:
bliksemteller.Caption = bliksemteller.Caption + 1
If bliksemteller.Caption = 70 Then
Timer_bliksem.Enabled = False
bird_burned.Top = bird_electra.Top
bird_electra.Visible = False
bird_burned.Visible = True
cloud1.BackColor = vbWhite
cloud2.BackColor = vbWhite
cloud3.BackColor = vbWhite
bliksem1.Visible = False
bliksem2.Visible = False
bliksem3.Visible = False
Timer_wings.Enabled = False
Timer_falling_burned.Enabled = True
End If


End Sub

Private Sub Timer_clouds_Timer()

If cloud1.Left <= 0 - cloud1.Width Then
    cloud1.Left = form1.Width
    bliksem1.X1 = cloud1.Left + (cloud1.Width / 2)
    bliksem1.X2 = bliksem1.X1 - 360
End If

If cloud2.Left <= 0 - cloud2.Width Then
    cloud2.Left = form1.Width
    bliksem2.X1 = cloud2.Left + (cloud2.Width / 2)
    bliksem2.X2 = bliksem2.X1 + 720
End If

If cloud3.Left <= 0 - cloud3.Width Then
    cloud3.Left = form1.Width
    bliksem3.X1 = cloud3.Left + (cloud3.Width / 2)
    bliksem3.X2 = bliksem3.X1 - 720
End If
    
    
cloud1.Left = cloud1.Left - 35
cloud2.Left = cloud2.Left - 60
cloud3.Left = cloud3.Left - 35
bliksem1.X1 = bliksem1.X1 - 35
bliksem1.X2 = bliksem1.X2 - 35
bliksem2.X1 = bliksem2.X1 - 60
bliksem2.X2 = bliksem2.X2 - 60
bliksem3.X1 = bliksem3.X1 - 35
bliksem3.X2 = bliksem3.X2 - 35

End Sub

Private Sub Timer_falling_after_plane_Timer()

falling.Caption = falling.Caption + 1
If falling.Caption < 20 Then GoTo einde
bird_going_up.Top = bird_hit_by_plane.Top
bird_going_up.Left = bird_hit_by_plane.Left
bird_hit_by_plane.Visible = False
bird_going_up.Visible = True
Timer_falling_after_plane.Enabled = False
Timer_falling2.Enabled = True













einde:


End Sub

Private Sub Timer_falling_burned_Timer()
Timer_clouds.Enabled = False
If bird_burned.Top + bird_burned.Height >= Blood_on_ground.Top Then
    Dead_burned.Visible = True
    Timer_falling_burned.Enabled = False
    bird_burned.Visible = False
End If

bird_burned.Top = bird_burned.Top + 15

End Sub

Private Sub Timer_falling_last_Timer()

If falling_last.Top + falling_last.Height >= Blood_on_ground.Top Then
    dead_plane.Visible = True
    Timer_falling_last.Enabled = False
    falling_last.Visible = False
    Blood_on_ground.Visible = True
    
End If

falling_last.Top = falling_last.Top + 15
End Sub

Private Sub Timer_falling_shit_Timer()
If food.Caption = "0" Then GoTo bird_dead
If bird.Visible = False Then GoTo bird_dead






If shit.Top + shit.Height >= plane.Top And shit.Top <= plane.Top + plane.Height And shit.Left >= plane.Left And shit.Left + shit.Width <= plane.Left + plane.Width Then
food.Caption = food.Caption - 1
score.Caption = score.Caption + 15
plane.Picture = plane_shit.Picture
shit.Top = bird.Top
Timer_falling_shit.Enabled = False
End If









If shit.Top + shit.Height >= Blood_on_ground.Top Then
    food.Caption = food.Caption - 1
    shit_on_ground.Left = Blood_on_ground.Left
    shit_on_ground.Visible = True
    Timer_falling_shit.Enabled = False
    shit.Top = bird.Top
    Timer_shit_clean.Enabled = True
    
End If

shit.Top = shit.Top + 15

GoTo einde
bird_dead:
Timer_falling_shit.Enabled = False
shit.Top = bird.Top
einde:

End Sub



Private Sub Timer_falling2_Timer()
bird_going_up.Top = bird_going_up.Top - 20
If bird_going_up.Top < bird.Top - 1000 Then
    falling_last.Top = bird_going_up.Top
    falling_last.Left = bird_going_up.Left
    bird_going_up.Visible = False
    falling_last.Visible = True
    Timer_falling2.Enabled = False
    Timer_falling_last.Enabled = True
    
End If

End Sub

Private Sub Timer_flies_Timer()
fly1.Left = fly1.Left - 50
fly2.Left = fly2.Left - 50
fly3.Left = fly3.Left - 50

If fly1.Left > bird.Left And fly1.Left < bird.Left + bird.Width Then
    If fly1.Top > bird.Top And fly1.Top < bird.Top + bird.Height Then
        food.Caption = food.Caption + 1
        fly1.Left = form1.Width
        Randomize
        fly1.Top = Int((2900 * Rnd) + 1600)
    End If
End If

If fly2.Left > bird.Left And fly2.Left < bird.Left + bird.Width Then
    If fly2.Top > bird.Top And fly2.Top < bird.Top + bird.Height Then
        food.Caption = food.Caption + 1
        fly2.Left = form1.Width
        Randomize
        fly2.Top = Int((2900 * Rnd) + 1600)
    End If
End If

If fly3.Left > bird.Left And fly3.Left < bird.Left + bird.Width Then
    If fly3.Top > bird.Top And fly3.Top < bird.Top + bird.Height Then
        food.Caption = food.Caption + 1
        fly3.Left = form1.Width
        Randomize
        fly3.Top = Int((2900 * Rnd) + 1600)
    End If
End If


If fly1.Left < 0 Then GoTo vlieg1
If fly2.Left < 0 Then GoTo vlieg2
If fly3.Left < 0 Then GoTo vlieg3
GoTo einde

vlieg1:
fly1.Left = form1.Width
Randomize

fly1.Top = Int((3000 * Rnd) + 1600)

GoTo einde

vlieg2:
fly2.Left = form1.Width
Randomize

fly2.Top = Int((3000 * Rnd) + 1600)

GoTo einde

vlieg3:
fly3.Left = form1.Width
Randomize

fly3.Top = Int((3000 * Rnd) + 1600)





einde:


End Sub

Private Sub timer_plane_Timer()
plane.Left = plane.Left - 150

If plane.Left + plane.Width < 0 Then
    plane.Picture = plane1.Picture
    plane.Left = form1.Width
    Randomize
    plane.Top = Int((2500 * Rnd) + 1600)
End If







If plane.Left >= bird.Left And plane.Left <= bird.Left + bird.Width Or plane.Left + plane.Width >= bird.Left And plane.Left + plane.Width <= bird.Left + bird.Width Then
    If bird.Visible = False Then GoTo einde
        If plane.Top >= bird.Top And plane.Top < bird.Top + bird.Height Then
        
        Timer_clouds.Enabled = False
        Timer_wings.Enabled = False
        bird_hit_by_plane.Top = bird.Top
        bird_hit_by_plane.Left = bird.Left
        bird.Visible = False
        shit.Visible = False
        bird_hit_by_plane.Visible = True
        Timer_falling_after_plane.Enabled = True
        
    End If
    
    If plane.Top + (plane.Height / 2) >= bird.Top And plane.Top + (plane.Height / 2) < bird.Top + bird.Height Then
        Timer_clouds.Enabled = False
        Timer_wings.Enabled = False
        bird_hit_by_plane.Top = bird.Top
        bird_hit_by_plane.Left = bird.Left
        bird.Visible = False
        shit.Visible = False
        bird_hit_by_plane.Visible = True
        Timer_falling_after_plane.Enabled = True
    End If
    
    
    If plane.Top + plane.Height >= bird.Top And plane.Top + plane.Height < bird.Top + bird.Height Then
        Timer_clouds.Enabled = False
        Timer_wings.Enabled = False
        bird_hit_by_plane.Top = bird.Top
        bird_hit_by_plane.Left = bird.Left
        bird.Visible = False
        shit.Visible = False
        bird_hit_by_plane.Visible = True
        Timer_falling_after_plane.Enabled = True
    End If
       
End If








einde:



End Sub

Private Sub Timer_shit_clean_Timer()
If shit_on_ground.Left + shit_on_ground.Width <= 0 Then
    Timer_shit_clean.Enabled = False
    shit_on_ground.Visible = False
End If

shit_on_ground.Left = shit_on_ground.Left - 25


End Sub

Private Sub Timer_wings_Timer()
If bird.Picture = wings_up.Picture Then bird.Picture = wings_down.Picture Else bird.Picture = wings_up.Picture

End Sub

Private Sub Timer1_Timer()

End Sub
