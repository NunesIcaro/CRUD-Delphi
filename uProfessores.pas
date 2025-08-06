unit uProfessores;

interface

uses uInformacoes;

type
  TProfessores = class(TInformacoes)
    IDProfessores: Integer;

    // Getters e Setters

    function getNome: String;
    procedure setNome(aNome: String);

    function getCPF: String;
    procedure setCPF(aCPF: String);

    function getIDProfessores: Integer;
    procedure setIDProfessores(aIDProfessores: Integer);

  end;

implementation

{ TProfessores }

// Getters

// Getter do CPF
function TProfessores.getCPF: String;
begin
  Result := Self.CPF;
end;

// Getter do ID
function TProfessores.getIDProfessores: Integer;
begin
  Result := Self.IDProfessores;
end;

// Getter do Nome
function TProfessores.getNome: String;
begin
  Result := Self.Nome;
end;

// Setters

// Setter do CPF
procedure TProfessores.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

// Setter do ID
procedure TProfessores.setIDProfessores(aIDProfessores: Integer);
begin
  Self.IDProfessores := aIDProfessores;
end;

// Setter do Nome
procedure TProfessores.setNome(aNome: String);
begin
  Self.Nome := aNome;
end;

end.
