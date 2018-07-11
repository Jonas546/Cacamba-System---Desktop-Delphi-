unit funcionarios;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, StdCtrls, DB;

type

  { Tt_funcionarios }

  Tt_funcionarios = class(TForm)
    cb_mes_ad: TComboBox;
    cb_dia_ad: TComboBox;
    cb_ano_ad: TComboBox;
    cb_mes_de: TComboBox;
    cb_dia_de: TComboBox;
    cb_ano_de: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    db_txt_saida: TDBEdit;
    db_txt_entrada: TDBEdit;
    db_txt_cargo: TDBEdit;
    db_txt_cep: TDBEdit;
    db_txt_end: TDBEdit;
    db_txt_tel: TDBEdit;
    db_txt_cpf: TDBEdit;
    db_txt_rg: TDBEdit;
    db_txt_nome: TDBEdit;
    db_txt_id: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    txt_nome_busca: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure cb_ano_adSelect(Sender: TObject);
    procedure cb_ano_deSelect(Sender: TObject);
    procedure cb_dia_adSelect(Sender: TObject);
    procedure cb_dia_deSelect(Sender: TObject);
    procedure cb_mes_adSelect(Sender: TObject);
    procedure cb_mes_deSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_nome_buscaChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_funcionarios: Tt_funcionarios;

implementation

{$R *.lfm}

{ Tt_funcionarios }
uses DM;

procedure Tt_funcionarios.FormShow(Sender: TObject);
begin
     DMC.query_funcionario.Active:=true;

     db_txt_cpf.Field.EditMask:= '999.999.999-99;1;_';
     db_txt_rg.Field.EditMask:= '99.999.999-9;1;_';
     db_txt_cep.Field.EditMask:= '99999-999;1;_';
     db_txt_tel.Field.EditMask:= '99-999999999;1;_';

     cb_mes_ad.Items.Clear;
     cb_mes_ad.Items.Add('01');
     cb_mes_ad.Items.Add('02');
     cb_mes_ad.Items.Add('03');
     cb_mes_ad.Items.Add('04');
     cb_mes_ad.Items.Add('05');
     cb_mes_ad.Items.Add('06');
     cb_mes_ad.Items.Add('07');
     cb_mes_ad.Items.Add('08');
     cb_mes_ad.Items.Add('09');
     cb_mes_ad.Items.Add('10');
     cb_mes_ad.Items.Add('11');
     cb_mes_ad.Items.Add('12');

     cb_mes_de.Items.Clear;
     cb_mes_de.Items.Add('01');
     cb_mes_de.Items.Add('02');
     cb_mes_de.Items.Add('03');
     cb_mes_de.Items.Add('04');
     cb_mes_de.Items.Add('05');
     cb_mes_de.Items.Add('06');
     cb_mes_de.Items.Add('07');
     cb_mes_de.Items.Add('08');
     cb_mes_de.Items.Add('09');
     cb_mes_de.Items.Add('10');
     cb_mes_de.Items.Add('11');
     cb_mes_de.Items.Add('12');

     cb_ano_ad.Items.Clear;
     cb_ano_ad.Items.Add('2017');
     cb_ano_ad.Items.Add('2018');
     cb_ano_ad.Items.Add('2019');
     cb_ano_ad.Items.Add('2020');
     cb_ano_ad.Items.Add('2021');
     cb_ano_ad.Items.Add('2022');
     cb_ano_ad.Items.Add('2023');
     cb_ano_ad.Items.Add('2024');
     cb_ano_ad.Items.Add('2025');
     cb_ano_ad.Items.Add('2026');
     cb_ano_ad.Items.Add('2027');
     cb_ano_ad.Items.Add('2028');
     cb_ano_ad.Items.Add('2029');
     cb_ano_ad.Items.Add('2030');
     cb_ano_ad.Items.Add('2031');
     cb_ano_ad.Items.Add('2032');
     cb_ano_ad.Items.Add('2033');
     cb_ano_ad.Items.Add('2034');
     cb_ano_ad.Items.Add('2035');
     cb_ano_ad.Items.Add('2036');
     cb_ano_ad.Items.Add('2037');
     cb_ano_ad.Items.Add('2038');
     cb_ano_ad.Items.Add('2039');
     cb_ano_ad.Items.Add('2040');
     cb_ano_ad.Items.Add('2041');
     cb_ano_ad.Items.Add('2042');
     cb_ano_ad.Items.Add('2043');
     cb_ano_ad.Items.Add('2044');
     cb_ano_ad.Items.Add('2045');
     cb_ano_ad.Items.Add('2046');
     cb_ano_ad.Items.Add('2047');
     cb_ano_ad.Items.Add('2048');
     cb_ano_ad.Items.Add('2049');
     cb_ano_ad.Items.Add('2050');

     cb_ano_de.Items.Clear;
     cb_ano_de.Items.Add('2017');
     cb_ano_de.Items.Add('2018');
     cb_ano_de.Items.Add('2019');
     cb_ano_de.Items.Add('2020');
     cb_ano_de.Items.Add('2021');
     cb_ano_de.Items.Add('2022');
     cb_ano_de.Items.Add('2023');
     cb_ano_de.Items.Add('2024');
     cb_ano_de.Items.Add('2025');
     cb_ano_de.Items.Add('2026');
     cb_ano_de.Items.Add('2027');
     cb_ano_de.Items.Add('2028');
     cb_ano_de.Items.Add('2029');
     cb_ano_de.Items.Add('2030');
     cb_ano_de.Items.Add('2031');
     cb_ano_de.Items.Add('2032');
     cb_ano_de.Items.Add('2033');
     cb_ano_de.Items.Add('2034');
     cb_ano_de.Items.Add('2035');
     cb_ano_de.Items.Add('2036');
     cb_ano_de.Items.Add('2037');
     cb_ano_de.Items.Add('2038');
     cb_ano_de.Items.Add('2039');
     cb_ano_de.Items.Add('2040');
     cb_ano_de.Items.Add('2041');
     cb_ano_de.Items.Add('2042');
     cb_ano_de.Items.Add('2043');
     cb_ano_de.Items.Add('2044');
     cb_ano_de.Items.Add('2045');
     cb_ano_de.Items.Add('2046');
     cb_ano_de.Items.Add('2047');
     cb_ano_de.Items.Add('2048');
     cb_ano_de.Items.Add('2049');
     cb_ano_de.Items.Add('2050');
end;

procedure Tt_funcionarios.txt_nome_buscaChange(Sender: TObject);
begin
  DMC.query_funcionario.Locate('nome', txt_nome_busca.Text, [loPartialKey,loCaseInsensitive]);
end;

procedure Tt_funcionarios.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  DMC.query_funcionario.Active:=false;
end;

procedure Tt_funcionarios.cb_mes_adSelect(Sender: TObject);
begin
  if (cb_mes_ad.Text = '01') or (cb_mes_ad.Text = '03') or (cb_mes_ad.Text = '05') or (cb_mes_ad.Text = '07') or (cb_mes_ad.Text = '08') or (cb_mes_ad.Text = '10') or (cb_mes_ad.Text = '12') then
         begin
           cb_dia_ad.Items.Clear;
           cb_dia_ad.Items.Add('01');
           cb_dia_ad.Items.Add('02');
           cb_dia_ad.Items.Add('03');
           cb_dia_ad.Items.Add('04');
           cb_dia_ad.Items.Add('05');
           cb_dia_ad.Items.Add('06');
           cb_dia_ad.Items.Add('07');
           cb_dia_ad.Items.Add('08');
           cb_dia_ad.Items.Add('09');
           cb_dia_ad.Items.Add('10');
           cb_dia_ad.Items.Add('11');
           cb_dia_ad.Items.Add('12');
           cb_dia_ad.Items.Add('13');
           cb_dia_ad.Items.Add('14');
           cb_dia_ad.Items.Add('15');
           cb_dia_ad.Items.Add('16');
           cb_dia_ad.Items.Add('17');
           cb_dia_ad.Items.Add('18');
           cb_dia_ad.Items.Add('19');
           cb_dia_ad.Items.Add('20');
           cb_dia_ad.Items.Add('21');
           cb_dia_ad.Items.Add('22');
           cb_dia_ad.Items.Add('23');
           cb_dia_ad.Items.Add('24');
           cb_dia_ad.Items.Add('25');
           cb_dia_ad.Items.Add('26');
           cb_dia_ad.Items.Add('27');
           cb_dia_ad.Items.Add('28');
           cb_dia_ad.Items.Add('29');
           cb_dia_ad.Items.Add('30');
           cb_dia_ad.Items.Add('31');
         end;

         if (cb_mes_ad.Text = '04') or (cb_mes_ad.Text = '06') or (cb_mes_ad.Text = '09') or (cb_mes_ad.Text = '11')then
           begin
           cb_dia_ad.Items.Clear;
           cb_dia_ad.Items.Add('01');
           cb_dia_ad.Items.Add('02');
           cb_dia_ad.Items.Add('03');
           cb_dia_ad.Items.Add('04');
           cb_dia_ad.Items.Add('05');
           cb_dia_ad.Items.Add('06');
           cb_dia_ad.Items.Add('07');
           cb_dia_ad.Items.Add('08');
           cb_dia_ad.Items.Add('09');
           cb_dia_ad.Items.Add('10');
           cb_dia_ad.Items.Add('11');
           cb_dia_ad.Items.Add('12');
           cb_dia_ad.Items.Add('13');
           cb_dia_ad.Items.Add('14');
           cb_dia_ad.Items.Add('15');
           cb_dia_ad.Items.Add('16');
           cb_dia_ad.Items.Add('17');
           cb_dia_ad.Items.Add('18');
           cb_dia_ad.Items.Add('19');
           cb_dia_ad.Items.Add('20');
           cb_dia_ad.Items.Add('21');
           cb_dia_ad.Items.Add('22');
           cb_dia_ad.Items.Add('23');
           cb_dia_ad.Items.Add('24');
           cb_dia_ad.Items.Add('25');
           cb_dia_ad.Items.Add('26');
           cb_dia_ad.Items.Add('27');
           cb_dia_ad.Items.Add('28');
           cb_dia_ad.Items.Add('29');
           cb_dia_ad.Items.Add('30');
           end;

         if (cb_mes_ad.Text = '02') then
           begin
           cb_dia_ad.Items.Clear;
           cb_dia_ad.Items.Add('01');
           cb_dia_ad.Items.Add('02');
           cb_dia_ad.Items.Add('03');
           cb_dia_ad.Items.Add('04');
           cb_dia_ad.Items.Add('05');
           cb_dia_ad.Items.Add('06');
           cb_dia_ad.Items.Add('07');
           cb_dia_ad.Items.Add('08');
           cb_dia_ad.Items.Add('09');
           cb_dia_ad.Items.Add('10');
           cb_dia_ad.Items.Add('11');
           cb_dia_ad.Items.Add('12');
           cb_dia_ad.Items.Add('13');
           cb_dia_ad.Items.Add('14');
           cb_dia_ad.Items.Add('15');
           cb_dia_ad.Items.Add('16');
           cb_dia_ad.Items.Add('17');
           cb_dia_ad.Items.Add('18');
           cb_dia_ad.Items.Add('19');
           cb_dia_ad.Items.Add('20');
           cb_dia_ad.Items.Add('21');
           cb_dia_ad.Items.Add('22');
           cb_dia_ad.Items.Add('23');
           cb_dia_ad.Items.Add('24');
           cb_dia_ad.Items.Add('25');
           cb_dia_ad.Items.Add('26');
           cb_dia_ad.Items.Add('27');
           cb_dia_ad.Items.Add('28');
           cb_dia_ad.Items.Add('29');
           end;

         db_txt_entrada.Text := cb_dia_ad.Text+'/'+cb_mes_ad.Text+'/'+cb_ano_ad.Text;

end;

procedure Tt_funcionarios.cb_dia_adSelect(Sender: TObject);
begin
  db_txt_entrada.Text := cb_dia_ad.Text+'/'+cb_mes_ad.Text+'/'+cb_ano_ad.Text;
end;

procedure Tt_funcionarios.cb_dia_deSelect(Sender: TObject);
begin
  db_txt_saida.Text := cb_dia_de.Text+'/'+cb_mes_de.Text+'/'+cb_ano_de.Text;
end;

procedure Tt_funcionarios.cb_ano_adSelect(Sender: TObject);
begin
  db_txt_entrada.Text := cb_dia_ad.Text+'/'+cb_mes_ad.Text+'/'+cb_ano_ad.Text;
end;

procedure Tt_funcionarios.cb_ano_deSelect(Sender: TObject);
begin
  db_txt_saida.Text := cb_dia_de.Text+'/'+cb_mes_de.Text+'/'+cb_ano_de.Text;
end;

procedure Tt_funcionarios.cb_mes_deSelect(Sender: TObject);
begin
         if (cb_mes_de.Text = '01') or (cb_mes_de.Text = '03') or (cb_mes_de.Text = '05') or (cb_mes_de.Text = '07') or (cb_mes_de.Text = '08') or (cb_mes_de.Text = '10') or (cb_mes_de.Text = '12') then
                  begin
                  cb_dia_de.Items.Clear;
                  cb_dia_de.Items.Add('01');
                  cb_dia_de.Items.Add('02');
                  cb_dia_de.Items.Add('03');
                  cb_dia_de.Items.Add('04');
                  cb_dia_de.Items.Add('05');
                  cb_dia_de.Items.Add('06');
                  cb_dia_de.Items.Add('07');
                  cb_dia_de.Items.Add('08');
                  cb_dia_de.Items.Add('09');
                  cb_dia_de.Items.Add('10');
                  cb_dia_de.Items.Add('11');
                  cb_dia_de.Items.Add('12');
                  cb_dia_de.Items.Add('13');
                  cb_dia_de.Items.Add('14');
                  cb_dia_de.Items.Add('15');
                  cb_dia_de.Items.Add('16');
                  cb_dia_de.Items.Add('17');
                  cb_dia_de.Items.Add('18');
                  cb_dia_de.Items.Add('19');
                  cb_dia_de.Items.Add('20');
                  cb_dia_de.Items.Add('21');
                  cb_dia_de.Items.Add('22');
                  cb_dia_de.Items.Add('23');
                  cb_dia_de.Items.Add('24');
                  cb_dia_de.Items.Add('25');
                  cb_dia_de.Items.Add('26');
                  cb_dia_de.Items.Add('27');
                  cb_dia_de.Items.Add('28');
                  cb_dia_de.Items.Add('29');
                  cb_dia_de.Items.Add('30');
                  cb_dia_de.Items.Add('31');
                  end;

                  if (cb_mes_de.Text = '04') or (cb_mes_de.Text = '06') or (cb_mes_de.Text = '09') or (cb_mes_de.Text = '11')then
                    begin
                    cb_dia_de.Items.Clear;
                    cb_dia_de.Items.Add('01');
                    cb_dia_de.Items.Add('02');
                    cb_dia_de.Items.Add('03');
                    cb_dia_de.Items.Add('04');
                    cb_dia_de.Items.Add('05');
                    cb_dia_de.Items.Add('06');
                    cb_dia_de.Items.Add('07');
                    cb_dia_de.Items.Add('08');
                    cb_dia_de.Items.Add('09');
                    cb_dia_de.Items.Add('10');
                    cb_dia_de.Items.Add('11');
                    cb_dia_de.Items.Add('12');
                    cb_dia_de.Items.Add('13');
                    cb_dia_de.Items.Add('14');
                    cb_dia_de.Items.Add('15');
                    cb_dia_de.Items.Add('16');
                    cb_dia_de.Items.Add('17');
                    cb_dia_de.Items.Add('18');
                    cb_dia_de.Items.Add('19');
                    cb_dia_de.Items.Add('20');
                    cb_dia_de.Items.Add('21');
                    cb_dia_de.Items.Add('22');
                    cb_dia_de.Items.Add('23');
                    cb_dia_de.Items.Add('24');
                    cb_dia_de.Items.Add('25');
                    cb_dia_de.Items.Add('26');
                    cb_dia_de.Items.Add('27');
                    cb_dia_de.Items.Add('28');
                    cb_dia_de.Items.Add('29');
                    cb_dia_de.Items.Add('30');
                    end;

         if (cb_mes_de.Text = '02') then
         begin
                  cb_dia_de.Items.Clear;
                  cb_dia_de.Items.Add('01');
                  cb_dia_de.Items.Add('02');
                  cb_dia_de.Items.Add('03');
                  cb_dia_de.Items.Add('04');
                  cb_dia_de.Items.Add('05');
                  cb_dia_de.Items.Add('06');
                  cb_dia_de.Items.Add('07');
                  cb_dia_de.Items.Add('08');
                  cb_dia_de.Items.Add('09');
                  cb_dia_de.Items.Add('10');
                  cb_dia_de.Items.Add('11');
                  cb_dia_de.Items.Add('12');
                  cb_dia_de.Items.Add('13');
                  cb_dia_de.Items.Add('14');
                  cb_dia_de.Items.Add('15');
                  cb_dia_de.Items.Add('16');
                  cb_dia_de.Items.Add('17');
                  cb_dia_de.Items.Add('18');
                  cb_dia_de.Items.Add('19');
                  cb_dia_de.Items.Add('20');
                  cb_dia_de.Items.Add('21');
                  cb_dia_de.Items.Add('22');
                  cb_dia_de.Items.Add('23');
                  cb_dia_de.Items.Add('24');
                  cb_dia_de.Items.Add('25');
                  cb_dia_de.Items.Add('26');
                  cb_dia_de.Items.Add('27');
                  cb_dia_de.Items.Add('28');
                  cb_dia_de.Items.Add('29');
         end;

       db_txt_saida.Text := cb_dia_de.Text+'/'+cb_mes_de.Text+'/'+cb_ano_de.Text;
end;

procedure Tt_funcionarios.FormCreate(Sender: TObject);
begin

end;

end.

