unit CRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uEstudantes, uInformacoes,uEstudantesDAO, uDM,uProfessores,uProfessoresDAO,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    edNome_E: TEdit;
    edCPF_E: TEdit;
    lblNome_E: TLabel;
    lblCPF_E: TLabel;
    lbl_ID_E: TLabel;
    edID_E: TEdit;
    lblTurma_E: TLabel;
    edTurma_E: TEdit;
    btn_Salvar1: TButton;
    lblNome_P: TLabel;
    edNome_P: TEdit;
    lblCPF_P: TLabel;
    edCPF_P: TEdit;
    lbl_ID_P: TLabel;
    edID_P: TEdit;
    btn_Salvar2: TButton;
    procedure btn_Salvar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_Salvar2Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure TForm1.btn_Salvar1Click(Sender: TObject);
var Estudante: TEstudantes;
begin

   Estudante := TEstudantes.Create;
   Try
     Estudante.IDEstudantes := StrToInt(edID_E.Text);
     Estudante.Turma := edTurma_E.Text;
     Estudante.pNome := edNome_E.Text;
     Estudante.pCPF := edCPF_E.Text;

     TEstudantesDao.Inserir(Estudante,DM.FDConnection1);
   Finally
      Estudante.Free;
   end;
end;

procedure TForm1.btn_Salvar2Click(Sender: TObject);
var Professor: TProfessores;
begin
   Professor := TProfessores.Create;
   Try
     Professor.IDProfessores := StrToInt(edID_P.Text);
     Professor.pNome := edNome_P.Text;
     Professor.pCPF := edCPF_P.Text;

     TProfessoresDAO.Inserir(Professor,DM.FDConnection1);
   Finally
      Professor.Free;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//  DM.FDConnection1.Connected := True;
end;

end.
