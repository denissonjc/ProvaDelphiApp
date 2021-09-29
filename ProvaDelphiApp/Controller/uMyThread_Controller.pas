unit uMyThread_Controller;

interface

uses
  System.Threading, System.Classes, System.SysUtils, Vcl.Forms, Vcl.ComCtrls,
  uFTarefa2;

type
  TThreadObject = class(TThread)
  private
    FThreadIndex: integer;

    procedure SetThreadIndex(const Value: integer);
    Function GetThreadIndex: integer;

  public
    property ThreadIndex: integer read GetThreadIndex write SetThreadIndex;
    procedure Execute; override;
  end;

implementation

{ TThreadObject }

uses Vcl.StdCtrls;

procedure TThreadObject.Execute;
var
  i, Tempo: Int64;
begin
  inherited;

  fTarefa2.FProgressBar[FThreadIndex].MaxValue := 100;
  Tempo := StrToInt(fTarefa2.FTimeEdt[FThreadIndex].Text);

  for i := 0 to 100 do
  begin
    sleep(Tempo);

    fTarefa2.FProgressBar[FThreadIndex].Progress := i;
    Application.ProcessMessages;
  end;

end;

function TThreadObject.GetThreadIndex: integer;
begin
  Result := FThreadIndex;
end;

procedure TThreadObject.SetThreadIndex(const Value: integer);
begin
  FThreadIndex := Value;
end;

end.
