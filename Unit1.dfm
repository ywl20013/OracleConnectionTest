object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Oracle Connection Test'
  ClientHeight = 362
  ClientWidth = 588
  Color = clBtnFace
  Constraints.MinHeight = 401
  Constraints.MinWidth = 604
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    588
    362)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 49
    Height = 13
    Caption = 'UserName'
  end
  object Label2: TLabel
    Left = 24
    Top = 47
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label4: TLabel
    Left = 24
    Top = 248
    Width = 14
    Height = 13
    Caption = 'Sql'
  end
  object Label3: TLabel
    Left = 24
    Top = 78
    Width = 42
    Height = 13
    Caption = 'ServerIp'
  end
  object Label5: TLabel
    Left = 24
    Top = 109
    Width = 107
    Height = 13
    Caption = 'Server Instance Name'
  end
  object Label6: TLabel
    Left = 342
    Top = 78
    Width = 52
    Height = 13
    Caption = 'ServerPort'
  end
  object Button1: TButton
    Left = 168
    Top = 136
    Width = 121
    Height = 25
    Caption = 'Test Connection'
    TabOrder = 5
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 168
    Top = 282
    Width = 407
    Height = 67
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtUserName: TEdit
    Left = 168
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtUserName'
  end
  object edtPassword: TEdit
    Left = 168
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtPassword'
  end
  object mmoSql: TMemo
    Left = 168
    Top = 171
    Width = 407
    Height = 66
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      'select sysdate from dual')
    TabOrder = 6
  end
  object Button2: TButton
    Left = 168
    Top = 247
    Width = 121
    Height = 25
    Caption = 'Execute'
    TabOrder = 7
    OnClick = Button2Click
  end
  object edtServerIp: TEdit
    Left = 168
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtServerIp'
  end
  object edtServeIinstanceName: TEdit
    Left = 168
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edtServeIinstanceName'
  end
  object edtServerPort: TEdit
    Left = 454
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edtServerPort'
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 288
    Top = 24
  end
  object FDConnection1: TFDConnection
    Left = 344
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 328
    Top = 304
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 256
    Top = 304
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 440
    Top = 24
  end
end
