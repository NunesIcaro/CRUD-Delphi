unit uMainDAO;

interface
uses uMainForm,uEstudantes,uProfessores,uDisciplinas,uMatriculas,uTurmas, FireDac.Comp.Client, System.SysUtils,FireDAC.Stan.Param,FireDAC.Stan.Option;

type TMainDAO = class

  public
  class procedure PesquisarGeral(aConnection: TFDConnection; aQuery: TFDQuery; aSearchIS: String; WhatPanel:String);

end;


implementation

{ TMainDAO }


class procedure TMainDAO.PesquisarGeral(
  aConnection: TFDConnection; aQuery: TFDQuery; aSearchIS: String; WhatPanel: String);

begin
var aSearchI: Integer;
  try
    aQuery.Connection := aConnection;
    aQuery.Close;
    if (aSearchIS = '') then begin
      if (WhatPanel = 'Estudantes') then begin
        aQuery.SQL.Text := 'SELECT * FROM estudantes;'
      end else if (WhatPanel = 'Professores') then begin
        aQuery.SQL.Text := 'SELECT * FROM professores;'
      end else if (WhatPanel = 'Disciplinas') then begin
        aQuery.SQL.Text := 'SELECT * FROM disciplinas;'
      end else if (WhatPanel = 'Matriculas') then begin
        aQuery.SQL.Text := 'SELECT * FROM matriculas;'
      end else if (WhatPanel = 'Turmas') then begin
        aQuery.SQL.Text := 'SELECT * FROM turmas;'
      end else begin
        aQuery.SQL.Text := 'SELECT * FROM vw_geral;'
      end;

    end else if (aSearchIS >= '1') and (aSearchIS <='1000000000000') then begin

      aSearchI := StrToInt(aSearchIS);
      if (WhatPanel = 'Estudantes') then begin
        aQuery.SQL.Text := 'SELECT * FROM estudantes WHERE estu_codigo = :aSearchI;';
      end else if (WhatPanel = 'Professores') then begin
        aQuery.SQL.Text := 'SELECT * FROM professores WHERE prof_codigo = :aSearchI';
      end else if (WhatPanel = 'Disciplinas') then begin
        aQuery.SQL.Text := 'SELECT * FROM disciplinas WHERE disc_codigo = :aSearchI ' +
        'or disc_prof_codigo = :aSearchI';
      end else if (WhatPanel = 'Matriculas') then begin
        aQuery.SQL.Text := 'SELECT * FROM matriculas WHERE matri_codigo = :aSearchI;'
      end else if (WhatPanel = 'Turmas') then begin
        aQuery.SQL.Text := 'SELECT * FROM turmas WHERE turmas_codigo = :aSearchI;'
      end else begin
        aQuery.SQL.Text := 'SELECT * FROM vw_geral WHERE "ID Estudante" = :aSearchI ' +
        'or "ID Turma" = :aSearchI or "ID Disciplina" = :aSearchI or "ID Professor" = :aSearchI or "ID Matrícula" = :aSearchI ';
      end;

      aQuery.ParambyName('aSearchI').AsInteger:= aSearchI;
    end else if (aSearchIS <> '') then begin
      if (WhatPanel = 'Estudantes') then begin
        aQuery.SQL.Text := 'SELECT * FROM estudantes WHERE UPPER(estu_nome) LIKE UPPER(:aSearchS) '+
        'or UPPER(estu_cpf) LIKE UPPER(:aSearchS);';
      end else if (WhatPanel = 'Professores') then begin
        aQuery.SQL.Text := 'SELECT * FROM professores WHERE UPPER(prof_nome) LIKE UPPER(:aSearchS) '+
        'or UPPER(prof_cpf) LIKE UPPER(:aSearchS) ';
      end else if (WhatPanel = 'Disciplinas') then begin
        aQuery.SQL.Text := 'SELECT * FROM disciplinas WHERE UPPER(disc_nome) LIKE UPPER(:aSearchS)';
//      end else if (WhatPanel = 'Matriculas') then begin
//        aQuery.SQL.Text := 'SELECT * FROM matriculas ;'
      end else if (WhatPanel = 'Turmas') then begin
        aQuery.SQL.Text := 'SELECT * FROM turmas WHERE UPPER(turmas_nome) LIKE UPPER(:aSearchS);'
      end else begin
        aQuery.SQL.Text := 'SELECT * FROM vw_geral WHERE UPPER("Nome Estudante") LIKE UPPER(:aSearchS)' +
      'or UPPER("Nome Turma") LIKE UPPER(:aSearchS) or UPPER("Nome Disciplina") LIKE UPPER(:aSearchS) '+
      'or UPPER("Nome Professor") LIKE UPPER(:aSearchS) or UPPER("CPF Professor") LIKE UPPER(:aSearchS) ' +
      'or UPPER("CPF Estudante") LIKE UPPER(:aSearchS)';
      end;
      aQuery.ParambyName('aSearchS').AsString := '%' + aSearchIS + '%';
    end;

    aQuery.Open;
  finally

  end;

end;


end.
