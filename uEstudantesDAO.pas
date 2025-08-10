unit uEstudantesDAO;

interface

uses uEstudantes, FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param;

type TEstudantesDAO = class

  public
  class procedure Adicionar(const aEstudantes: TEstudantes; const aConnection: TFDConnection);
  class procedure Editar(const aEstudantes: TEstudantes; const aConnection: TFDConnection);
  class procedure Excluir(const aEstudantes: TEstudantes; const aConnection: TFDConnection);

end;

implementation
{ TEstudantesDAO }

//Procedure de Editar
class procedure TEstudantesDAO.Editar(const aEstudantes: TEstudantes;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);

  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'UPDATE estudantes SET estu_nome = :Nome, estu_cpf = :CPF, estu_turmas_codigo = :Turma WHERE estu_codigo = :Codigo';
    Query.ParamByName('Nome').AsString := aEstudantes.pNome;
    Query.ParamByName('CPF').AsString := aEstudantes.pCPF;
    Query.ParamByName('Turma').AsString := aEstudantes.Turma;
    Query.ParamByName('Codigo').AsInteger := aEstudantes.IDEstudantes;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

//Procedure de Excluir
class procedure TEstudantesDAO.Excluir(const aEstudantes: TEstudantes;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'DELETE FROM estudantes WHERE estu_codigo = :Codigo';
    Query.ParamByName('Codigo').AsInteger := aEstudantes.IDEstudantes;
    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

//Procedure de Inserir
class procedure TEstudantesDAO.Adicionar(const aEstudantes: TEstudantes;
  const aConnection: TFDConnection);
var Query : TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO estudantes (estu_codigo, estu_nome, estu_cpf, estu_turmas_codigo) VALUES (nextval(''Seq_estu_codigo''), :Nome, :CPF, :Turma)';
    Query.ParamByName('Nome').AsString := aEstudantes.pNome;
    Query.ParamByName('CPF').AsString := aEstudantes.pCPF;
    Query.ParamByName('Turma').AsString := aEstudantes.Turma;

    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.
