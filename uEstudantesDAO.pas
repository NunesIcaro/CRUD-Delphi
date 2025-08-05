unit uEstudantesDAO;

interface

uses uEstudantes, FireDac.Comp.Client;

type TEstudantesDAO = class

  public
  procedure Inserir(const aEstudantes: TEstudantes; const aConnection: TFDConnection);

end;

implementation

{ TInformacoesDAO }

procedure TEstudantesDAO.Inserir(const aEstudantes: TEstudantes;
  const aConnection: TFDConnection);
var Query : TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := aConnection;
    Query.SQL.Text := 'INSERT INTO'
  finally

  end;
end;

end.
