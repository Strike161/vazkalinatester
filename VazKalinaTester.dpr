program VazKalinaTester;

uses
  Forms,
  Diplom in 'Diplom.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
