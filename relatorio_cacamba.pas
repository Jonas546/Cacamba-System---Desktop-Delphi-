unit relatorio_cacamba;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, RLReport;

type

  { Tt_rel_cacamba }

  Tt_rel_cacamba = class(TForm)
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLReport1: TRLReport;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    procedure RLLabel6AfterPrint(Sender: TObject);
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_rel_cacamba: Tt_rel_cacamba;

implementation

{$R *.lfm}

{ Tt_rel_cacamba }
uses DM;

procedure Tt_rel_cacamba.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: boolean);
begin
     DMC.cacamba_semanal.Active:=true;
     DMC.total_c_semanal.Active:=true;
end;

procedure Tt_rel_cacamba.RLReport1AfterPrint(Sender: TObject);
begin
     DMC.cacamba_semanal.Active:=false;
     DMC.total_c_semanal.Active:=false;
end;

procedure Tt_rel_cacamba.RLLabel6AfterPrint(Sender: TObject);
begin

end;

end.

