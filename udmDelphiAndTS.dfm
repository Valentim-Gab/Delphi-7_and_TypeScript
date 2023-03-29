object Form1: TForm1
  Left = 643
  Top = 291
  BorderStyle = bsDialog
  Caption = 'Second form'
  ClientHeight = 141
  ClientWidth = 232
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 217
    Height = 65
    Alignment = taCenter
    AutoSize = False
    Caption = 'UTILIZANDO SHELLEXECUTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
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
end
