unit uMainDAO;

interface
uses uMainForm,uEstudantes,uProfessores,uDisciplinas,uMatriculas,uTurmas, FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param,FireDAC.Stan.Option;

type TMainDAO = class

  public
  class procedure PesquisarGeral(aConnection: TFDConnection; aQuery: TFDQuery; aSearchS: String; aSearchI: Integer);
end;

implementation

{ TMainDAO }

class procedure TMainDAO.PesquisarGeral(
  aConnection: TFDConnection; aQuery: TFDQuery; aSearchS: String; aSearchI:Integer);

begin
  try
    aQuery.Connection := aConnection;
    aQuery.Close;
    if (aSearchS = '') and (aSearchI = 0 ) then begin
      aQuery.SQL.Text := 'SELECT * FROM vw_geral;'
    end else if (aSearchI <> 0) then begin
      aQuery.SQL.Text := 'SELECT * FROM vw_geral WHERE UPPER(estu_codigo) LIKE UPPER(:aSearchI)' +
      'or UPPER(turmas_codigo) LIKE UPPER(:aSearchI) or UPPER(disc_codigo) LIKE UPPER(:aSearchI) or UPPER(prof_codigo) LIKE UPPER(:aSearchI) or UPPER(matri_codigo) LIKE UPPER(:aSearchI)';
      aQuery.ParambyName('aSearchI').AsInteger:= aSearchI;
    end else begin
      aQuery.SQL.Text := 'SELECT * FROM vw_geral WHERE UPPER(estu_nome) LIKE UPPER(:aSearchS)' +
      'or UPPER(turmas_nome) LIKE UPPER(:aSearchS) or UPPER(disc_nome) LIKE UPPER(:aSearchS) or UPPER(prof_nome) LIKE UPPER(:aSearchS) or UPPER(prof_cpf) LIKE UPPER(:aSearchS)';
      aQuery.ParambyName('aSearchS').AsString := '%' + aSearchS + '%';

    end;

    aQuery.FetchOptions.Mode := fmAll;
    aQuery.Open;
  finally

  end;

end;

end.
