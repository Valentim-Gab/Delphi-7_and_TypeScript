unit uDelphiAndTS2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  FileName, FileName2, MainPath: string;

implementation

uses StrUtils, uDelphiAndTS;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  CommandLine: string;
  Pos: Integer;
begin
  MainPath := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
  begin
    FileName := ExtractFileName(OpenDialog1.FileName);

    Pos := PosEx('.', FileName, 0);
    FileName2 := Copy(FileName, 0, Pos-1) + '.js';

    if not FileExists(MainPath + FileName2) then
      ShellExecute(Handle, 'open', PChar('tsc'), PChar(FileName + ' --outDir ' + MainPath), nil, SW_HIDE);

    while True do
    begin
      if FileExists(MainPath + FileName2) then
      begin
        FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
        StartupInfo.cb := SizeOf(TStartupInfo);
        FillChar(ProcessInfo, SizeOf(TProcessInformation), 0);
        StartupInfo.wShowWindow := SW_SHOWNORMAL;
        StartupInfo.dwFlags := STARTF_USESHOWWINDOW;

        CommandLine := 'node ' + MainPath + FileName2;

        if not CreateProcess(nil, PChar(CommandLine), nil, nil, False,
          CREATE_NEW_CONSOLE, nil, nil, StartupInfo, ProcessInfo) then
        begin
          ShowMessage('Erro ao criar o processo.');
        end
        else
        begin
          WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
          CloseHandle(ProcessInfo.hProcess);
          CloseHandle(ProcessInfo.hThread);
        end;
        Break;
      end;
    end;
    DeleteFile(MainPath + FileName2);
  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Form1.Show;
end;

end.
