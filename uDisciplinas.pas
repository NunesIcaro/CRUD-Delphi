unit uDisciplinas;

interface
type TDisciplinas = class

  protected
  //Atributos
  CodigoDisc : Integer;
  NomeDisc: String;

  public
  //Properties
  property pCodigoDisc: Integer read CodigoDisc write CodigoDisc;
  property pNomeDisc: String read NomeDisc write NomeDisc;

  //Getters e Setters
  function getCodigoDisc: Integer;
  procedure setCodigoDisc(aCodigoDisc:Integer);

  function getNomeDisc: String;
  procedure setNomeDisc (aNomeDisc: String);



end;

implementation

{ TDisciplinas }

//Getters

//Getter do Codigo

function TDisciplinas.getCodigoDisc: Integer;
begin
  Result := Self.CodigoDisc;
end;

//Getter do Nome

function TDisciplinas.getNomeDisc: String;
begin
  Result := Self.NomeDisc;
end;


//Setters

//Setter do Codigo
procedure TDisciplinas.setCodigoDisc(aCodigoDisc: Integer);
begin
  Self.CodigoDisc := aCodigoDisc;
end;

//Setter do Nome
procedure TDisciplinas.setNomeDisc(aNomeDisc: String);
begin
  Self.NomeDisc := aNomeDisc;
end;

end.
