unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uProfessores,uProfessoresDAO,uEstudantes, uInformacoes,
  uEstudantesDAO, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, CommCtrl,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, uDM, Vcl.Buttons;

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
    pnl_Tabela: TPanel;
    ed_Search: TEdit;
    StringGrid1: TStringGrid;
    pnl_Adicionar: TPanel;
    lbl_NomeE: TLabel;
    lbl_CpfE: TLabel;
    lbl_TurmaE: TLabel;
    Panel1: TPanel;
    lbl_PnlAdicionar: TLabel;
    SpeedButton1: TSpeedButton;
    ed_NomeE: TEdit;
    btn_ConcluirE: TButton;
    ed_CpfE: TEdit;
    ed_TurmaE: TEdit;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure pnl_btn_EstuClick(Sender: TObject);
    procedure btn_ConcluirEClick(Sender: TObject);
    procedure ed_SearchChange(Sender: TObject);
    procedure pnl_btn_EstuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btn_ProfClick(Sender: TObject);
    procedure pnl_btn_ProfMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btn_DiscClick(Sender: TObject);
    procedure pnl_btn_DiscMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btn_MatriClick(Sender: TObject);
    procedure pnl_btn_MatriMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnl_btn_TurmasClick(Sender: TObject);
    procedure pnl_btn_TurmasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Main: Tf_Main;

implementation

{$R *.dfm}
uses uMainDAO;

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
      AtualizarStringGrid(DM.FDQuery2,StringGrid1);
      pnl_Adicionar.Hide
   end;
   pnl_btn_Estu.Color := RGB(240, 248, 255);
end;




procedure Tf_Main.ed_SearchChange(Sender: TObject);
var SearchIS: String;

begin
  SearchIS := ed_Search.Text;
  DM.FDQuery2.Close;
  TMainDAO.PesquisarGeral(DM.FDConnection1, DM.FDQuery2,SearchIS);
  DM.FDQuery2.Open;
  AtualizarStringGrid(DM.FDQuery2,StringGrid1);
end;

procedure Tf_Main.FormCreate(Sender: TObject);
begin

   AtualizarStringGrid(DM.FDQuery2,StringGrid1);


end;

procedure Tf_Main.pnl_btn_DiscClick(Sender: TObject);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_DiscMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_EstuClick(Sender: TObject);
begin
  pnl_Adicionar.Show;
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_EstuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_MatriClick(Sender: TObject);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_MatriMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_ProfClick(Sender: TObject);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_ProfMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   pnl_btn_Prof.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_TurmasClick(Sender: TObject);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.pnl_btn_TurmasMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnl_btn_Estu.Color := RGB(173, 216, 230);
end;

procedure Tf_Main.SpeedButton1Click(Sender: TObject);
begin
  pnl_Adicionar.Hide;
  pnl_btn_Estu.Color := RGB(240, 248, 255);
end;

end.
