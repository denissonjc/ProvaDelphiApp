unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Datasnap.DBClient;

type
  TfTarefa3 = class(TForm)
    Panel1: TPanel;
    EdtTotalSoma: TLabeledEdit;
    btnTotalDivisoes: TButton;
    btnTotal: TButton;
    EdtTotalDivisao: TLabeledEdit;
    DBGrid1: TDBGrid;
    btvoltar: TButton;

    procedure btnTotalClick(Sender: TObject);
    procedure btnTotalDivisoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btvoltarClick(Sender: TObject);

  public
    FDatasource: TDatasource;
    FDataSet: TCLientDataset;
    procedure LoadGrid;

    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

uses uOperacoesEmLote_Model, uOperacoesEmLote_DataSet_Controller,
  uOperacoesEmLote_Calculos_Controller;

procedure TfTarefa3.btnTotalClick(Sender: TObject);
var
  Total: Double;
begin
  Total := TController_OperacoesEmLote_Calculos.New.SetDataSet
    (DBGrid1.DataSource.DataSet).SumValues;

  EdtTotalSoma.Text := FormatFloat('0.00', Total);
end;

procedure TfTarefa3.btnTotalDivisoesClick(Sender: TObject);
var
  Total: Double;
begin
  Total := TController_OperacoesEmLote_Calculos.New.SetDataSet
    (DBGrid1.DataSource.DataSet).DivideValues;

  EdtTotalDivisao.Text := FormatFloat('0.00', Total);
end;

procedure TfTarefa3.btvoltarClick(Sender: TObject);
begin
  close;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNIl(FDatasource);
  FreeAndNIl(FDataSet);
  FreeAndNIl(fTarefa3);
end;

procedure TfTarefa3.LoadGrid;
begin
  TController_OperacoesEmLote.New.PopulateDataSet;

  TFloatField(FDataSet.FieldByName('Valor')).DisplayFormat :=
    'R$###,###,##0.00';

  DBGrid1.DataSource := FDatasource;
end;

end.
