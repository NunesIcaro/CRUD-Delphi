unit CRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uEstudantes, uInformacoes,uEstudantesDAO, uDM,uProfessores,uProfessoresDAO,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    img_login: TImage;
    pnl_login: TPanel;
    ed_Password: TEdit;
    ed_User: TEdit;
    img_LoginText: TImage;
    lbl_User: TLabel;
    lbl_Password: TLabel;
//    procedure btn_Salvar1Click(Sender: TObject);
   procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);

//    procedure btn_Salvar2Click(Sender: TObject);





  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


//procedure TForm1.btn_Salvar1Click(Sender: TObject);
//var Estudante: TEstudantes;
//begin
//
//   Estudante := TEstudantes.Create;
//   Try
//     Estudante.IDEstudantes := StrToInt(edID_E.Text);
//     Estudante.Turma := edTurma_E.Text;
//     Estudante.pNome := edNome_E.Text;
//     Estudante.pCPF := edCPF_E.Text;
//
//     TEstudantesDao.Inserir(Estudante,DM.FDConnection1);
//   Finally
//      Estudante.Free;
//   end;
//end;

//procedure TForm1.btn_Salvar2Click(Sender: TObject);
//var Professor: TProfessores;
//begin
//   Professor := TProfessores.Create;
//   Try
//     Professor.IDProfessores := StrToInt(edID_P.Text);
//     Professor.pNome := edNome_P.Text;
//     Professor.pCPF := edCPF_P.Text;
//
//     TProfessoresDAO.Inserir(Professor,DM.FDConnection1);
//   Finally
//      Professor.Free;
//   end;
//end;



procedure TForm1.FormCreate(Sender: TObject);
begin
//  WindowState := wsMaximized;
end;






procedure TForm1.FormResize(Sender: TObject);
begin
  if (WindowState = wsMaximized) then begin
    ed_Password.Margins.Bottom := 350;
    ed_User.Margins.Bottom := 100;


  end else begin
    ed_Password.Margins.Bottom := 225;
    ed_User.Margins.Bottom := 50;
  end;
end;



end.
