unit uInformacoes;

interface

type
  TInformacoes = class
  Protected
    // Atributos
    Nome: String;
    CPF: String;
  Public
    // Properties
    property pNome: String read Nome write Nome;
    property pCPF: String read CPF write CPF;

    // Getters e Setters

    function getNome: String;
    procedure setNome(aNome: String);

    function getCPF: String;
    procedure setCPF(aCPF: String);

  end;

implementation

{ TInformacoes }
// Getters

// Getter do CPF
function TInformacoes.getCPF: String;
begin
  Result := Self.CPF;
end;



// Getter do Nome

function TInformacoes.getNome: String;
begin
  Result := Self.Nome;
end;

// Setters

// Setter do CPF
procedure TInformacoes.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

// Setter do Nome
procedure TInformacoes.setNome(aNome: String);
begin
  Self.Nome := aNome;
end;

end.
