unit uDisciplinasDAO;

interface

uses uDisciplinas, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TDisciplinasDAO = class

  public
    class procedure Adicionar(const aDisciplinas: TDisciplinas; const aConnection: TFDConnection);
    class procedure Editar(const aDisciplinas: TDisciplinas; const aConnection: TFDConnection);
    class procedure Excluir(const aDisciplinas: TDisciplinas; const aConnection: TFDConnection);
  end;

implementation

{ TDisciplinasDAO }

class procedure TDisciplinasDAO.Adicionar(const aDisciplinas: TDisciplinas;
  const aConnection: TFDConnection);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO disciplinas (disc_codigo, disc_nome, disc_prof_codigo) VALUES (nextval(''Seq_disc_codigo''), :NomeDisc, :CodigoProfDisc)';
    Query.ParamByName('NomeDisc').AsString := aDisciplinas.pNomeDisc;
    Query.ParamByName('CodigoProfDisc').AsInteger := aDisciplinas.pCodigoProfDisc;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TDisciplinasDAO.Editar(const aDisciplinas: TDisciplinas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);

  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'UPDATE disciplinas SET disc_nome = :NomeDisc, disc_prof_codigo = :CodigoProfDisc WHERE disc_codigo = :CodigoDisc';
    Query.ParamByName('NomeDisc').AsString := aDisciplinas.pNomeDisc;
    Query.ParamByName('CodigoProfDisc').AsInteger := aDisciplinas.pCodigoProfDisc;
    Query.ParamByName('CodigoDisc').AsInteger := aDisciplinas.pCodigoDisc;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TDisciplinasDAO.Excluir(const aDisciplinas: TDisciplinas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'DELETE FROM disciplinas WHERE disc_codigo = :CodigoDisc';
    Query.ParamByName('CodigoDisc').AsInteger := aDisciplinas.pCodigoDisc;
    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

end.
