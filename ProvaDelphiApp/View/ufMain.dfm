object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Prova Delphi App'
  ClientHeight = 359
  ClientWidth = 649
  Color = clBtnFace
  Constraints.MaxHeight = 418
  Constraints.MaxWidth = 665
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 40
    Top = 24
    object Tarefas: TMenuItem
      Caption = 'Tarefas'
      object tarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = tarefa1Click
      end
      object tarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = tarefa2Click
      end
      object tarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = tarefa3Click
      end
    end
    object Sair: TMenuItem
      Caption = 'Sair'
      OnClick = OpcoesClick
    end
  end
end
