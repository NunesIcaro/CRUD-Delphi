unit uProfessoresDAO;
interface
uses uProfessores, FireDAC.Comp.Client, System.SysUtils;

type TProfessoresDAO = class
  public
  class procedure Inserir(const aProfessores: TProfessores; const aConnection: TFDConnection);
end;



implementation

{ TProfessoresDAO }

class procedure TProfessoresDAO.Inserir(const aProfessores: TProfessores;
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
