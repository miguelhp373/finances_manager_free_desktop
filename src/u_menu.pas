unit u_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, Vcl.WinXPanels,
  Vcl.WinXCtrls;

type
  Tfr_menu = class(TForm)
    MainMenu1: TMainMenu;
    Finances1: TMenuItem;
    NewTransaction1: TMenuItem;
    Income1: TMenuItem;
    Expense1: TMenuItem;
    ransfer1: TMenuItem;
    ImageList1: TImageList;
    PanelLeft: TPanel;
    PanelClient: TPanel;
    PanelTop: TPanel;
    Label1: TLabel;
    cxGridAccounts: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridAccountsColumn1: TcxGridDBColumn;
    cxGridAccountsColumn2: TcxGridDBColumn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Timer1: TTimer;
    panelBottomInfos: TPanel;
    toolbarExitButton: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    CardPanel1: TCardPanel;
    Card1: TCard;
    SearchBox1: TSearchBox;
    DateTimePicker1: TDateTimePicker;
    cbxListAccounts: TComboBox;
    cbxListCategorys: TComboBox;
    CardPanel2: TCardPanel;
    Label2: TLabel;
    Card2: TCard;
    Label3: TLabel;
    CardPanel3: TCardPanel;
    Card3: TCard;
    Label4: TLabel;
    Label5: TLabel;
    CardPanel4: TCardPanel;
    Card4: TCard;
    Label6: TLabel;
    Label7: TLabel;
    CardPanel5: TCardPanel;
    Card5: TCard;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Logout1: TMenuItem;
    Logout2: TMenuItem;
    MyLogin1: TMenuItem;
    Settings1: TMenuItem;
    ManageAccounts1: TMenuItem;
    procedure Exit2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure toolbarExitButtonClick(Sender: TObject);
    procedure Income1Click(Sender: TObject);
    procedure Expense1Click(Sender: TObject);
    procedure ransfer1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure ManageAccounts1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_menu: Tfr_menu;

implementation

uses  U_AppStyles, UUtils, u_transactions, u_managerAccounts;

{$R *.dfm}


procedure Tfr_menu.FormCreate(Sender: TObject);
begin
  Timer1.Enabled  :=  true;
end;

procedure Tfr_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if(MessageDlg('Do you want to exit?', mtConfirmation, mbYesNo, 0) <> mrYes )then
    abort;
end;

procedure Tfr_menu.Exit2Click(Sender: TObject);
begin
  if(MessageDlg('Do you want to exit?', mtConfirmation, mbYesNo, 0) <> mrYes )then
    exit;
  Application.Terminate;
end;

procedure Tfr_menu.Income1Click(Sender: TObject);
begin
  FrTransactions  :=  TFrTransactions.Create(Self);
  FrTransactions.operationTypeTitle :=  'Income';
  FrTransactions.operationType :=  'Income';
  FrTransactions.ShowModal;
end;

procedure Tfr_menu.ManageAccounts1Click(Sender: TObject);
begin
  FrManagerAccounts  :=  TFrManagerAccounts.Create(Self);
  FrManagerAccounts.ShowModal;
end;

procedure Tfr_menu.Expense1Click(Sender: TObject);
begin
  FrTransactions  :=  TFrTransactions.Create(Self);
  FrTransactions.operationTypeTitle :=  'Expense';
  FrTransactions.operationType :=  'Expense';
  FrTransactions.ShowModal;
end;

procedure Tfr_menu.ransfer1Click(Sender: TObject);
begin
  FrTransactions  :=  TFrTransactions.Create(Self);
  FrTransactions.operationTypeTitle :=  'Transfer';
  FrTransactions.operationType :=  'Transfer';
  FrTransactions.ShowModal;
end;

procedure Tfr_menu.SpeedButton5Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex  :=  0;
end;

procedure Tfr_menu.toolbarExitButtonClick(Sender: TObject);
begin
  if(MessageDlg('Do you want to exit?', mtConfirmation, mbYesNo, 0) <> mrYes )then
    exit;
  Application.Terminate;
end;

procedure Tfr_menu.Timer1Timer(Sender: TObject);
begin
  panelBottomInfos.Caption := GetDayNameOfWeek() + ' - ' + DateToStr(now()) + ' - ' + TimeToStr(now()) + ' ';
end;

end.
