unit uProfessoresDAO;
interface
uses uProfessores, FireDAC.Comp.Client, System.SysUtils,FireDAC.Stan.Param;

type TProfessoresDAO = class
  public
  class procedure Adicionar(const aProfessores: TProfessores; const aConnection: TFDConnection);
  class procedure Editar(const aProfessores: TProfessores; const aConnection: TFDConnection);
  class procedure Excluir(const aProfessores: TProfessores; const aConnection: TFDConnection);
end;



implementation

{ TProfessoresDAO }

class procedure TProfessoresDAO.Editar(const aProfessores: TProfessores;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);

  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'UPDATE professores SET prof_nome = :Nome, prof_cpf = :CPF WHERE prof_codigo = :Codigo';
    Query.ParamByName('Nome').AsString := aProfessores.pNome;
    Query.ParamByName('CPF').AsString := aProfessores.pCPF;
    Query.ParamByName('Codigo').AsInteger := aProfessores.IDProfessores;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TProfessoresDAO.Excluir(const aProfessores: TProfessores;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'DELETE FROM professores WHERE prof_codigo = :Codigo';
    Query.ParamByName('Codigo').AsInteger := aProfessores.IDProfessores;
    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TProfessoresDAO.Adicionar(const aProfessores: TProfessores;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO professores (prof_codigo,prof_nome,prof_cpf) VALUES (:IDProfessores, :Nome, :CPF)';
    Query.ParamByName('IDProfessores').AsInteger := aProfessores.IDProfessores;
    Query.ParamByName('Nome').AsString := aProfessores.pNome;
    Query.ParamByName('CPF').AsString := aProfessores.pCPF;
    Query.ExecSQL;
  finally
    Query.Free;
  end;


end;

end.
