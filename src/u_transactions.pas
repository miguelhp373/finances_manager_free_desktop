unit u_transactions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TFrTransactions = class(TForm)
    Panel1: TPanel;
    ButtonSave: TSpeedButton;
    ButtonClose: TSpeedButton;
    labelOperationType: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    cbxListCategorys: TComboBox;
    Label14: TLabel;
    Label13: TLabel;
    cbxListAccounts: TComboBox;
    lblDestinationAccount: TLabel;
    cbxDestinationAccount: TComboBox;
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    operationTypeTitle  : string;
    operationType : string;
  end;

var
  FrTransactions: TFrTransactions;

implementation

{$R *.dfm}

procedure TFrTransactions.ButtonCloseClick(Sender: TObject);
begin
  if(MessageDlg('Do you want to exit without saving?', mtConfirmation, mbYesNo, 0) <> mrYes )then
    exit;

  Close;
end;

procedure TFrTransactions.FormShow(Sender: TObject);
begin
  labelOperationType.Caption  :=  operationTypeTitle;

  lblDestinationAccount.Visible	:=  (operationType = 'Transfer');
  cbxDestinationAccount.Visible	:=  (operationType = 'Transfer');
end;

end.
