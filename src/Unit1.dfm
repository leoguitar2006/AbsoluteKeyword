object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Absolute Keyword'
  ClientHeight = 363
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 305
    Height = 145
    Caption = 'Example #1 - Decode Colors'
    TabOrder = 0
    object Panel1: TPanel
      Left = 8
      Top = 64
      Width = 281
      Height = 57
      BevelKind = bkFlat
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
    end
  end
  object ColorBox1: TColorBox
    Left = 8
    Top = 24
    Width = 145
    Height = 22
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 23
    Width = 121
    Height = 25
    Caption = 'Generate New Color'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 151
    Width = 305
    Height = 210
    Caption = 'Example #2 - Casting Sender'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 135
      Width = 281
      Height = 58
      AutoSize = False
      Caption = 'Label1'
      WordWrap = True
    end
    object Edit1: TEdit
      Left = 8
      Top = 32
      Width = 281
      Height = 23
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 8
      Top = 61
      Width = 281
      Height = 60
      TabOrder = 1
    end
  end
end
