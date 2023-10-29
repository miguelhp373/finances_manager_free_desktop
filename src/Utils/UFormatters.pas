unit UFormatters;

interface

uses
  SysUtils, Vcl.Dialogs;

type
  TFormatters = class
  public
    class function GetDayNameOfWeek(Language: string = 'en'): string;
    class function ValidateString(Value: string): Boolean;
    class function ValidateNumber(Value: string): Boolean;
    class function ValidateDateTime(Value: string): Boolean;
  end;

implementation

class function TFormatters.ValidateString(Value: string): Boolean;
begin
  Result := not Value.IsEmpty;
  if not Result then
    MessageDlg('Invalid Field!', mtError, [mbOK], 0);
end;

class function TFormatters.ValidateNumber(Value: string): Boolean;
var
  NumValue: Double;
begin
  Result := TryStrToFloat(Value, NumValue);
  if not Result then
    MessageDlg('Invalid Field!', mtError, [mbOK], 0);
end;

class function TFormatters.ValidateDateTime(Value: string): Boolean;
var
  DateTimeValue: TDateTime;
begin
  Result := TryStrToDateTime(Value, DateTimeValue);
  if not Result then
    MessageDlg('Invalid Field!', mtError, [mbOK], 0);
end;

class function TFormatters.GetDayNameOfWeek(Language: string): string;
const
  EnglishDayNames: array [1..7] of string = ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
  PortugueseDayNames: array [1..7] of string = ('Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado');
begin
  if Language = 'pt-br' then
    Result := PortugueseDayNames[DayOfWeek(Now)]
  else
    Result := EnglishDayNames[DayOfWeek(Now)];
end;

end.

