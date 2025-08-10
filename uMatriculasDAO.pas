unit uMatriculasDAO;

interface

uses uMatriculas, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TMatriculasDAO = class

  public
    class procedure Inserir(const aMatriculas: TMatriculas;
      const aConnection: TFDConnection);

  end;

implementation

{ TMatriculasDAO }

class procedure TMatriculasDAO.Inserir(const aMatriculas: TMatriculas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO matriculas (matri_codigo,matri_turma_codigo,matri_estu_codigo ) VALUES(nextval(''Seq_matri_codigo''), :IDTurma,:IDEstudante)';
    Query.ParamByName('IDTurma').AsInteger := aMatriculas.pCodigoTurmaM;
    Query.ParamByName('IDEstudante').AsInteger := aMatriculas.pCodigoEstuM;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

end.
