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
    Query.SQL.Text := 'INSERT INTO disciplinas (disc_codigo, disc_nome, disc_prof_codigo) VALUES (:CodigoDisc, :NomeDisc, :CodigoProfDisc)';
    Query.ParamByName('CodigoDisc').AsInteger := aDisciplinas.pCodigoDisc;
    Query.ParamByName('NomeDisc').AsString := aDisciplinas.pNomeDisc;
    Query.ParamByName('CodigoProfDisc').AsInteger := aDisciplinas.pCodigoProfDisc;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

end.
