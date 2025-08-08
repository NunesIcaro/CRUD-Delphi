unit uCadastro;

interface

type TCadastro = class

  protected
    // Atributos
    NomeLog: String;
    SenhaLog: String;
    CodigoUser: Integer;

  public

    // Properties
    property pNomeLog: String read NomeLog write NomeLog;
    property pSenhaLog: String read SenhaLog write SenhaLog;
    property pCodigoUser: Integer read CodigoUser write CodigoUser;

    // Getters e Setters

    function getNomeLog: String;
    procedure setNomeLog (aNomeLog: String);

    function getSenhaLog: String;
    procedure setSenhaLog (aSenhaLog: String);

    function getCodigoUser: Integer;
    procedure setCodigoUser(aCodigoUser: Integer);
  end;

implementation

{ TCadastro }

//Getters

//Getter do NomeLog

function TCadastro.getNomeLog: String;
begin
  Result:= Self.NomeLog;
end;

// Getter da SenhaLog
function TCadastro.getSenhaLog: String;
begin
  Result:= Self.SenhaLog;
end;

//Getter do CodigoUser
function TCadastro.getCodigoUser: Integer;
begin
  Result := Self.CodigoUser;
end;

//Setters

//Setter do NomeLog
procedure TCadastro.setNomeLog(aNomeLog: String);
begin
  Self.NomeLog := aNomeLog;
end;

//Setter da SenhaLog
procedure TCadastro.setSenhaLog(aSenhaLog: String);
begin
  Self.SenhaLog := aSenhaLog;
end;

//Setter do CodigoUser
procedure TCadastro.setCodigoUser(aCodigoUser: Integer);
begin
  Self.CodigoUser := aCodigoUser;
end;


end.
