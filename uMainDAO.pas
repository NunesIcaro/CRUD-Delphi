unit uMainDAO;

interface
uses uMainForm,uEstudantes,uProfessores,uDisciplinas,uMatriculas,uTurmas, FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param,FireDAC.Stan.Option;

type TMainDAO = class

  public
  class procedure PesquisarGeral(aConnection: TFDConnection; aQuery: TFDQuery; aSearchIS: String);

end;


implementation

{ TMainDAO }



class procedure TMainDAO.PesquisarGeral(
  aConnection: TFDConnection; aQuery: TFDQuery; aSearchIS: String);

begin
  try
    aQuery.Connection := aConnection;
    aQuery.Close;
    if (aSearchIS = '') then begin
      aQuery.SQL.Text := 'SELECT * FROM vw_geral;'
    end else if (aSearchIS <> '') then begin
      aQuery.SQL.Text := 'SELECT * FROM vw_geral WHERE "ID Estudante" = :aSearchI ' +
      'or "ID Turma" = :aSearchI or "ID Disciplina" = :aSearchI or "ID Professor" = :aSearchI or "ID Matrícula" = :aSearchI ' +
      'or UPPER("Nome Estudante") LIKE UPPER(:aSearchS)' +
      'or UPPER("Nome Turma") LIKE UPPER(:aSearchS) or UPPER("Nome Disciplina") LIKE UPPER(:aSearchS) '+
      'or UPPER("Nome Professor") LIKE UPPER(:aSearchS) or UPPER("CPF Professor") LIKE UPPER(:aSearchS) ' +
      'or UPPER("CPF Estudante") LIKE UPPER(:aSearchS)';
      aQuery.ParambyName('aSearchI').AsInteger:= StrToInt(aSearchIS);
      aQuery.ParambyName('aSearchS').AsString := '%' + aSearchIS + '%';
    end;

    aQuery.Open;
  finally

  end;

end;

end.
