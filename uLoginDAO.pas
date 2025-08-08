unit uLoginDAO;
interface
uses uLogin,FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param;

type TLoginDao = class

class procedure Selecionar(aLogin: Tlogin; aConnection: TFDConnection);

end;

implementation

{ TLoginDao }

class procedure TLoginDao.Selecionar(aLogin: Tlogin;
  aConnection: TFDConnection);
var Query : TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.Close;
    Query.SQL.Text := 'SELECT users_Login, users_Password FROM users WHERE users_login = :login, users_Password = :Senha';
    Query.ParamByName('login').AsString := aLogin.pNomeLog;
    Query.ParamByName('Senha').AsString := aLogin.pSenhaLog;
    Query.Open;
  finally
    Query.Free;
  end;
end;

end.
