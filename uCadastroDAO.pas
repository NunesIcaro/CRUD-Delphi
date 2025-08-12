unit uCadastroDAO;

interface

uses uCadastro, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TCadastroDAO = class

  public
    class procedure Inserir(const aCadastro: TCadastro;
      const aConnection: TFDConnection);

  end;

implementation

{ TCadastroDAO }

class procedure TCadastroDAO.Inserir(const aCadastro: TCadastro;
  const aConnection: TFDConnection);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO users(users_codigo, users_login, users_password) VALUES (nextval(''Seq_users_codigo''), :NomeLog, :SenhaLog)';
    Query.ParamByName('NomeLog').AsString := aCadastro.pNomeLog;
    Query.ParamByName('SenhaLog').AsString := aCadastro.pSenhaLog;

    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;
end.
