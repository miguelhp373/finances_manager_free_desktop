unit u_managerAccounts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TFrManagerAccounts = class(TForm)
    CardPanel1: TCardPanel;
    cxGrid1: TcxGrid;
    cx_user_accounts: TcxGridDBTableView;
    account_name: TcxGridDBColumn;
    account_balance: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cx_user_accountsColumn3: TcxGridDBColumn;
    cx_user_accountsColumn4: TcxGridDBColumn;
    Card1: TCard;
    Label2: TLabel;
    edt_account_name: TEdit;
    Label3: TLabel;
    edt_account_balance: TEdit;
    Panel1: TPanel;
    labelOperationType: TLabel;
    Label1: TLabel;
    cbx_status: TComboBox;
    Label4: TLabel;
    Panel2: TPanel;
    ButtonSave: TSpeedButton;
    ButtonClose: TSpeedButton;
    ds_user_accounts: TDataSource;
    ButtonNew: TSpeedButton;
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonNewClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure exec_query_user_accounts;
  public
    { Public declarations }
  end;

var
  FrManagerAccounts: TFrManagerAccounts;

implementation

uses  U_AppStyles, UDataModuleConnection, UDataModuleQuery, UFormatters,
      UserAccountCRUD;

{$R *.dfm}


procedure TFrManagerAccounts.FormCreate(Sender: TObject);
begin
  exec_query_user_accounts;
end;

procedure TFrManagerAccounts.ButtonNewClick(Sender: TObject);
begin
  edt_account_name.Clear;
  edt_account_balance.Clear;
end;

procedure TFrManagerAccounts.ButtonSaveClick(Sender: TObject);
var
  accountName: string;
  accountBalance: Double;
  UserAccountCRUD: TUserAccountCRUD;
begin

  accountName := edt_account_name.Text;

{  if not Formatters.ValidateString(edt_account_name.Text) then
  begin
    ActiveControl := edt_account_name;
    Exit;
  end;

  if not Formatters.ValidateNumber(edt_account_balance.Text) then
  begin
    ShowMessage('Balance must be a valid number.');
    ActiveControl :=  edt_account_balance;
    Exit;
  end; }

  if not TryStrToFloat(edt_account_balance.Text, accountBalance) then
  begin
    ShowMessage('Balance must be a valid number.');
    ActiveControl :=  edt_account_balance;
    Exit;
  end;

  // Crie uma instância da classe CRUD passando a conexão correta
  UserAccountCRUD := TUserAccountCRUD.Create(DataModuleConnection.FDConnection1);

  // Tente criar a nova conta
  if UserAccountCRUD.CreateAccount(accountName, accountBalance) then
  begin
    ShowMessage('Account created successfully.');
    exec_query_user_accounts; // Atualize a grade após a criação
  end
  else
  begin
    ShowMessage('Failed to create the account.');
  end;

  UserAccountCRUD.Free;
end;


procedure TFrManagerAccounts.ButtonCloseClick(Sender: TObject);
begin
  if(MessageDlg('Do you want to exit without saving?', mtConfirmation, mbYesNo, 0) <> mrYes )then
    exit;

  Close;
end;

procedure TFrManagerAccounts.exec_query_user_accounts;
var
  queryString : string;
begin

  queryString :=  'SELECT * FROM user_accounts';

  with  DataModuleQuery.queryActions  do
  begin
    close;
    SQL.Text := queryString;
    open;first;
  end;
end;

end.
