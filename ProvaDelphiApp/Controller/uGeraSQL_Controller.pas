unit uGeraSQL_Controller;

interface

uses uGeraSQL_Interface, Vcl.StdCtrls;

Type
  TController_GeraSQL = class(TinterfacedObject, iController_GeraSQL)
    Fcolunas: TMemo;
    FTabela: TMemo;
    FCondicao: TMemo;

    class function New: iController_GeraSQL;
    function SetColunas(Colunas: TMemo): iController_GeraSQL;
    function SetTabela(Tabela: TMemo): iController_GeraSQL;
    function SetCondicao(Condicao: TMemo): iController_GeraSQL;
    function GeraSQL: String;
  end;

implementation

uses
  uspQuery, System.Classes, System.SysUtils;

{ TController_GeraSQL }

function TController_GeraSQL.GeraSQL: String;
var
  qryGeraSQL: tspQuery;
  Colunas: TStringList;
  Tabelas: TStringList;
  Condicoes: TStringList;
  i: Integer;
begin
  Colunas := TStringList.create;
  Tabelas := TStringList.create;
  Condicoes := TStringList.create;

  qryGeraSQL := tspQuery.create(nil);
  try
    for i := 0 to Fcolunas.Lines.Count - 1 do
      Colunas.Add(Fcolunas.Lines.Strings[i]);

    Tabelas.Add(FTabela.Lines.Text);
    Condicoes.Add(FCondicao.Lines.Text);

    qryGeraSQL.spColunas := Colunas;
    qryGeraSQL.spTabelas := Tabelas;
    qryGeraSQL.spCondicoes := Condicoes;
    qryGeraSQL.GeraSQL;

    Result := qryGeraSQL.SQL.Strings[0];

  finally
    FreeAndNil(Colunas);
    FreeAndNil(Tabelas);
    FreeAndNil(Condicoes);
    FreeAndNil(qryGeraSQL);
  end;

end;

class function TController_GeraSQL.New: iController_GeraSQL;
begin
  Result := Self.create;
end;

function TController_GeraSQL.SetColunas(Colunas: TMemo): iController_GeraSQL;
begin
  Result := Self;
  Fcolunas := Colunas;
end;

function TController_GeraSQL.SetCondicao(Condicao: TMemo): iController_GeraSQL;
begin
  Result := Self;
  FCondicao := Condicao;
end;

function TController_GeraSQL.SetTabela(Tabela: TMemo): iController_GeraSQL;
begin
  Result := Self;
  FTabela := Tabela;
end;

end.
