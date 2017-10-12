unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Phys.OracleDef, FireDAC.Phys.Oracle, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FDManager1: TFDManager;
    FDConnection1: TFDConnection;
    Button1: TButton;
    Label1: TLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    edtUserName: TEdit;
    edtPassword: TEdit;
    Label2: TLabel;
    mmoSql: TMemo;
    Label4: TLabel;
    Button2: TButton;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    Label3: TLabel;
    edtServerIp: TEdit;
    Label5: TLabel;
    edtServeIinstanceName: TEdit;
    Label6: TLabel;
    edtServerPort: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  if (FDConnection1.Connected) then
    FDConnection1.Close;
  FDConnection1.Params.Clear;
  FDConnection1.Params.Add('DriverID=Ora');
  FDConnection1.Params.Add
    ('Database=(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=' + self.edtServerIp.Text +
    ')(PORT=' + self.edtServerPort.Text + ')))(CONNECT_DATA=(SERVICE_NAME=' + self.edtServeIinstanceName.Text + ')))');
  FDConnection1.Params.Add('User_Name=' + edtUserName.Text);
  FDConnection1.Params.Add('Password=' + edtPassword.Text);
  FDConnection1.Params.Add('CharacterSet=UTF8'); // 否则中文乱码
  try
    FDConnection1.Connected := True;
    Application.MessageBox('成功到服务器！', PChar(Caption), MB_OK + MB_ICONINFORMATION);
  except
    on e: Exception do
    begin
      Application.MessageBox(PChar(e.Message), PChar(Caption), MB_OK + MB_ICONSTOP);
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDQuery1.Close;
  FDQuery1.Open(self.mmoSql.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  edtUserName.Text := 'user name';
  edtPassword.Text := 'password';
  edtServerIp.Text := '127.0.0.1';
  edtServerPort.Text := '1521';
  edtServeIinstanceName.Text := 'orcl';
end;

end.
