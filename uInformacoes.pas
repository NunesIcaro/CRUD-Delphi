unit uInformacoes;

interface

type TInformacoes = class
   protected
   //Atributos

   Nome: String;
   CPF: String;

   public
   //Getters e Setters

   function getNome: String;
   procedure setNome(aNome: String);

   function getCPF: String;
   procedure setCPF (aCPF: String);

end;




implementation

{ TInformacoes }
//Getters

//Getter do CPF
function TInformacoes.getCPF: String;
begin
  Result := Self.CPF;
end;



//Getter do Nome

function TInformacoes.getNome: String;
begin
  Result := Self.Nome;
end;

//Setters


//Setter do CPF
procedure TInformacoes.setCPF(aCPF: String);
begin
  Self.CPF := aCPF;
end;

//Setter do Nome
procedure TInformacoes.setNome(aNome: String);
begin
  Self.Nome := aNome;
end;

end.
