unit relatorio_mensal_receitas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, RLReport;

type

  { Trelatorio_mensal_receita }

  Trelatorio_mensal_receita = class(TForm)
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel10: TRLLabel;
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
    procedure RLDBText8BeforePrint(Sender: TObject; var OutputText: string;
      var PrintIt: boolean);
    procedure RLReport1AfterPrint(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: boolean);
    procedure RLSystemInfo4BeforePrint(Sender: TObject; var OutputText: string;
      var PrintIt: boolean);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_relatorio_mensal_receita: Trelatorio_mensal_receita;

implementation

{$R *.lfm}

{ Trelatorio_mensal_receita }
uses DM;

procedure Trelatorio_mensal_receita.RLSystemInfo4BeforePrint(Sender: TObject;
  var OutputText: string; var PrintIt: boolean);
begin

end;

procedure Trelatorio_mensal_receita.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: boolean);
begin
  DMC.qr_rel_mensal_receita.Active:=true;
  DMC.total_mensal.Active:=true;
end;

procedure Trelatorio_mensal_receita.RLReport1AfterPrint(Sender: TObject);
begin
  DMC.qr_rel_mensal_receita.Active:=false;
  DMC.total_mensal.Active:=false;
end;

procedure Trelatorio_mensal_receita.RLDBText8BeforePrint(Sender: TObject;
  var OutputText: string; var PrintIt: boolean);
begin
  //text := formatcurr('##,##0.00', strtocurr(text));
  RLDBText8.DisplayMask:='###,##0.00';
end;

end.

