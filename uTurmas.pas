unit uTurmas;

interface
type TTurmas = class

  protected
  //Atributos
  CodigoTurma : Integer;
  CodigoProf : Integer;
  CodigoDiscT : Integer;

  public
  //Properties
  property pCodigoTurma: Integer read CodigoTurma write CodigoTurma;
  property pCodigoProf: Integer read CodigoProf write CodigoProf;
  property pCodigoDiscT: Integer read CodigoDiscT write CodigoDiscT;

  //Getters e Setters
  function getCodigoTurma: Integer;
  procedure setCodigoTurma (aCodigoTurma:Integer);

  function getCodigoProf: Integer;
  procedure setCodigoProf(aCodigoProf:Integer);

  function getCodigoDiscT: Integer;
  procedure setCodigoDiscT(aCodigoDiscT:Integer);

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
function TTurmas.getCodigoProf: Integer;
begin
  Result := Self.CodigoProf;
end;

//Getter do Codigo da Turma
function TTurmas.getCodigoTurma: Integer;
begin
  Result := Self.CodigoTurma;
end;


//Setters

//Setter do Codigo da Disciplina
procedure TTurmas.setCodigoDiscT(aCodigoDiscT: Integer);
begin
  Self.CodigoDiscT := aCodigoDiscT;
end;

//Setter do Codigo do Professor
procedure TTurmas.setCodigoProf(aCodigoProf: Integer);
begin
  Self.CodigoProf := aCodigoProf;
end;

//Setter do Codigo da Turma
procedure TTurmas.setCodigoTurma(aCodigoTurma: Integer);
begin
  Self.CodigoTurma := aCodigoTurma;
end;

end.
