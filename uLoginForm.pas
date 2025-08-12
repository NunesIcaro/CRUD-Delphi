unit uLoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,uDM, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  uCadastroForm, uLoginDAO, uLogin, uCadastro, uCadastroDAO, uMainForm;

type
  Tf_Login = class(TForm)
    pnl_FundoLog: TPanel;
    img_login: TImage;
    pnl_login: TPanel;
    img_LoginText: TImage;
    lbl_User: TLabel;
    lbl_Password: TLabel;
    ed_Password: TEdit;
    ed_User: TEdit;
    btn_Entrar: TButton;
    lbl_btn_Cad: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lbl_btn_CadClick(Sender: TObject);
    procedure btn_EntrarClick(Sender: TObject);







  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Login: Tf_Login;


implementation

{$R *.dfm}




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



procedure Tf_Login.btn_EntrarClick(Sender: TObject);
var Login : Tlogin;
begin
  Login := Tlogin.Create;
  try
    Login.pNomeLog := ed_User.Text;
    Login.pSenhaLog := ed_Password.Text;


    if TLoginDAO.ValidarLogin(Login,DM.FDConnection1) then begin
      ShowMessage('Conectado com Sucesso');
    end else begin
      ShowMessage('Usuário ou Senha Incorretos');
    end;

  finally
    Login.Free;
  end;
  f_Login.Hide;
  f_Main.ShowModal;


end;

procedure Tf_Login.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;






procedure Tf_Login.FormResize(Sender: TObject);
begin
  if (WindowState = wsMaximized) then begin
    pnl_login.Width := 500;
    img_LoginText.Height := 170;
    btn_Entrar.Margins.Bottom := 306;
    lbl_User.Margins.Top:= 175;
    img_logintext.Margins.Top := 100;
    lbl_btn_Cad.Top := 115;
    lbl_btn_Cad.Left := 825;
    lbl_btn_Cad.Font.Size := 24;


  end else begin
    pnl_login.Width := 380;
    img_LoginText.Height := 121;
    btn_Entrar.Margins.Bottom := 140;
    lbl_User.Margins.Top := 50;
    img_logintext.Margins.Top := 50;
    lbl_btn_Cad.Top := 72;
    lbl_btn_Cad.Left := 440;
    lbl_btn_Cad.Font.Size := 12;
  end;
end;

procedure Tf_Login.lbl_btn_CadClick(Sender: TObject);
begin
  f_Login.Hide;
  f_Cadastro.ShowModal;
end;

end.
