unit uLogin;
interface
uses uCadastro;

type TLogin = class(TCadastro)

  public
  //Getters e Setters

  function getNomeLog: String;
  procedure setNomeLog (aNomeLog: String);

  function getSenhaLog: String;
  procedure setSenhaLog (aSenhaLog: String);



end;

implementation

{ TLogin }


//Getters

//Getter do Nome

function TLogin.getNomeLog: String;
begin
  Result := Self.NomeLog;
end;

//Getter da Senha

function TLogin.getSenhaLog: String;
begin
  Result := Self.SenhaLog;
end;

//Setters

//Setter do Nome

procedure TLogin.setNomeLog(aNomeLog: String);
begin
  Self.NomeLog := aNomeLog;
end;

//Setter da Senha

procedure TLogin.setSenhaLog(aSenhaLog: String);
begin
  Self.SenhaLog := aSenhaLog;
end;


end.
