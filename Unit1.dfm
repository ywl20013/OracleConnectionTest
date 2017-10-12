object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Oracle Connection Test'
  ClientHeight = 502
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    588
    502)
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
  object Label3: TLabel
    Left = 24
    Top = 77
    Width = 82
    Height = 13
    Caption = 'ConnectionString'
  end
  object Label4: TLabel
    Left = 24
    Top = 248
    Width = 14
    Height = 13
    Caption = 'Sql'
  end
  object Button1: TButton
    Left = 136
    Top = 252
    Width = 241
    Height = 25
    Caption = 'Test Connection'
    TabOrder = 3
    OnClick = Button1Click
  end
  object mmoConnectionString: TMemo
    Left = 136
    Top = 74
    Width = 439
    Height = 168
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      '(DESCRIPTION ='
      #9'(ADDRESS_LIST ='
      #9#9'(ADDRESS = '
      #9#9#9'(PROTOCOL = TCP)'
      #9#9#9'(HOST = 172.17.99.23)'
      #9#9#9'(PORT = 1521)'
      #9#9')'
      #9')'
      #9'(CONNECT_DATA ='
      #9#9'(SERVICE_NAME = shora2)'
      #9')'
      ')')
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 398
    Width = 439
    Height = 89
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtUserName: TEdit
    Left = 136
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtUserName'
  end
  object edtPassword: TEdit
    Left = 136
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtPassword'
  end
  object mmoSql: TMemo
    Left = 136
    Top = 287
    Width = 439
    Height = 66
    Anchors = [akLeft, akTop, akRight]
    Lines.Strings = (
      'select sysdate from dual')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 136
    Top = 363
    Width = 241
    Height = 25
    Caption = 'Execute'
    TabOrder = 5
    OnClick = Button2Click
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
    Left = 320
    Top = 424
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 248
    Top = 424
  end
  object FDPhysOracleDriverLink1: TFDPhysOracleDriverLink
    Left = 440
    Top = 24
  end
end
