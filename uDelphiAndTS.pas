unit uDelphiAndTS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ShellAPI;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FileName, FileName2, MainPath: string;

implementation

uses StrUtils;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pos: Integer;
begin
  MainPath := ExtractFilePath(Application.ExeName);
  FileName := 'index.ts';
  Pos := PosEx('.', FileName, 0);
  FileName2 := Copy(FileName, 0, Pos-1) + '.js';

  if not FileExists(MainPath + FileName2) then
    ShellExecute(Handle, 'open', PChar('tsc'), PChar(FileName), nil, SW_HIDE);
  while True do
  begin
    if FileExists(MainPath + FileName2) then
    begin
      ShellExecute(Handle, 'open', PChar('node.exe'), PChar(FileName2), nil, SW_SHOWNORMAL);
      Break;
    end;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DeleteFile(MainPath + FileName2);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  DeleteFile(MainPath + FileName2);
end;

end.
