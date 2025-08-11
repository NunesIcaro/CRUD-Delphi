unit uTurmasDAO;

interface

uses uTurmas, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TTurmasDAO = class

  public
    class procedure Adicionar(const aTurmas: TTurmas; const aConnection: TFDConnection);
    class procedure Editar(const aTurmas: TTurmas; const aConnection: TFDConnection);
    class procedure Excluir(const aTurmas: TTurmas; const aConnection: TFDConnection);

  end;

implementation

{ TTurmasDAO }

class procedure TTurmasDAO.Editar(const aTurmas: TTurmas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);

  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'UPDATE turmas SET turmas_prof_codigo = :CodigoProfT, turmas_disc_codigo = :CodigoDiscT WHERE turmas_codigo = :CodigoTurma';
    Query.ParamByName('CodigoProfT').AsInteger := aTurmas.pCodigoProfT;
    Query.ParamByName('CodigoDiscT').AsInteger := aTurmas.pCodigoDiscT;
    Query.ParamByName('CodigoTurma').AsInteger := aTurmas.pCodigoTurma;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TTurmasDAO.Excluir(const aTurmas: TTurmas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'DELETE FROM turmas WHERE turmas_codigo = :CodigoTurma';
    Query.ParamByName('CodigoTurma').AsInteger := aTurmas.pCodigoTurma;
    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TTurmasDAO.Adicionar(const aTurmas: TTurmas;
  const aConnection: TFDConnection);
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO turmas (turmas_codigo, turmas_prof_codigo,turmas_disc_codigo) VALUES (nextval(''Seq_turmas_codigo''), :CodigoProfT, :CodigoDiscT)';
    Query.ParamByName('CodigoProfT').AsInteger := aTurmas.pCodigoProfT;
    Query.ParamByName('CodigoDiscT').AsInteger := aTurmas.pCodigoDiscT;

    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.
