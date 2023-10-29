unit UTranslation;

interface

uses
  System.Generics.Collections, System.SysUtils;

type
  TTranslationDictionary = class
  private
    FTranslations: TDictionary<string, string>;
  public
    constructor Create;
    destructor Destroy; override;
    procedure LoadTranslations(Language: string);
    function Translate(const Identifier: string): string;
  end;

implementation

constructor TTranslationDictionary.Create;
begin
  FTranslations := TDictionary<string, string>.Create;
end;

destructor TTranslationDictionary.Destroy;
begin
  FTranslations.Free;
  inherited;
end;

procedure TTranslationDictionary.LoadTranslations(Language: string);
begin
  // Carregue as traduções com base no idioma selecionado (por exemplo, de um arquivo ou de outro recurso)
  // Aqui você carregaria as traduções no dicionário
  // Exemplo: FTranslations.Add('Label1', 'Olá');
  // Adicione as traduções para outros componentes
end;

function TTranslationDictionary.Translate(const Identifier: string): string;
begin
  if FTranslations.ContainsKey(Identifier) then
    Result := FTranslations[Identifier]
  else
    Result := Identifier; // Se não houver tradução, use o identificador original
end;

end.

