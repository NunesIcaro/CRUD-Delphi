unit uLoginDAO;
interface
uses uLogin,FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param;

type TLoginDao = class

  class function ValidarLogin(aLogin: Tlogin; aConnection: TFDConnection): Boolean;

end;

implementation

{ TLoginDao }

class function TLoginDao.ValidarLogin(aLogin: Tlogin;
  aConnection: TFDConnection): Boolean;
var Query : TFDQuery;

begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.Close;
    Query.SQL.Text := 'SELECT users_login, users_password FROM users WHERE users_login = :login AND users_password = :senha';
    Query.ParamByName('login').AsString := aLogin.pNomeLog;
    Query.ParamByName('senha').AsString := aLogin.pSenhaLog;
    Query.Open;

    Result := not Query.IsEmpty;
  finally
  end;
end;

end.
