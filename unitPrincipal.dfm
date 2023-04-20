object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 190
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 193
    Top = 21
    Width = 62
    Height = 13
    Caption = 'Sobre Nome:'
  end
  object Button1: TButton
    Left = 24
    Top = 67
    Width = 329
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object editNome: TEdit
    Left = 24
    Top = 40
    Width = 163
    Height = 21
    TabOrder = 1
  end
  object editSobreNome: TEdit
    Left = 193
    Top = 40
    Width = 160
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 24
    Top = 98
    Width = 329
    Height = 89
    TabOrder = 3
  end
end
