unit UserAccountCRUD;

interface

uses
  FireDAC.Comp.Client, FireDAC.DApt.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef;

type
  TUserAccountCRUD = class
  private
    FConnection: TFDConnection;
    FQuery: TFDQuery;
  public
    constructor Create(Connection: TFDConnection);
    destructor Destroy; override;

    function CreateAccount(name: string; balance: Double): Boolean;
    function ReadAccounts(userID: Integer; var Accounts: TFDQuery): Boolean;
    function UpdateAccount(accountID: Integer; name: string; balance: Double): Boolean;
    function DeleteAccount(accountID: Integer): Boolean;
  end;

implementation

constructor TUserAccountCRUD.Create(Connection: TFDConnection);
begin
  FConnection := Connection;
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := FConnection;
end;

destructor TUserAccountCRUD.Destroy;
begin
  FQuery.Free;
  inherited;
end;

function TUserAccountCRUD.CreateAccount(name: string; balance: Double): Boolean;
begin
  FQuery.SQL.Text :=
    'INSERT INTO user_accounts (account_name, account_balance) ' +
    'VALUES (:account_name, :account_balance)';
  FQuery.ParamByName('account_name').AsString := name;
  FQuery.ParamByName('account_balance').AsFloat := balance;

  try
    FQuery.ExecSQL;
    Result := True;
  except
    Result := False;
  end;
end;

function TUserAccountCRUD.ReadAccounts(userID: Integer; var Accounts: TFDQuery): Boolean;
begin
  FQuery.SQL.Text := 'SELECT * FROM user_accounts WHERE user_id = :user_id';
  FQuery.ParamByName('user_id').AsInteger := userID;
{
  try
    Accounts.Close;
    Accounts.Open(FQuery);
    Result := True;
  except
    Result := False;
  end; }
end;

function TUserAccountCRUD.UpdateAccount(accountID: Integer; name: string; balance: Double): Boolean;
begin
  FQuery.SQL.Text :=
    'UPDATE user_accounts ' +
    'SET account_name = :account_name, account_balance = :account_balance ' +
    'WHERE account_id = :account_id';
  FQuery.ParamByName('account_name').AsString := name;
  FQuery.ParamByName('account_balance').AsFloat := balance;
  FQuery.ParamByName('account_id').AsInteger := accountID;

  try
    FQuery.ExecSQL;
    Result := True;
  except
    Result := False;
  end;
end;

function TUserAccountCRUD.DeleteAccount(accountID: Integer): Boolean;
begin
  FQuery.SQL.Text := 'DELETE FROM user_accounts WHERE account_id = :account_id';
  FQuery.ParamByName('account_id').AsInteger := accountID;

  try
    FQuery.ExecSQL;
    Result := True;
  except
    Result := False;
  end;
end;

end.

