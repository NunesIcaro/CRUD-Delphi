unit uCadastroForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, uCadastro, uCadastroDAO,uDM;

type
  Tf_Cadastro = class(TForm)
    img_FundoCad: TImage;
    pnl_Cad: TPanel;
    pnl_FundoCad: TPanel;
    ed_NomeCad: TEdit;
    img_CadText: TImage;
    lbl_NomeCad: TLabel;
    ed_SenhaCad: TEdit;
    btn_Cadastrar: TButton;
    lbl_SenhaCad: TLabel;
    procedure FormResize(Sender: TObject);
    procedure btn_CadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Cadastro: Tf_Cadastro;

implementation

{$R *.dfm}
uses uLoginForm;

procedure Tf_Cadastro.btn_CadastrarClick(Sender: TObject);
var Cadastro: TCadastro;
begin
  Cadastro := TCadastro.Create;
  Try
    Cadastro.pNomeLog := ed_NomeCad.Text;
    Cadastro.pSenhaLog := ed_SenhaCad.Text;

    TCadastroDAO.Inserir(Cadastro,DM.FDConnection1);
  Finally
    Cadastro.Free;
  End;

  f_Cadastro.Hide;
  f_login.ShowModal;

end;

procedure Tf_Cadastro.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  ed_NomeCad.Clear;
  ed_SenhaCad.Clear;
end;

procedure Tf_Cadastro.FormResize(Sender: TObject);
begin
  if (WindowState = wsMaximized) then begin
    pnl_Cad.Margins.Top := 100;
    pnl_Cad.Margins.Bottom := 100;
    pnl_Cad.Margins.Left := 675;
    pnl_Cad.Margins.Right := 675;
    img_CadText.Height := 195;
    btn_Cadastrar.Margins.Bottom := 250;
    lbl_NomeCad.Margins.Top:= 60;
    img_CadText.Margins.Top := 50;



  end else begin
    pnl_Cad.Margins.Top := 50;
    pnl_Cad.Margins.Bottom := 50;
    pnl_Cad.Margins.Left := 375;
    pnl_Cad.Margins.Right := 375;
    img_CadText.Height := 145;
    btn_Cadastrar.Margins.Bottom := 100;
    lbl_NomeCad.Margins.Top := 15;
    img_CadText.Margins.Top := 25;
  end;
end;

procedure Tf_Cadastro.FormShow(Sender: TObject);
begin
  ed_NomeCad.Clear;
  ed_SenhaCad.Clear;
end;

end.
