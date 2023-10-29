program finances_manager_free_desktop;



uses
  Vcl.Forms,
  u_menu in 'u_menu.pas' {fr_menu},
  Vcl.Themes,
  Vcl.Styles,
  UFormatters in 'Utils\UFormatters.pas',
  U_AppStyles in 'Styles\U_AppStyles.pas' {AppStyles: TDataModule},
  u_transactions in 'u_transactions.pas' {FrTransactions},
  u_managerAccounts in 'u_managerAccounts.pas' {FrManagerAccounts},
  UTranslation in 'Utils\UTranslation.pas',
  UUtils in 'Utils\UUtils.pas',
  UDataModuleConnection in 'Data\UDataModuleConnection.pas' {DataModuleConnection: TDataModule},
  UDataModuleQuery in 'Data\UDataModuleQuery.pas' {DataModuleQuery: TDataModule},
  UserAccountCRUD in 'Controllers\UserAccountCRUD.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TDataModuleConnection, DataModuleConnection);
  Application.CreateForm(TDataModuleQuery, DataModuleQuery);  
  Application.CreateForm(TAppStyles, AppStyles);
  Application.CreateForm(Tfr_menu, fr_menu); 
  Application.Run;
end.
