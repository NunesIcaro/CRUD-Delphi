unit uMainDAO;

interface
uses uMainForm,uEstudantes,uProfessores,uDisciplinas,uMatriculas,uTurmas, FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param,FireDAC.Stan.Option;

type TMainDAO = class

  public
  class procedure Pesquisar(aConnection: TFDConnection; aQuery: TFDQuery);
end;

implementation

{ TMainDAO }

class procedure TMainDAO.Pesquisar(
  aConnection: TFDConnection; aQuery: TFDQuery);

begin
  try
    aQuery.Connection := aConnection;
    aQuery.Close;
    aQuery.SQL.Text := 'SELECT * FROM vw_geral';
    aQuery.FetchOptions.Mode := fmAll;
    aQuery.Open;
  finally

  end;

  





end;

end.
