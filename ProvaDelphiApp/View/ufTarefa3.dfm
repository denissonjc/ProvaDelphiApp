object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 375
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 253
    Width = 623
    Height = 119
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 8
    object EdtTotalSoma: TLabeledEdit
      Left = 477
      Top = 26
      Width = 121
      Height = 21
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'Total R$'
      TabOrder = 0
    end
    object btnTotalDivisoes: TButton
      Left = 304
      Top = 44
      Width = 153
      Height = 29
      Caption = 'Obter Total Divis'#245'es'
      TabOrder = 1
      OnClick = btnTotalDivisoesClick
    end
    object btnTotal: TButton
      Left = 304
      Top = 8
      Width = 153
      Height = 30
      Caption = 'Obter Total'
      TabOrder = 2
      OnClick = btnTotalClick
    end
    object EdtTotalDivisao: TLabeledEdit
      Left = 477
      Top = 74
      Width = 121
      Height = 21
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = 'Total divis'#245'es R$'
      TabOrder = 3
    end
    object btvoltar: TButton
      Left = 304
      Top = 79
      Width = 153
      Height = 27
      Caption = 'Voltar'
      TabOrder = 4
      OnClick = btvoltarClick
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 623
    Height = 244
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
