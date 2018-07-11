unit preco;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, StdCtrls;

type

  { Tt_preco }

  Tt_preco = class(TForm)
    DBNavigator1: TDBNavigator;
    db_txt_id_preco: TDBEdit;
    db_txt_preco: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_preco: Tt_preco;

implementation

{$R *.lfm}

{ Tt_preco }
uses DM;

procedure Tt_preco.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DMC.query_preco.Active:=false;
end;

procedure Tt_preco.FormCreate(Sender: TObject);
begin

end;

procedure Tt_preco.FormShow(Sender: TObject);
begin
     DMC.query_preco.Active:=true;
end;

end.

