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

end;

//Getter da Senha

function TLogin.getSenhaLog: String;
begin

end;

//Setters

//Setter do Nome

procedure TLogin.setNomeLog(aNomeLog: String);
begin

end;

//Setter da Senha

procedure TLogin.setSenhaLog(aSenhaLog: String);
begin

end;

//COMITTAR assim que puder -> Fiz o cadastroDAO e Comecei os Setters e os Getters do Login, amanhã acabar a query do login (SELECT)

end.
