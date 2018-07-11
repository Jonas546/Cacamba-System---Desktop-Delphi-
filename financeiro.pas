unit financeiro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DbCtrls, DBGrids;

type

  { Tt_financeiro }

  Tt_financeiro = class(TForm)
    DBGrid1: TDBGrid;
    db_cb_funcionario: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    db_txt_cod_func: TDBEdit;
    db_txt_valor: TDBEdit;
    db_txt_data: TDBEdit;
    db_txt_pedido: TDBEdit;
    db_txt_cod: TDBEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure cb_funcionarioChange(Sender: TObject);
    procedure cb_funcionarioSelect(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure db_cb_funcionarioChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_financeiro: Tt_financeiro;

implementation

{$R *.lfm}

{ Tt_financeiro }
uses DM;

procedure Tt_financeiro.FormShow(Sender: TObject);
begin
     DMC.query_financeiro.Active:=true;
     DMC.query_ativos.Active:=true;
end;

procedure Tt_financeiro.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
     DMC.query_financeiro.Active:=false;
     DMC.query_ativos.Active:=false;
end;

procedure Tt_financeiro.cb_funcionarioChange(Sender: TObject);
begin

end;

procedure Tt_financeiro.cb_funcionarioSelect(Sender: TObject);
begin

end;

procedure Tt_financeiro.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
       if Button = nbPost then
        begin
             if db_cb_funcionario.Text = '' then
                begin
                     showmessage('Selecione um Funcionario.');
                     DBNavigator1.BtnClick(nbCancel);
                     Abort;
                end;
        end;
end;

procedure Tt_financeiro.db_cb_funcionarioChange(Sender: TObject);
begin
  db_txt_cod_func.Text:=inttostr(Integer(db_cb_funcionario.KeyValue));
end;

procedure Tt_financeiro.FormCreate(Sender: TObject);
begin

end;

end.

