unit uEstudantes;

interface
uses uInformacoes, uTurmas;


type TEstudantes = class (TInformacoes)
    IDEstudantes: integer;
    Turma: String;

    //Getters e Setters

    function getIDEstudantes: integer;
    procedure setIDEstudantes(aIDEstudantes: integer);

    function getNome: String;
    procedure setNome(aNome:String);

    function getCPF: String;
    procedure setCPF(aCPF:String);

    function getTurma: String;
    procedure setTurma(aTurma:String);


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
function TEstudantes.getTurma: String;
begin
  Result := Self.Turma;
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
procedure TEstudantes.setTurma(aTurma: String);
begin
  Self.Turma := aTurma;
end;

end.
