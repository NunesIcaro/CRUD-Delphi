unit uDisciplinasDAO;

interface

uses uDisciplinas, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TDisciplinasDAO = class

  public
    class procedure Inserir(const aDisciplinas: TDisciplinas;
      const aConnection: TFDConnection);

  end;

implementation

{ TDisciplinasDAO }

class procedure TDisciplinasDAO.Inserir(const aDisciplinas: TDisciplinas;
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
