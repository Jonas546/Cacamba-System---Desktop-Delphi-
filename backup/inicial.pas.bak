unit inicial;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, StdCtrls;

type

  { Tt_inicial }

  Tt_inicial = class(TForm)
    bar_progress: TProgressBar;
    lb_percent: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_inicial: Tt_inicial;

implementation

{$R *.lfm}

{ Tt_inicial }
uses logon;

procedure Tt_inicial.Timer1Timer(Sender: TObject);
begin
  bar_progress.Position := bar_progress.Position +1;
  lb_percent.Caption := inttostr(bar_progress.Position)+'%';

  if bar_progress.Position = 100 then
     begin
          t_inicial.Destroy;
          t_logon.Show;
     end;

end;

end.

