object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 303
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 80
    Width = 160
    Height = 13
    Caption = 'Wybierz tryb do gry w szachy'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Rubik'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Button1: TButton
    Left = 176
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Graj'
    TabOrder = 0
    OnClick = Button1Click
  end
  object lista: TComboBox
    Left = 144
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'lista'
    Items.Strings = (
      'Normalnie'
      'Losowo')
  end
end
