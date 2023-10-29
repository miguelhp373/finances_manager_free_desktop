unit UDataModuleQuery;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModuleQuery = class(TDataModule)
    queryActions: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleQuery: TDataModuleQuery;

implementation

uses  UDataModuleConnection;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
