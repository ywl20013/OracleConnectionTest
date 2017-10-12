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
    mmoConnectionString: TMemo;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDQuery1: TFDQuery;
    edtUserName: TEdit;
    edtPassword: TEdit;
    Label2: TLabel;
    mmoSql: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    FDPhysOracleDriverLink1: TFDPhysOracleDriverLink;
    Button3: TButton;
    mmoCode: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  FDConnection1.Params.Add('Database=' + self.mmoConnectionString.Text);
  FDConnection1.Params.Add('User_Name=' + edtUserName.Text);
  FDConnection1.Params.Add('Password=' + edtPassword.Text);
  FDConnection1.Params.Add('CharacterSet=UTF8'); // ������������
  try
    FDConnection1.Connected := True;
    Application.MessageBox('�ɹ�����������', PChar(Caption), MB_OK + MB_ICONINFORMATION);
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

procedure TForm1.Button3Click(Sender: TObject);
var
  form: TForm;
  memo: TMemo;
  pnl: TPanel;
  btn: TButton;
begin
  form := TForm.Create(Application);
  memo := TMemo.Create(form);
  memo.Parent := form;
  memo.Align := alClient;
  memo.Lines.Assign(self.mmoCode.Lines);
  form.ShowModal;
  form.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  edtUserName.Text := 'ldjx';
  edtPassword.Text := 'ldjx';
end;

end.