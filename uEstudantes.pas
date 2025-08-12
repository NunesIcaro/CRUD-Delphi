unit uEstudantes;

interface
uses uInformacoes, uTurmas;


type TEstudantes = class (TInformacoes)
    IDEstudantes: integer;
    TurmaID: Integer;

    //Getters e Setters

    function getIDEstudantes: integer;
    procedure setIDEstudantes(aIDEstudantes: integer);

    function getNome: String;
    procedure setNome(aNome:String);

    function getCPF: String;
    procedure setCPF(aCPF:String);

    function getTurmaID: Integer;
    procedure setTurmaID(aTurmaID:Integer);


end;


implementation

{ TEstudantes }

//Getters

//Getter do CPF
function TEstudantes.getCPF: String;
begin
  Result := Self.CPF;
end;

//Getter do ID
function TEstudantes.getIDEstudantes: integer;
begin
  Result := Self.IDEstudantes;
end;

//Getter do Nome
function TEstudantes.getNome: String;
begin
  Result := Self.Nome;
end;

//Getter da Turma
function TEstudantes.getTurmaID: Integer;
begin
  Result := Self.TurmaID;
end;


//Setters

//Setter do CPF
procedure TEstudantes.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

//Setter do ID
procedure TEstudantes.setIDEstudantes(aIDEstudantes: integer);
begin
  Self.IDEstudantes := aIDEstudantes;
end;

//Setter do Nome
procedure TEstudantes.setNome(aNome: String);
begin
  Self.Nome := aNome;
end;

//Setter da Turma
procedure TEstudantes.setTurmaID(aTurmaID: Integer);
begin
  Self.TurmaID := aTurmaID;
end;

end.
