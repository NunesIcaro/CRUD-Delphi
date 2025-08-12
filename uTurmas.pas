unit uTurmas;
interface
type TTurmas = class

  protected
  //Atributos
  CodigoTurma : Integer;
  NomeTurma: String;
  CodigoProfT : Integer;
  CodigoDiscT : Integer;

  public
  //Properties
  property pCodigoTurma: Integer read CodigoTurma write CodigoTurma;
  property pCodigoProfT: Integer read CodigoProfT write CodigoProfT;
  property pCodigoDiscT: Integer read CodigoDiscT write CodigoDiscT;
  property pNomeTurma: String read NomeTurma write NomeTurma;

  //Getters e Setters
  function getCodigoTurma: Integer;
  procedure setCodigoTurma (aCodigoTurma:Integer);

  function getCodigoProfT: Integer;
  procedure setCodigoProfT (aCodigoProfT:Integer);

  function getCodigoDiscT: Integer;
  procedure setCodigoDiscT(aCodigoDiscT:Integer);

  function getNomeTurma: String;
  procedure setNomeTurma (aNomeTurma: String);

end;
implementation

{ TTurmas }

//Getters

//Getter do Codigo da Disciplina
function TTurmas.getCodigoDiscT: Integer;
begin
  Result := Self.CodigoDiscT;
end;

//Getter do Codigo do Professor
function TTurmas.getCodigoProfT: Integer;
begin
  Result := Self.CodigoProfT;
end;

//Getter do Codigo da Turma
function TTurmas.getCodigoTurma: Integer;
begin
  Result := Self.CodigoTurma;
end;

//Getter do Nome da Turma
function TTurmas.getNomeTurma: String;
begin
  Result := Self.NomeTurma;
end;

//Setters

//Setter do Codigo da Disciplina
procedure TTurmas.setCodigoDiscT(aCodigoDiscT: Integer);
begin
  Self.CodigoDiscT := aCodigoDiscT;
end;

//Setter do Codigo do Professor
procedure TTurmas.setCodigoProfT(aCodigoProfT: Integer);
begin
  Self.CodigoProfT := aCodigoProfT;
end;

//Setter do Codigo da Turma
procedure TTurmas.setCodigoTurma(aCodigoTurma: Integer);
begin
  Self.CodigoTurma := aCodigoTurma;
end;

//Setter do Nome da Turma
procedure TTurmas.setNomeTurma(aNomeTurma: String);
begin
  Self.NomeTurma := aNomeTurma;
end;

end.
