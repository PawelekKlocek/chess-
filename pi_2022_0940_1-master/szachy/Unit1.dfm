object Szachy: TSzachy
  Left = 0
  Top = 0
  Caption = 'Szachy'
  ClientHeight = 371
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = ustawParametry
  PixelsPerInch = 96
  TextHeight = 13
  object szachownica: TStringGrid
    Left = 8
    Top = 8
    Width = 345
    Height = 345
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
    OnDrawCell = rysowaniePol
    OnSelectCell = naKlikniecie
  end
  object Zamknij: TButton
    Left = 359
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Zamknij'
    TabOrder = 1
    OnClick = ZamknijClick
  end
end
