unit uMatriculas;
interface
type TMatriculas = class

  protected
  //Atributos
  CodigoMatri : Integer;
  CodigoTurmaM : Integer;
  CodigoEstuM : Integer;


  public
  //Properties
  property pCodigoMatri: Integer read CodigoMatri write CodigoMatri;
  property pCodigoTurmaM: Integer read CodigoTurmaM write CodigoTurmaM;
  property pCodigoEstuM: Integer read CodigoEstuM write CodigoEstuM;

  //Getters e Setters

  function getCodigoMatri: Integer;
  procedure setCodigoMatri(aCodigoMatri:Integer);

  function getCodigoTurmaM: Integer;
  procedure setCodigoTurmaM (aCodigoTurmaM:Integer);

  function getCodigoEstuM: Integer;
  procedure setCodigoEstuM(aCodigoEstuM:Integer);

end;

implementation

{ TMatriculas }

//Getters

//Getter do Código do Estudante
function TMatriculas.getCodigoEstuM: Integer;
begin
  Result := Self.CodigoEstuM;
end;

//Getter do Código da Matrícula
function TMatriculas.getCodigoMatri: Integer;
begin
  Result := Self.CodigoMatri;
end;

//Getter do Código da Turma
function TMatriculas.getCodigoTurmaM: Integer;
begin
  Result := Self.CodigoTurmaM;
end;

//Setters

//Setter do Código do Estudante

procedure TMatriculas.setCodigoEstuM(aCodigoEstuM: Integer);
begin
  Self.CodigoEstuM := aCodigoEstuM;
end;

//Setter do Código da Matrícula
procedure TMatriculas.setCodigoMatri(aCodigoMatri: Integer);
begin
  Self.CodigoMatri:= aCodigoMatri;
end;

//Setter do Código da Turma
procedure TMatriculas.setCodigoTurmaM(aCodigoTurmaM: Integer);
begin
  Self.CodigoTurmaM := aCodigoTurmaM;
end;

end.
