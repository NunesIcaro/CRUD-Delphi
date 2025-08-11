program CRUD_Project;

uses
  Vcl.Forms,
  uLoginForm in 'uLoginForm.pas' {f_Login},
  uDM in 'uDM.pas' {DM: TDataModule},
  uEstudantes in 'uEstudantes.pas',
  uProfessores in 'uProfessores.pas',
  uDisciplinas in 'uDisciplinas.pas',
  uTurmas in 'uTurmas.pas',
  uMatriculas in 'uMatriculas.pas',
  uLogin in 'uLogin.pas',
  uInformacoes in 'uInformacoes.pas',
  uCadastro in 'uCadastro.pas',
  uEstudantesDAO in 'uEstudantesDAO.pas',
  uProfessoresDAO in 'uProfessoresDAO.pas',
  uLoginDAO in 'uLoginDAO.pas',
  uCadastroDAO in 'uCadastroDAO.pas',
  uCadastroForm in 'uCadastroForm.pas' {f_Cadastro},
  uTurmasDAO in 'uTurmasDAO.pas',
  uDisciplinasDAO in 'uDisciplinasDAO.pas',
  uMatriculasDAO in 'uMatriculasDAO.pas',
  uMainForm in 'uMainForm.pas' {f_Main},
  uMainDAO in 'uMainDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_Login, f_Login);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tf_Cadastro, f_Cadastro);
  Application.CreateForm(Tf_Main, f_Main);
  Application.Run;
end.
