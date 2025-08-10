unit uDisciplinas;

interface
type TDisciplinas = class

  protected
  //Atributos
  CodigoDisc : Integer;
  NomeDisc: String;
  CodigoProfDisc: Integer;

  public
  //Properties
  property pCodigoDisc: Integer read CodigoDisc write CodigoDisc;
  property pNomeDisc: String read NomeDisc write NomeDisc;
  property pCodigoProfDisc: Integer read CodigoProfDisc write CodigoProfDisc;

  //Getters e Setters
  function getCodigoDisc: Integer;
  procedure setCodigoDisc(aCodigoDisc:Integer);

  function getNomeDisc: String;
  procedure setNomeDisc (aNomeDisc: String);

  function getCodigoProfDisc: Integer;
  procedure setCodigoProfDisc (aCodigoProfDisc: Integer);




end;

implementation

{ TDisciplinas }

//Getters

//Getter do Codigo

function TDisciplinas.getCodigoDisc: Integer;
begin
  Result := Self.CodigoDisc;
end;

//Getter do Código do Professor da Disciplina
function TDisciplinas.getCodigoProfDisc: Integer;
begin
  Result := Self.CodigoProfDisc;
end;

//Getter do Nome

function TDisciplinas.getNomeDisc: String;
begin
  Result := Self.NomeDisc;
end;


//Setters

//Setter do Código
procedure TDisciplinas.setCodigoDisc(aCodigoDisc: Integer);
begin
  Self.CodigoDisc := aCodigoDisc;
end;

//Setter do Código do Professor da Disciplina
procedure TDisciplinas.setCodigoProfDisc(aCodigoProfDisc: Integer);
begin
  Self.CodigoProfDisc := aCodigoProfDisc;
end;

//Setter do Nome
procedure TDisciplinas.setNomeDisc(aNomeDisc: String);
begin
  Self.NomeDisc := aNomeDisc;
end;

end.
