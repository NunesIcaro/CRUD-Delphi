program CRUD_Project;

uses
  Vcl.Forms,
  CRUD in 'CRUD.pas' {Form1},
  uDM in 'uDM.pas' {DataModule1: TDataModule},
  uEstudantes in 'uEstudantes.pas',
  uProfessores in 'uProfessores.pas',
  uDisciplinas in 'uDisciplinas.pas',
  uTurmas in 'uTurmas.pas',
  uMatriculas in 'uMatriculas.pas',
  uLogin in 'uLogin.pas',
  uCargos in 'uCargos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
