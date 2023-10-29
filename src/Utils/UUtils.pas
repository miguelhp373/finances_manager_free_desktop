unit UUtils;

interface

uses
  SysUtils, Vcl.Forms; // Inclua a unidade SysUtils e Vcl.Forms

function getConfigFilePath(idConfig : integer) : string;
function GetDayNameOfWeek(Language: string = 'en'): string;

implementation

function getConfigFilePath(idConfig: integer): string;
begin
  case idConfig of
    1:
    begin
      Result := ExtractFilePath(Application.ExeName) + 'config_languages.res';
    end;
  else
    Result := ''; // Caso não corresponda a nenhum idConfig
  end;
end;

function GetDayNameOfWeek(Language: string): string;
const
  EnglishDayNames: array [1..7] of string = ('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
  PortugueseDayNames: array [1..7] of string = ('Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado');
begin

  if(Language = 'pt-br')then
    Result := PortugueseDayNames[DayOfWeek(Now)];

  if(Language = 'en')then
    Result := EnglishDayNames[DayOfWeek(Now)];

end;

end.

