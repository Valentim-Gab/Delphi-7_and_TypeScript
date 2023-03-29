program prjDelphiAndTS;

uses
  Forms,
  udmDelphiAndTS2 in 'udmDelphiAndTS2.pas' {Form2},
  udmDelphiAndTS in 'udmDelphiAndTS.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Delphi+TS-JS';
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
