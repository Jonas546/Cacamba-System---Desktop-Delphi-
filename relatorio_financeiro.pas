unit relatorio_financeiro;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, RLReport;

type

  { Tt_rel_financeiro }

  Tt_rel_financeiro = class(TForm)
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
    RLDBText7: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLReport1: TRLReport;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_rel_financeiro: Tt_rel_financeiro;

implementation

{$R *.lfm}

{ Tt_rel_financeiro }
uses DM;

procedure Tt_rel_financeiro.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: boolean);
begin
     DMC.qr_rel_financeiro_total.Active:=true;
     DMC.query_rel_financeiro.Active:=true;
end;

procedure Tt_rel_financeiro.RLReport1AfterPrint(Sender: TObject);
begin
     DMC.qr_rel_financeiro_total.Active:=false;
     DMC.query_rel_financeiro.Active:=false;
end;

end.

