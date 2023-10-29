unit UDataModuleConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Data.DB, FireDAC.Comp.Client,
  Vcl.Dialogs;

type
  TDataModuleConnection = class(TDataModule)
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDConnection1: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleConnection: TDataModuleConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleConnection.DataModuleCreate(Sender: TObject);
var
  ExePath: string;
begin
  // Obtenha o caminho do EXE do aplicativo atual
  ExePath := ExtractFilePath(ParamStr(0));

  // Combine o caminho do EXE com o nome do arquivo de banco de dados
  // Neste exemplo, o nome do arquivo de banco de dados é 'Employees.s3db'
  // Você pode ajustar isso de acordo com o nome do seu banco de dados.
  FDConnection1.DriverName := 'SQLITE';
  FDConnection1.Params.Values['Database'] := ExePath + 'database.db';

  try
    // Estabeleça a conexão.
    FDConnection1.Open;
  except
    on E: EDatabaseError do
      MessageDlg('#404 - Connection Error!', mtError, [mbOK], 0);
  end;

end;

end.
