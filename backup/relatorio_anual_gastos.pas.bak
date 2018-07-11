unit relatorio_anual_gastos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, RLReport;

type

  { Tt_relatorio_anual_gastos }

  Tt_relatorio_anual_gastos = class(TForm)
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
    RLLabel10: TRLLabel;
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
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_relatorio_anual_gastos: Tt_relatorio_anual_gastos;

implementation

{$R *.lfm}

{ Tt_relatorio_anual_gastos }
uses DM;

procedure Tt_relatorio_anual_gastos.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: boolean);
begin
  DMC.gasto_anual.Active:=true;
  DMC.qr_rel_anual_gastos.Active:=true;
end;

procedure Tt_relatorio_anual_gastos.RLReport1AfterPrint(Sender: TObject);
begin
  DMC.gasto_anual.Active:=false;
  DMC.qr_rel_anual_gastos.Active:=false;
end;

end.

