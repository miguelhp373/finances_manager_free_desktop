unit U_AppStyles;

interface

uses
  System.SysUtils, System.Classes, cxStyles, cxClasses, cxGridTableView;

type
  TAppStyles = class(TDataModule)
    cxGridStyles: TcxStyleRepository;
    colHeader001: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AppStyles: TAppStyles;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
