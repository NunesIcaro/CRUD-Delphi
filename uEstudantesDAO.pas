unit uEstudantesDAO;

interface

uses uEstudantes, FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param;

type TEstudantesDAO = class

  public
  class procedure Inserir(const aEstudantes: TEstudantes; const aConnection: TFDConnection);

end;

implementation

{ TInformacoesDAO }

class procedure TEstudantesDAO.Inserir(const aEstudantes: TEstudantes;
  const aConnection: TFDConnection);
var Query : TFDQuery;
begin
  if not Assigned(aEstudantes) then
  raise Exception.Create('Estudante não pode ser nil');

  if not Assigned(aConnection) then
    raise Exception.Create('Conexão inválida');

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
