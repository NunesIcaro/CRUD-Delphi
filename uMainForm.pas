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
    DBGrid_Geral: TDBGrid;
    CBX_Turmas: TCheckBox;
    CBX_Matriculas: TCheckBox;
    CBX_Estudantes: TCheckBox;
    CBX_Professores: TCheckBox;
    CBX_Disciplinas: TCheckBox;
    pnl_Adicionar: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_GeralDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tf_Main.DBGrid_GeralDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if Column.Width > 200 then  // 200 pixels de largura máxima
    Column.Width := 200;
end;

procedure Tf_Main.FormCreate(Sender: TObject);
var SearchI: Integer;
    SearchS: String;
begin
  ed_Search.Text := '0';
  SearchI := StrToInt(ed_Search.Text);
  ed_Search.Text := '';
  SearchS := ed_Search.Text;


  TMainDAO.PesquisarGeral(DM.FDConnection1, DM.FDQuery1,SearchS,SearchI);


end;

end.
