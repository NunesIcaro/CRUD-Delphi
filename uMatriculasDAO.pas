unit uMatriculasDAO;

interface

uses uMatriculas, FireDac.Comp.Client, System.SysUtils, FireDac.Stan.Param;

type
  TMatriculasDAO = class

  public
    class procedure Adicionar(const aMatriculas: TMatriculas; const aConnection: TFDConnection);
    class procedure Editar(const aMatriculas: TMatriculas; const aConnection: TFDConnection);
    class procedure Excluir(const aMatriculas: TMatriculas; const aConnection: TFDConnection);

  end;

implementation

{ TMatriculasDAO }

class procedure TMatriculasDAO.Adicionar(const aMatriculas: TMatriculas;
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

class procedure TMatriculasDAO.Editar(const aMatriculas: TMatriculas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);

  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'UPDATE matriculas SET matri_turma_codigo = :CodigoTurma, matri_estu_codigo = :CodigoEstudante WHERE matri_codigo = :Codigo';
    Query.ParamByName('CodigoTurma').AsInteger := aMatriculas.pCodigoTurmaM;
    Query.ParamByName('CodigoEstudante').AsInteger := aMatriculas.pCodigoEstuM;
    Query.ParamByName('matri_codigo').AsInteger := aMatriculas.pCodigoMatri;

    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

class procedure TMatriculasDAO.Excluir(const aMatriculas: TMatriculas;
  const aConnection: TFDConnection);
var Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'DELETE FROM matriculas WHERE matri_codigo = :Codigo';
    Query.ParamByName('matri_codigo').AsInteger := aMatriculas.pCodigoMatri;
    Query.ExecSQL;
  finally
    Query.Free;
  end;

end;

end.
