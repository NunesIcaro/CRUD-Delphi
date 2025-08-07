unit uCadastroDAO;

interface

uses uCadastro, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TCadastroDAO = class

  public
    class procedure Inserir(const aEstudantes: TCadastro;
      const aConnection: TFDConnection);

  end;

implementation

{ TCadastroDAO }

class procedure TCadastroDAO.Inserir(const aEstudantes: TCadastro;
  const aConnection: TFDConnection);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO users (users_codigo, users_login, users_password) VALUES (:CodigoUser, :NomeLog, :SenhaLog)';
//    Query.ParamByName('IDEstudantes').AsInteger := aEstudantes.IDEstudantes;
//    Query.ParamByName('Nome').AsString := aEstudantes.pNome;
//    Query.ParamByName('CPF').AsString := aEstudantes.pCPF;
//    Query.ParamByName('Turma').AsString := aEstudantes.Turma;

    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;
end.
