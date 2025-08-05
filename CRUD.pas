unit CRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uEstudantes, uInformacoes,uEstudantesDAO, uDM,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    edNome: TEdit;
    edCPF: TEdit;
    lbl_Nome: TLabel;
    lbl_CPF: TLabel;
    lbl_ID: TLabel;
    edID: TEdit;
    lbl_Turma: TLabel;
    edTurma: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var Estudante: TEstudantes;
begin

   Estudante := TEstudantes.Create;
   Try
     Estudante.IDEstudantes := StrToInt(edID.Text);
     Estudante.Turma := edTurma.Text;
     Estudante.pNome := edNome.Text;
     Estudante.pCPF := edCPF.Text;

     TEstudantesDao.Inserir(Estudante,DM.FDConnection1);
   Finally
      Estudante.Free;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//  DM.FDConnection1.Connected := True;
end;

end.
