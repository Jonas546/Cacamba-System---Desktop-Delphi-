unit gerenciar_cacamba;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, StdCtrls;

type

  { Tt_cacamba }

  Tt_cacamba = class(TForm)
    db_txt_status: TDBEdit;
    db_txt_cacamba: TDBEdit;
    db_txt_id: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    txt_cacamba: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_cacambaChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_cacamba: Tt_cacamba;

implementation

{$R *.lfm}

{ Tt_cacamba }
uses DM;

procedure Tt_cacamba.FormCreate(Sender: TObject);
begin
     //DMC.query_cacamba.Active:=true;
end;

procedure Tt_cacamba.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
     DMC.query_cacamba.Active:=false;
end;

procedure Tt_cacamba.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType
  );
begin
  if Button = nbPost then
     begin
          if db_txt_cacamba.Text = '0' then
             begin
                  showmessage('Campo Caçamba em Branco.');
                  //DBNavigator1.BtnClick(nbCancel);
                  Abort;
             end;
     end;
end;

procedure Tt_cacamba.FormShow(Sender: TObject);
begin
  DMC.query_cacamba.Active:=true;
end;

procedure Tt_cacamba.txt_cacambaChange(Sender: TObject);
begin
  DMC.query_cacamba.Locate('n_cacamba', txt_cacamba.Text, []);
end;

end.

