unit uTurmasDAO;

interface

uses uTurmas, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TTurmasDAO = class

  public
    class procedure Inserir(const aTurmas: TTurmas;
      const aConnection: TFDConnection);

  end;

implementation

{ TTurmasDAO }

class procedure TTurmasDAO.Inserir(const aTurmas: TTurmas;
  const aConnection: TFDConnection);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO estudantes (estu_codigo, estu_nome, estu_cpf, estu_turmas_codigo) VALUES (:IDEstudantes, :Nome, :CPF, :Turma)';
    Query.ParamByName('IDEstudantes').AsInteger := aEstudantes.IDEstudantes;
    Query.ParamByName('Nome').AsString := aEstudantes.pNome;
    Query.ParamByName('CPF').AsString := aEstudantes.pCPF;
    Query.ParamByName('Turma').AsString := aEstudantes.Turma;

    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.
