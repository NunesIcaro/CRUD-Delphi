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
    Query.SQL.Text := 'INSERT INTO turmas (turmas_codigo, turmas_prof_codigo,turmas_disc_codigo) VALUES (nextval(''Seq_turmas_codigo''), :CodigoProfT, :CodigoDiscT)';
    Query.ParamByName('CodigoProfT').AsInteger := aTurmas.pCodigoProfT;
    Query.ParamByName('CodigoDiscT').AsInteger := aTurmas.pCodigoDiscT;

    Query.ExecSQL;
  finally
    Query.Free;
  end;
end;

end.
