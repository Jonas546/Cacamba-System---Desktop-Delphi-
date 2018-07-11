unit relatorio_financeiro_semanal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, RLReport;

type

  { TForm1 }

  TForm1 = class(TForm)
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
    RLReport1: TRLReport;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
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
  t_Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
uses DM;

procedure TForm1.RLSystemInfo4BeforePrint(Sender: TObject;
  var OutputText: string; var PrintIt: boolean);
begin

end;

procedure TForm1.RLReport1BeforePrint(Sender: TObject; var PrintIt: boolean);
begin
  DMC.query_relatorio_gastos_semanal.Active:=true;
  DMC.gasto_semanal.Active:=true;
end;

procedure TForm1.RLReport1AfterPrint(Sender: TObject);
begin
  DMC.query_relatorio_gastos_semanal.Active:=false;
  DMC.gasto_semanal.Active:=false;
end;

end.

