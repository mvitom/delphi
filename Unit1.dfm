object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 648
  ClientWidth = 1037
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
  object Image1: TImage
    Left = 480
    Top = 88
    Width = 400
    Height = 400
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 281
    Height = 81
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 95
    Width = 281
    Height = 89
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 190
    Width = 281
    Height = 81
    Caption = 'iterace(optimalizace)'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Panel1: TPanel
    Left = 24
    Top = 277
    Width = 225
    Height = 132
    Alignment = taLeftJustify
    Caption = 'Volba metody'
    TabOrder = 3
    VerticalAlignment = taAlignTop
    object RadioButton1: TRadioButton
      Left = 8
      Top = 33
      Width = 113
      Height = 17
      Caption = 'ZigZag'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 65
      Width = 113
      Height = 17
      Caption = 'Nahodne smery'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 8
      Top = 96
      Width = 113
      Height = 17
      Caption = 'Gradientni metoda'
      TabOrder = 2
    end
  end
end
