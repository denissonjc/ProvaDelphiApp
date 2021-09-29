object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tarefa 2'
  ClientHeight = 240
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    635
    240)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 7
    Width = 26
    Height = 13
    Anchors = [akTop]
    Caption = 'Timer'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 43
    Height = 13
    Anchors = [akTop]
    Caption = 'Thread 1'
  end
  object Label2: TLabel
    Left = 8
    Top = 57
    Width = 43
    Height = 13
    Anchors = [akTop]
    Caption = 'Thread 2'
  end
  object Gauge1: TGauge
    AlignWithMargins = True
    Left = 9
    Top = 179
    Width = 617
    Height = 26
    Margins.Left = 9
    Margins.Right = 9
    Align = alBottom
    ForeColor = clSkyBlue
    Progress = 0
    ExplicitLeft = 4
    ExplicitTop = 166
  end
  object Gauge2: TGauge
    AlignWithMargins = True
    Left = 9
    Top = 211
    Width = 617
    Height = 26
    Margins.Left = 9
    Margins.Right = 9
    Align = alBottom
    ForeColor = clSkyBlue
    Progress = 0
    ExplicitLeft = 4
    ExplicitTop = 166
  end
  object btnprocessar: TButton
    Left = 8
    Top = 81
    Width = 152
    Height = 25
    Anchors = [akTop]
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btnprocessarClick
  end
  object edtTime2: TEdit
    Left = 60
    Top = 54
    Width = 100
    Height = 21
    Anchors = [akTop]
    TabOrder = 1
  end
  object edtTime1: TEdit
    Left = 60
    Top = 29
    Width = 100
    Height = 21
    Anchors = [akTop]
    TabOrder = 0
  end
  object btvoltar: TButton
    Left = 8
    Top = 112
    Width = 152
    Height = 27
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = btvoltarClick
  end
end
