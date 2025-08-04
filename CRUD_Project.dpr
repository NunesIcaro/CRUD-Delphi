program CRUD_Project;

uses
  Vcl.Forms,
  CRUD in 'CRUD.pas' {Form1},
  uDM in 'uDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
