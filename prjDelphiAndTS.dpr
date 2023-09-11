program prjDelphiAndTS;

uses
  Forms,
  uDelphiAndTS2 in 'uDelphiAndTS2.pas' {Form2},
  uDelphiAndTS in 'uDelphiAndTS.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Delphi+TS-JS';
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
