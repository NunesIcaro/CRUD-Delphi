unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uProfessores,uProfessoresDAO,uEstudantes, uInformacoes,
  uEstudantesDAO, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, CommCtrl,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uDM, Vcl.Buttons, uDisciplinas,
  uDisciplinasDAO, uMatriculas, uMatriculasDAO, uTurmas, uTurmasDAO;

type
  Tf_Main = class(TForm)
    pnl_FundoMain: TPanel;
    pnl_Ferramentas: TPanel;
    pnl_Principal: TPanel;
    pnl_btn_Matri: TPanel;
    pnl_btn_Prof: TPanel;
    pnl_btn_Disc: TPanel;
    pnl_btn_Estu: TPanel;
    pnl_btn_Turmas: TPanel;
    img_CrudP: TImage;
    img_fundo: TImage;
    pnl_TabelaGeral: TPanel;
    ed_Search: TEdit;
    StringGridG: TStringGrid;
    pnl_btn_Logout: TPanel;
    btn_Editar: TButton;
    btn_Deletar: TButton;
    btn_Adicionar: TButton;
    pnl_AdicionarP: TPanel;
    lbl_NomeP: TLabel;
    lbl_CpfP: TLabel;
    pnl_CbcP: TPanel;
    lbl_PnlAdicionarP: TLabel;
    SP_btn_Sair2: TSpeedButton;
    ed_NomeP: TEdit;
    btn_ConcluirP: TButton;
    ed_CpfP: TEdit;
    pnl_AdicionarD: TPanel;
    lbl_NomeD: TLabel;
    lbl_IDProfD: TLabel;
    pnl_CbcD: TPanel;
    lbl_PnlAdicionarD: TLabel;
    SP_Btn_Sair3: TSpeedButton;
    ed_NomeD: TEdit;
    btn_ConcluirD: TButton;
    ed_IDProfD: TEdit;
    pnl_AdicionarM: TPanel;
    lbl_IDEstuM: TLabel;
    lbl_IDTurmaM: TLabel;
    pnl_CbcM: TPanel;
    lbl_pnlAdicionarM: TLabel;
    SP_Btn_Sair4: TSpeedButton;
    ed_IDEstuM: TEdit;
    btn_ConcluirM: TButton;
    ed_IDTurmaM: TEdit;
    pnl_AdicionarE: TPanel;
    lbl_NomeE: TLabel;
    lbl_CpfE: TLabel;
    lbl_TurmaE: TLabel;
    pnl_CbcE: TPanel;
    lbl_PnlAdicionarE: TLabel;
    SP_btn_Sair: TSpeedButton;
    ed_NomeE: TEdit;
    btn_ConcluirE: TButton;
    ed_CpfE: TEdit;
    ed_TurmaE: TEdit;
    pnl_AdicionarT: TPanel;
    lbl_NomeT: TLabel;
    lbl_IDProfT: TLabel;
    lbl_IDDiscT: TLabel;
    pnl_CbcT: TPanel;
    lbl_PnlAdicionarT: TLabel;
    SP_Btn_Sair5: TSpeedButton;
    ed_NomeT: TEdit;
    btn_ConcluirT: TButton;
    ed_IDProfT: TEdit;
    ed_IDDiscT: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SP_btn_SairClick(Sender: TObject);
    procedure btn_ConcluirEClick(Sender: TObject);
    procedure ed_SearchChange(Sender: TObject);
    procedure pnl_btn_EstuClick(Sender: TObject);
    procedure pnl_btn_EstuMouseEnter(Sender: TObject);
    procedure pnl_btn_EstuMouseLeave(Sender: TObject);
    procedure pnl_btn_LogoutClick(Sender: TObject);
    procedure btn_ConcluirPClick(Sender: TObject);
    procedure pnl_btn_ProfClick(Sender: TObject);
    procedure img_CrudPClick(Sender: TObject);
    procedure btn_EditarEClick(Sender: TObject);
    procedure btn_DeletarEClick(Sender: TObject);
    procedure pnl_btn_DiscClick(Sender: TObject);
    procedure pnl_btn_MatriClick(Sender: TObject);
    procedure pnl_btn_TurmasClick(Sender: TObject);
    procedure pnl_btn_ProfMouseEnter(Sender: TObject);
    procedure pnl_btn_DiscMouseEnter(Sender: TObject);
    procedure pnl_btn_MatriMouseEnter(Sender: TObject);
    procedure pnl_btn_TurmasMouseEnter(Sender: TObject);
    procedure pnl_btn_ProfMouseLeave(Sender: TObject);
    procedure pnl_btn_DiscMouseLeave(Sender: TObject);
    procedure pnl_btn_MatriMouseLeave(Sender: TObject);
    procedure pnl_btn_TurmasMouseLeave(Sender: TObject);
    procedure pnl_btn_LogoutMouseEnter(Sender: TObject);
    procedure pnl_btn_LogoutMouseLeave(Sender: TObject);
    procedure btn_AdicionarClick(Sender: TObject);
    procedure SP_btn_Sair2Click(Sender: TObject);
    procedure SP_Btn_Sair3Click(Sender: TObject);
    procedure btn_ConcluirDClick(Sender: TObject);
    procedure btn_ConcluirMClick(Sender: TObject);
    procedure SP_Btn_Sair4Click(Sender: TObject);
    procedure btn_ConcluirTClick(Sender: TObject);
    procedure SP_Btn_Sair5Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Main: Tf_Main;

implementation

{$R *.dfm}
uses uMainDAO, uLoginForm;
var PanelOpen: String;


procedure AtualizarStringGrid(aQuery: TDataSet; aStringGrid: TStringGrid);
var I: Integer;
begin
  aStringGrid.ColCount := aQuery.FieldCount;
  aStringGrid.RowCount := aQuery.RecordCount + 1;

  for I := 0 to aQuery.FieldCount - 1 do begin
    aStringGrid.Cells[I, 0] := aQuery.Fields[I].FieldName;
    aStringGrid.ColWidths[I] := 200;
  end;

  aQuery.First;
  while not aQuery.Eof do begin
    for I := 0 to aQuery.FieldCount - 1 do begin
      aStringGrid.Cells[I,aQuery.RecNo] := aQuery.Fields[I].AsString;


    end;
    aQuery.Next;
  end;
//  if aStringGrid.row[0] then


end;
procedure Tf_Main.btn_AdicionarClick(Sender: TObject);
begin
  if (PanelOpen = 'Estudantes') then begin
    pnl_AdicionarE.Show;
  end else if (PanelOpen = 'Professores') then begin
    pnl_AdicionarP.Show;
  end else if (PanelOpen = 'Disciplinas') then begin
    pnl_AdicionarD.Show;
  end else if (PanelOpen = 'Matriculas') then begin
    pnl_AdicionarM.Show;
  end else if (PanelOpen = 'Turmas') then begin
    pnl_AdicionarT.Show;
  end;

end;



procedure Tf_Main.btn_ConcluirDClick(Sender: TObject);
var Disciplina: TDisciplinas;
begin

   Disciplina := TDisciplinas.Create;
   Try
     Disciplina.pNomeDisc := ed_NomeD.Text;
     Disciplina.pCodigoProfDisc := StrToInt(ed_IDProfD.Text);


     TDisciplinasDAO.Adicionar(Disciplina,DM.FDConnection1);
   Finally
      Disciplina.Free;
      DM.FDQuery2.Close;
      DM.FDQuery2.Open;
      AtualizarStringGrid(DM.FDQuery2,StringGridG);
      pnl_AdicionarD.Hide;
      ed_NomeD.Clear;
      ed_IDProfD.Clear;
   end;
end;

procedure Tf_Main.btn_ConcluirEClick(Sender: TObject);
var Estudante: TEstudantes;
begin

   Estudante := TEstudantes.Create;
   Try
     Estudante.TurmaID := StrToInt(ed_TurmaE.Text);
     Estudante.pNome := ed_NomeE.Text;
     Estudante.pCPF := ed_CpfE.Text;

     TEstudantesDao.Adicionar(Estudante,DM.FDConnection1);
   Finally
      Estudante.Free;
      DM.FDQuery2.Close;
      DM.FDQuery2.Open;
      AtualizarStringGrid(DM.FDQuery2,StringGridG);
      pnl_AdicionarE.Hide;
      ed_TurmaE.Clear;
      ed_NomeE.Clear;
      ed_CpfE.Clear;
   end;
end;




procedure Tf_Main.btn_ConcluirMClick(Sender: TObject);
var Matricula: TMatriculas;
begin

   Matricula := TMatriculas.Create;
   Try
     Matricula.pCodigoTurmaM := StrToInt(ed_IDTurmaM.Text);
     Matricula.pCodigoEstuM := StrToInt(ed_IDEstuM.Text);

     TMatriculasDAO.Adicionar(Matricula, DM.FDConnection1)
   Finally
      Matricula.Free;
      DM.FDQuery2.Close;
      DM.FDQuery2.Open;
      AtualizarStringGrid(DM.FDQuery2,StringGridG);
      pnl_AdicionarM.Hide;
      ed_IDTurmaM.Clear;
      ed_IDEstuM.Clear;
   end;
end;

procedure Tf_Main.btn_ConcluirPClick(Sender: TObject);
var Professor: TProfessores;
begin
   Professor := TProfessores.Create;
   Try
     Professor.pNome := ed_NomeP.Text;
     Professor.pCPF := ed_CpfP.Text;

     TProfessoresDAO.Adicionar(Professor,DM.FDConnection1);
   Finally
      Professor.Free;
      DM.FDQuery2.Close;
      DM.FDQuery2.Open;
      AtualizarStringGrid(DM.FDQuery2,StringGridG);
      pnl_AdicionarP.Hide;
      ed_NomeP.Clear;
      ed_CpfP.Clear;
   end;

end;



procedure Tf_Main.btn_ConcluirTClick(Sender: TObject);
var Turma: TTurmas;
begin
   Turma:= TTurmas.Create;
   Try
     Turma.pNomeTurma := ed_NomeT.Text;
     Turma.pCodigoProfT := StrToInt(ed_IDProfT.Text);
     Turma.pCodigoDiscT := StrToInt(ed_IDDiscT.Text);

     TTurmasDAO.Adicionar(Turma,DM.FDConnection1);
   Finally
      Turma.Free;
      DM.FDQuery2.Close;
      DM.FDQuery2.Open;
      AtualizarStringGrid(DM.FDQuery2,StringGridG);
      pnl_AdicionarT.Hide;
      ed_NomeT.Clear;
      ed_IDProfT.Clear;
      ed_IDDiscT.Clear;
   end;

end;

procedure Tf_Main.btn_DeletarEClick(Sender: TObject);
begin
//  TEstudantesDAO.Excluir(Estudante,DM.FDConnection1)
end;

procedure Tf_Main.btn_EditarEClick(Sender: TObject);
begin
  pnl_AdicionarE.Show;
  lbl_pnlAdicionarE.caption := 'Editar';
  lbl_pnlAdicionarE.caption := 'Adicionar';
end;

procedure Tf_Main.ed_SearchChange(Sender: TObject);
var SearchIS: String;

begin
  DM.FDQuery2.SQL.Text := 'SELECT * FROM vw_geral';
  SearchIS := ed_Search.Text;
  DM.FDQuery2.Close;
  TMainDAO.PesquisarGeral(DM.FDConnection1, DM.FDQuery2,SearchIS);
  DM.FDQuery2.Open;
  AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;

procedure Tf_Main.FormCreate(Sender: TObject);
begin
   AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;



procedure Tf_Main.img_CrudPClick(Sender: TObject);
begin
  DM.FDQuery2.SQL.Text := 'SELECT * FROM vw_geral';
  pnl_tabelaGeral.Show;
  PanelOpen := 'Geral';
  btn_editar.Hide;
  btn_deletar.Hide;
  btn_Adicionar.Hide;
  StringGridG.Height:= 415;
  ed_Search.Show;
  DM.FDQuery2.Close;
  Dm.FDQuery2.Open;
  AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;

procedure Tf_Main.pnl_btn_DiscClick(Sender: TObject);
begin
  DM.FDQuery2.SQL.Text := 'SELECT disc_codigo as "ID Disciplina", '+
    'disc_nome as "Nome Disciplina", '+
    'disc_prof_codigo as "ID Professor" FROM disciplinas';
  PanelOpen := 'Disciplinas';
  ed_Search.Hide;
  btn_editar.Show;
  btn_deletar.Show;
  btn_Adicionar.Show;
  StringGridG.Height := 431;
  pnl_btn_Disc.Color := RGB(173, 216, 230);
  pnl_TabelaGeral.Show;
  DM.FDQuery2.Close;
  DM.FDQuery2.Open;
  AtualizarStringGrid(DM.FDQuery2,StringGridG);

end;

procedure Tf_Main.pnl_btn_DiscMouseEnter(Sender: TObject);
begin
  pnl_btn_Disc.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_DiscMouseLeave(Sender: TObject);
begin
  if (PanelOpen <> 'Disciplinas') then begin
    pnl_btn_Disc.Color := RGB(240, 248, 255);
  end;
end;

procedure Tf_Main.pnl_btn_EstuClick(Sender: TObject);
begin
  DM.FDQuery2.SQL.Text := 'SELECT estu_codigo as "ID Estudante", '+
    'estu_nome as "Nome Estudante", '+
    'estu_cpf as "CPF Estudante" FROM estudantes';
  PanelOpen := 'Estudantes';
  ed_Search.Hide;
  btn_editar.Show;
  btn_deletar.Show;
  btn_Adicionar.Show;
  StringGridG.Height := 431;
  pnl_btn_Estu.Color := RGB(173, 216, 230);
  pnl_TabelaGeral.Show;
  DM.FDQuery2.Close;
  DM.FDQuery2.Open;
  AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;

procedure Tf_Main.pnl_btn_EstuMouseEnter(Sender: TObject);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_EstuMouseLeave(Sender: TObject);
begin
  if (PanelOpen <> 'Estudantes') then begin
    pnl_btn_Estu.Color := RGB(240, 248, 255);
  end;
end;

procedure Tf_Main.pnl_btn_LogoutClick(Sender: TObject);
begin
  f_Main.Hide;
  f_Login.Show;
end;

procedure Tf_Main.pnl_btn_LogoutMouseEnter(Sender: TObject);
begin
  pnl_btn_Logout.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_LogoutMouseLeave(Sender: TObject);
begin
  pnl_btn_Logout.Color := RGB(240, 248, 255);
end;

procedure Tf_Main.pnl_btn_MatriClick(Sender: TObject);
begin
  DM.FDQuery2.SQL.Text := 'SELECT matri_codigo as "ID Matrícula", '+
    'matri_turma_codigo as "ID Turma", '+
    'matri_estu_codigo as "ID Estudante" FROM matriculas';

    PanelOpen := 'Matriculas';
    ed_Search.Hide;
    btn_editar.Show;
    btn_deletar.Show;
    btn_Adicionar.Show;
    StringGridG.Height := 431;
    pnl_btn_Matri.Color := RGB(173, 216, 230);
    pnl_TabelaGeral.Show;
    DM.FDQuery2.Close;
    DM.FDQuery2.Open;
    AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;

procedure Tf_Main.pnl_btn_MatriMouseEnter(Sender: TObject);
begin
  pnl_btn_Matri.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_MatriMouseLeave(Sender: TObject);
begin
  if (PanelOpen <> 'Matriculas') then begin
    pnl_btn_Matri.Color := RGB(240, 248, 255);
  end;
end;

procedure Tf_Main.pnl_btn_ProfClick(Sender: TObject);
begin
  DM.FDQuery2.SQL.Text := 'SELECT prof_codigo as "ID Professor", '+
    'prof_nome as "Nome Professor", '+
    'prof_cpf as "CPF Professor" FROM professores';

    PanelOpen := 'Professores';
    ed_Search.Hide;
    btn_editar.Show;
    btn_deletar.Show;
    btn_Adicionar.Show;
    StringGridG.Height := 431;
    pnl_btn_Prof.Color := RGB(173, 216, 230);
    pnl_TabelaGeral.Show;
    DM.FDQuery2.Close;
    DM.FDQuery2.Open;
    AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;

procedure Tf_Main.pnl_btn_ProfMouseEnter(Sender: TObject);
begin
  pnl_btn_Prof.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_ProfMouseLeave(Sender: TObject);
begin
  if (PanelOpen <> 'Professores') then begin
    pnl_btn_Prof.Color := RGB(240, 248, 255);
  end;
end;

procedure Tf_Main.pnl_btn_TurmasClick(Sender: TObject);
begin
  DM.FDQuery2.SQL.Text := 'SELECT turmas_codigo as "ID Turma", '+
    'turmas_nome as "Nome Turma", '+
    'turmas_disc_codigo as "ID Disciplina",' +
    'turmas_prof_codigo as "ID Professor" FROM turmas';
    PanelOpen := 'Turmas';
    ed_Search.Hide;
    btn_editar.Show;
    btn_deletar.Show;
    btn_Adicionar.Show;
    StringGridG.Height := 431;
    pnl_btn_Turmas.Color := RGB(173, 216, 230);
    pnl_TabelaGeral.Show;
    DM.FDQuery2.Close;
    DM.FDQuery2.Open;
    AtualizarStringGrid(DM.FDQuery2,StringGridG);
end;

procedure Tf_Main.pnl_btn_TurmasMouseEnter(Sender: TObject);
begin
  pnl_btn_Turmas.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_TurmasMouseLeave(Sender: TObject);
begin
  if (PanelOpen <> 'Turmas') then begin
    pnl_btn_Turmas.Color := RGB(240, 248, 255);
  end;
end;

procedure Tf_Main.SP_btn_Sair2Click(Sender: TObject);
begin
  pnl_AdicionarP.Hide;
  pnl_btn_Prof.Color := RGB(240, 248, 255);
end;

procedure Tf_Main.SP_Btn_Sair3Click(Sender: TObject);
begin
  pnl_AdicionarD.Hide;
  pnl_btn_Disc.Color := RGB(240, 248, 255);
end;

procedure Tf_Main.SP_Btn_Sair4Click(Sender: TObject);
begin
  pnl_AdicionarM.Hide;
  pnl_btn_Matri.Color := RGB(240, 248, 255);
end;

procedure Tf_Main.SP_Btn_Sair5Click(Sender: TObject);
begin
  pnl_AdicionarT.Hide;
  ed_NomeT.Clear;
  ed_IDProfT.Clear;
  ed_IDDiscT.Clear;
  pnl_btn_Turmas.Color := RGB(240, 248, 255);
end;

procedure Tf_Main.SP_btn_SairClick(Sender: TObject);
begin
  pnl_AdicionarE.Hide;
  ed_NomeE.Clear;
  ed_CpfE.Clear;
  ed_TurmaE.Clear;
  pnl_btn_Estu.Color := RGB(240, 248, 255);
end;

end.
