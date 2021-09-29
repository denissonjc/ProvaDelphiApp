unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.FileCtrl;

type
  TfMain = class(TForm)
    MainMenu1: TMainMenu;
    Tarefas: TMenuItem;
    tarefa1: TMenuItem;
    tarefa2: TMenuItem;
    tarefa3: TMenuItem;
    Sair: TMenuItem;
    procedure tarefa2Click(Sender: TObject);
    procedure tarefa1Click(Sender: TObject);
    procedure CreateForm(TForm: TFormClass; Form: TForm);
    procedure tarefa3Click(Sender: TObject);
    function fcFormExists(fmForm: TForm): boolean;
    procedure OpcoesClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TfMain.CreateForm(TForm: TFormClass; Form: TForm);
begin
  if not Assigned(Form) then
    Application.CreateForm(TForm, Form);
  Form.Show;
end;

function TfMain.fcFormExists(fmForm: TForm): boolean;
var
  inIdx: integer;
begin
  fcFormExists := False;
  for inIdx := 0 to MDIChildCount - 1 do
    if MDIChildren[inIdx] = fmForm then
    begin
      fcFormExists := True;
      Exit;
    end;
end;

procedure TfMain.OpcoesClick(Sender: TObject);
begin
 close;
end;

procedure TfMain.tarefa1Click(Sender: TObject);
begin
  if fcFormExists(fTarefa1 as TForm) then
    fTarefa1.Show
  else
    fTarefa1 := TfTarefa1.Create(Self);
end;

procedure TfMain.tarefa2Click(Sender: TObject);
begin;
  if fcFormExists(fTarefa2 as TForm) then
    fTarefa2.Show
  else
    fTarefa2 := TfTarefa2.Create(Self);
end;

procedure TfMain.tarefa3Click(Sender: TObject);
begin
  if fcFormExists(fTarefa3 as TForm) then
    fTarefa3.Show
  else
    fTarefa3 := TfTarefa3.Create(Self);
  fTarefa3.LoadGrid;
end;

end.
