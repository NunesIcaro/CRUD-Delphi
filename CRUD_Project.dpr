program CRUD_Project;

uses
  Vcl.Forms,
  CRUD in 'CRUD.pas' {Login},
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
  uProfessoresDAO in 'uProfessoresDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
