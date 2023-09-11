object Form2: TForm2
  Left = 404
  Top = 284
  BorderStyle = bsDialog
  Caption = 'First Form'
  ClientHeight = 141
  ClientWidth = 237
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 217
    Height = 65
    Alignment = taCenter
    AutoSize = False
    Caption = 'UTILIZANDO PROCESS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 48
    Top = 88
    Width = 129
    Height = 41
    Caption = 'START'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.ts'
    Filter = 'Arquivo TypeScript|*.ts'
    Left = 200
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 200
    Top = 56
  end
end
