object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demo - DTServiceManager'
  ClientHeight = 319
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 626
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 286
    Width = 193
    Height = 25
    Cursor = crHandPoint
    Caption = 'Status do Servico'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 287
    Width = 193
    Height = 25
    Cursor = crHandPoint
    Caption = 'Finalizar Servico'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 441
    Top = 287
    Width = 193
    Height = 25
    Cursor = crHandPoint
    Caption = 'Inicializar Servico'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DTServiceManager1: TDTServiceManager
    Left = 304
    Top = 112
  end
end
