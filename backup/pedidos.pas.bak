unit pedidos;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DbCtrls, DBGrids, DB, DateUtils;

type

  { Tt_pedidos }

  Tt_pedidos = class(TForm)
    cb_mes_ida: TComboBox;
    cb_dia_ida: TComboBox;
    cb_ano_ida: TComboBox;
    cb_mes_volta: TComboBox;
    cb_dia_volta: TComboBox;
    cb_ano_volta: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    db_cb_ida: TDBLookupComboBox;
    db_cb_volta: TDBLookupComboBox;
    db_cb_cacamba: TDBLookupComboBox;
    db_txt_status: TDBEdit;
    db_txt_func_volta: TDBEdit;
    db_txt_func_ida: TDBEdit;
    db_cod_cacamba: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    db_txt_valor: TDBEdit;
    db_txt_cliente: TDBEdit;
    db_txt_cod_pedido: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    txt_cliente: TEdit;
    Label11: TLabel;
    txt_cod: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure cb_ano_idaSelect(Sender: TObject);
    procedure cb_ano_voltaSelect(Sender: TObject);
    procedure cb_dia_idaChange(Sender: TObject);
    procedure cb_dia_idaSelect(Sender: TObject);
    procedure cb_dia_voltaSelect(Sender: TObject);
    procedure cb_mes_idaChange(Sender: TObject);
    procedure cb_mes_idaSelect(Sender: TObject);
    procedure cb_mes_voltaSelect(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
    procedure DBLookupComboBox1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure db_cb_cacambaChange(Sender: TObject);
    procedure db_cb_idaChange(Sender: TObject);
    procedure db_cb_voltaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txt_clienteChange(Sender: TObject);
    procedure txt_codChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_pedidos: Tt_pedidos;

implementation

{$R *.lfm}

uses DM;

{ Tt_pedidos }

procedure Tt_pedidos.FormShow(Sender: TObject);
begin
  DMC.query_pedido.Active:=true;
  DMC.query_preco.Active:=true;
  DMC.query_motorista.Active:=true;
  DMC.query_livres.Active:=true;

  cb_mes_ida.Items.Clear;
  cb_mes_ida.Items.Add('01');
  cb_mes_ida.Items.Add('02');
  cb_mes_ida.Items.Add('03');
  cb_mes_ida.Items.Add('04');
  cb_mes_ida.Items.Add('05');
  cb_mes_ida.Items.Add('06');
  cb_mes_ida.Items.Add('07');
  cb_mes_ida.Items.Add('08');
  cb_mes_ida.Items.Add('09');
  cb_mes_ida.Items.Add('10');
  cb_mes_ida.Items.Add('11');
  cb_mes_ida.Items.Add('12');

  cb_mes_volta.Items.Clear;
  cb_mes_volta.Items.Add('01');
  cb_mes_volta.Items.Add('02');
  cb_mes_volta.Items.Add('03');
  cb_mes_volta.Items.Add('04');
  cb_mes_volta.Items.Add('05');
  cb_mes_volta.Items.Add('06');
  cb_mes_volta.Items.Add('07');
  cb_mes_volta.Items.Add('08');
  cb_mes_volta.Items.Add('09');
  cb_mes_volta.Items.Add('10');
  cb_mes_volta.Items.Add('11');
  cb_mes_volta.Items.Add('12');

  cb_ano_ida.Items.Clear;
  cb_ano_ida.Items.Add('2017');
  cb_ano_ida.Items.Add('2018');
  cb_ano_ida.Items.Add('2019');
  cb_ano_ida.Items.Add('2020');
  cb_ano_ida.Items.Add('2021');
  cb_ano_ida.Items.Add('2022');
  cb_ano_ida.Items.Add('2023');
  cb_ano_ida.Items.Add('2024');
  cb_ano_ida.Items.Add('2025');
  cb_ano_ida.Items.Add('2026');
  cb_ano_ida.Items.Add('2027');
  cb_ano_ida.Items.Add('2028');
  cb_ano_ida.Items.Add('2029');
  cb_ano_ida.Items.Add('2030');
  cb_ano_ida.Items.Add('2031');
  cb_ano_ida.Items.Add('2032');
  cb_ano_ida.Items.Add('2033');
  cb_ano_ida.Items.Add('2034');
  cb_ano_ida.Items.Add('2035');
  cb_ano_ida.Items.Add('2036');
  cb_ano_ida.Items.Add('2037');
  cb_ano_ida.Items.Add('2038');
  cb_ano_ida.Items.Add('2039');
  cb_ano_ida.Items.Add('2040');
  cb_ano_ida.Items.Add('2041');
  cb_ano_ida.Items.Add('2042');
  cb_ano_ida.Items.Add('2043');
  cb_ano_ida.Items.Add('2044');
  cb_ano_ida.Items.Add('2045');
  cb_ano_ida.Items.Add('2046');
  cb_ano_ida.Items.Add('2047');
  cb_ano_ida.Items.Add('2048');
  cb_ano_ida.Items.Add('2049');
  cb_ano_ida.Items.Add('2050');

  cb_ano_volta.Items.Clear;
  cb_ano_volta.Items.Add('2017');
  cb_ano_volta.Items.Add('2018');
  cb_ano_volta.Items.Add('2019');
  cb_ano_volta.Items.Add('2020');
  cb_ano_volta.Items.Add('2021');
  cb_ano_volta.Items.Add('2022');
  cb_ano_volta.Items.Add('2023');
  cb_ano_volta.Items.Add('2024');
  cb_ano_volta.Items.Add('2025');
  cb_ano_volta.Items.Add('2026');
  cb_ano_volta.Items.Add('2027');
  cb_ano_volta.Items.Add('2028');
  cb_ano_volta.Items.Add('2029');
  cb_ano_volta.Items.Add('2030');
  cb_ano_volta.Items.Add('2031');
  cb_ano_volta.Items.Add('2032');
  cb_ano_volta.Items.Add('2033');
  cb_ano_volta.Items.Add('2034');
  cb_ano_volta.Items.Add('2035');
  cb_ano_volta.Items.Add('2036');
  cb_ano_volta.Items.Add('2037');
  cb_ano_volta.Items.Add('2038');
  cb_ano_volta.Items.Add('2039');
  cb_ano_volta.Items.Add('2040');
  cb_ano_volta.Items.Add('2041');
  cb_ano_volta.Items.Add('2042');
  cb_ano_volta.Items.Add('2043');
  cb_ano_volta.Items.Add('2044');
  cb_ano_volta.Items.Add('2045');
  cb_ano_volta.Items.Add('2046');
  cb_ano_volta.Items.Add('2047');
  cb_ano_volta.Items.Add('2048');
  cb_ano_volta.Items.Add('2049');
  cb_ano_volta.Items.Add('2050');


  //DBEdit1.Field.EditMask:= '99/99/9999;1;_';
 // DBEdit2.Field.EditMask:= '99/99/9999;1;_';

end;

procedure Tt_pedidos.txt_clienteChange(Sender: TObject);
begin
  DMC.query_pedido.Locate('cliente', txt_cliente.Text, [loPartialKey,loCaseInsensitive]);
end;

procedure Tt_pedidos.txt_codChange(Sender: TObject);
begin
  DMC.query_pedido.Locate('cod_pedido', txt_cod.Text, []);
end;

procedure Tt_pedidos.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DMC.query_pedido.Active:=false;
  DMC.query_preco.Active:=false;
  DMC.query_motorista.Active:=false;
  DMC.query_livres.Active:=false;
end;

procedure Tt_pedidos.DBLookupComboBox1Change(Sender: TObject);
begin

end;

procedure Tt_pedidos.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType
  );
begin
            if Button = nbPost then
             begin
                  if strtoDatetime(DBEdit1.Text) > strtoDatetime(DBEdit2.Text) then
                     begin
                          showmessage('Data de retorno não pode ser menor do que a de ida.');
                          DBNavigator1.BtnClick(nbCancel);
                          Abort;
                     end;
             end;
end;

procedure Tt_pedidos.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

end;

procedure Tt_pedidos.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
end;

procedure Tt_pedidos.DBEdit1Change(Sender: TObject);
begin

end;

procedure Tt_pedidos.cb_mes_idaChange(Sender: TObject);
begin

end;

procedure Tt_pedidos.cb_dia_idaChange(Sender: TObject);
begin

end;

procedure Tt_pedidos.cb_ano_idaSelect(Sender: TObject);
begin
  DBEdit1.Text := cb_dia_ida.Text+'/'+cb_mes_ida.Text+'/'+cb_ano_ida.Text;
end;

procedure Tt_pedidos.cb_ano_voltaSelect(Sender: TObject);
begin
  DBEdit2.Text := cb_dia_volta.Text+'/'+cb_mes_volta.Text+'/'+cb_ano_volta.Text;
end;

procedure Tt_pedidos.cb_dia_idaSelect(Sender: TObject);
begin
  DBEdit1.Text := cb_dia_ida.Text+'/'+cb_mes_ida.Text+'/'+cb_ano_ida.Text;
end;

procedure Tt_pedidos.cb_dia_voltaSelect(Sender: TObject);
begin
  DBEdit2.Text := cb_dia_volta.Text+'/'+cb_mes_volta.Text+'/'+cb_ano_volta.Text;
end;

procedure Tt_pedidos.cb_mes_idaSelect(Sender: TObject);
begin
  if (cb_mes_ida.Text = '01') or (cb_mes_ida.Text = '03') or (cb_mes_ida.Text = '05') or (cb_mes_ida.Text = '07') or (cb_mes_ida.Text = '08') or (cb_mes_ida.Text = '10') or (cb_mes_ida.Text = '12') then
       begin
         cb_dia_ida.Items.Clear;
         cb_dia_ida.Items.Add('01');
         cb_dia_ida.Items.Add('02');
         cb_dia_ida.Items.Add('03');
         cb_dia_ida.Items.Add('04');
         cb_dia_ida.Items.Add('05');
         cb_dia_ida.Items.Add('06');
         cb_dia_ida.Items.Add('07');
         cb_dia_ida.Items.Add('08');
         cb_dia_ida.Items.Add('09');
         cb_dia_ida.Items.Add('10');
         cb_dia_ida.Items.Add('11');
         cb_dia_ida.Items.Add('12');
         cb_dia_ida.Items.Add('13');
         cb_dia_ida.Items.Add('14');
         cb_dia_ida.Items.Add('15');
         cb_dia_ida.Items.Add('16');
         cb_dia_ida.Items.Add('17');
         cb_dia_ida.Items.Add('18');
         cb_dia_ida.Items.Add('19');
         cb_dia_ida.Items.Add('20');
         cb_dia_ida.Items.Add('21');
         cb_dia_ida.Items.Add('22');
         cb_dia_ida.Items.Add('23');
         cb_dia_ida.Items.Add('24');
         cb_dia_ida.Items.Add('25');
         cb_dia_ida.Items.Add('26');
         cb_dia_ida.Items.Add('27');
         cb_dia_ida.Items.Add('28');
         cb_dia_ida.Items.Add('29');
         cb_dia_ida.Items.Add('30');
         cb_dia_ida.Items.Add('31');
       end;

       if (cb_mes_ida.Text = '04') or (cb_mes_ida.Text = '06') or (cb_mes_ida.Text = '09') or (cb_mes_ida.Text = '11')then
         begin
         cb_dia_ida.Items.Clear;
         cb_dia_ida.Items.Add('01');
         cb_dia_ida.Items.Add('02');
         cb_dia_ida.Items.Add('03');
         cb_dia_ida.Items.Add('04');
         cb_dia_ida.Items.Add('05');
         cb_dia_ida.Items.Add('06');
         cb_dia_ida.Items.Add('07');
         cb_dia_ida.Items.Add('08');
         cb_dia_ida.Items.Add('09');
         cb_dia_ida.Items.Add('10');
         cb_dia_ida.Items.Add('11');
         cb_dia_ida.Items.Add('12');
         cb_dia_ida.Items.Add('13');
         cb_dia_ida.Items.Add('14');
         cb_dia_ida.Items.Add('15');
         cb_dia_ida.Items.Add('16');
         cb_dia_ida.Items.Add('17');
         cb_dia_ida.Items.Add('18');
         cb_dia_ida.Items.Add('19');
         cb_dia_ida.Items.Add('20');
         cb_dia_ida.Items.Add('21');
         cb_dia_ida.Items.Add('22');
         cb_dia_ida.Items.Add('23');
         cb_dia_ida.Items.Add('24');
         cb_dia_ida.Items.Add('25');
         cb_dia_ida.Items.Add('26');
         cb_dia_ida.Items.Add('27');
         cb_dia_ida.Items.Add('28');
         cb_dia_ida.Items.Add('29');
         cb_dia_ida.Items.Add('30');
         end;

       if (cb_mes_ida.Text = '02') then
         begin
         cb_dia_ida.Items.Clear;
         cb_dia_ida.Items.Add('01');
         cb_dia_ida.Items.Add('02');
         cb_dia_ida.Items.Add('03');
         cb_dia_ida.Items.Add('04');
         cb_dia_ida.Items.Add('05');
         cb_dia_ida.Items.Add('06');
         cb_dia_ida.Items.Add('07');
         cb_dia_ida.Items.Add('08');
         cb_dia_ida.Items.Add('09');
         cb_dia_ida.Items.Add('10');
         cb_dia_ida.Items.Add('11');
         cb_dia_ida.Items.Add('12');
         cb_dia_ida.Items.Add('13');
         cb_dia_ida.Items.Add('14');
         cb_dia_ida.Items.Add('15');
         cb_dia_ida.Items.Add('16');
         cb_dia_ida.Items.Add('17');
         cb_dia_ida.Items.Add('18');
         cb_dia_ida.Items.Add('19');
         cb_dia_ida.Items.Add('20');
         cb_dia_ida.Items.Add('21');
         cb_dia_ida.Items.Add('22');
         cb_dia_ida.Items.Add('23');
         cb_dia_ida.Items.Add('24');
         cb_dia_ida.Items.Add('25');
         cb_dia_ida.Items.Add('26');
         cb_dia_ida.Items.Add('27');
         cb_dia_ida.Items.Add('28');
         cb_dia_ida.Items.Add('29');
         end;

       DBEdit1.Text := cb_dia_ida.Text+'/'+cb_mes_ida.Text+'/'+cb_ano_ida.Text;
end;

procedure Tt_pedidos.cb_mes_voltaSelect(Sender: TObject);
begin
       if (cb_mes_volta.Text = '01') or (cb_mes_volta.Text = '03') or (cb_mes_volta.Text = '05') or (cb_mes_volta.Text = '07') or (cb_mes_volta.Text = '08') or (cb_mes_volta.Text = '10') or (cb_mes_volta.Text = '12') then
            begin
              cb_dia_volta.Items.Clear;
              cb_dia_volta.Items.Add('01');
              cb_dia_volta.Items.Add('02');
              cb_dia_volta.Items.Add('03');
              cb_dia_volta.Items.Add('04');
              cb_dia_volta.Items.Add('05');
              cb_dia_volta.Items.Add('06');
              cb_dia_volta.Items.Add('07');
              cb_dia_volta.Items.Add('08');
              cb_dia_volta.Items.Add('09');
              cb_dia_volta.Items.Add('10');
              cb_dia_volta.Items.Add('11');
              cb_dia_volta.Items.Add('12');
              cb_dia_volta.Items.Add('13');
              cb_dia_volta.Items.Add('14');
              cb_dia_volta.Items.Add('15');
              cb_dia_volta.Items.Add('16');
              cb_dia_volta.Items.Add('17');
              cb_dia_volta.Items.Add('18');
              cb_dia_volta.Items.Add('19');
              cb_dia_volta.Items.Add('20');
              cb_dia_volta.Items.Add('21');
              cb_dia_volta.Items.Add('22');
              cb_dia_volta.Items.Add('23');
              cb_dia_volta.Items.Add('24');
              cb_dia_volta.Items.Add('25');
              cb_dia_volta.Items.Add('26');
              cb_dia_volta.Items.Add('27');
              cb_dia_volta.Items.Add('28');
              cb_dia_volta.Items.Add('29');
              cb_dia_volta.Items.Add('30');
              cb_dia_volta.Items.Add('31');
            end;

            if (cb_mes_volta.Text = '04') or (cb_mes_volta.Text = '06') or (cb_mes_volta.Text = '09') or (cb_mes_volta.Text = '11')then
              begin
              cb_dia_volta.Items.Clear;
              cb_dia_volta.Items.Add('01');
              cb_dia_volta.Items.Add('02');
              cb_dia_volta.Items.Add('03');
              cb_dia_volta.Items.Add('04');
              cb_dia_volta.Items.Add('05');
              cb_dia_volta.Items.Add('06');
              cb_dia_volta.Items.Add('07');
              cb_dia_volta.Items.Add('08');
              cb_dia_volta.Items.Add('09');
              cb_dia_volta.Items.Add('10');
              cb_dia_volta.Items.Add('11');
              cb_dia_volta.Items.Add('12');
              cb_dia_volta.Items.Add('13');
              cb_dia_volta.Items.Add('14');
              cb_dia_volta.Items.Add('15');
              cb_dia_volta.Items.Add('16');
              cb_dia_volta.Items.Add('17');
              cb_dia_volta.Items.Add('18');
              cb_dia_volta.Items.Add('19');
              cb_dia_volta.Items.Add('20');
              cb_dia_volta.Items.Add('21');
              cb_dia_volta.Items.Add('22');
              cb_dia_volta.Items.Add('23');
              cb_dia_volta.Items.Add('24');
              cb_dia_volta.Items.Add('25');
              cb_dia_volta.Items.Add('26');
              cb_dia_volta.Items.Add('27');
              cb_dia_volta.Items.Add('28');
              cb_dia_volta.Items.Add('29');
              cb_dia_volta.Items.Add('30');
              end;

            if (cb_mes_volta.Text = '02') then
              begin
              cb_dia_volta.Items.Clear;
              cb_dia_volta.Items.Add('01');
              cb_dia_volta.Items.Add('02');
              cb_dia_volta.Items.Add('03');
              cb_dia_volta.Items.Add('04');
              cb_dia_volta.Items.Add('05');
              cb_dia_volta.Items.Add('06');
              cb_dia_volta.Items.Add('07');
              cb_dia_volta.Items.Add('08');
              cb_dia_volta.Items.Add('09');
              cb_dia_volta.Items.Add('10');
              cb_dia_volta.Items.Add('11');
              cb_dia_volta.Items.Add('12');
              cb_dia_volta.Items.Add('13');
              cb_dia_volta.Items.Add('14');
              cb_dia_volta.Items.Add('15');
              cb_dia_volta.Items.Add('16');
              cb_dia_volta.Items.Add('17');
              cb_dia_volta.Items.Add('18');
              cb_dia_volta.Items.Add('19');
              cb_dia_volta.Items.Add('20');
              cb_dia_volta.Items.Add('21');
              cb_dia_volta.Items.Add('22');
              cb_dia_volta.Items.Add('23');
              cb_dia_volta.Items.Add('24');
              cb_dia_volta.Items.Add('25');
              cb_dia_volta.Items.Add('26');
              cb_dia_volta.Items.Add('27');
              cb_dia_volta.Items.Add('28');
              cb_dia_volta.Items.Add('29');
              end;

       DBEdit2.Text := cb_dia_volta.Text+'/'+cb_mes_volta.Text+'/'+cb_ano_volta.Text;
end;

procedure Tt_pedidos.db_cb_cacambaChange(Sender: TObject);
begin
  db_cod_cacamba.Text:= inttostr(Integer(db_cb_cacamba.KeyValue));
end;

procedure Tt_pedidos.db_cb_idaChange(Sender: TObject);
begin
  db_txt_func_ida.Text:=inttostr(Integer(db_cb_ida.KeyValue));
end;

procedure Tt_pedidos.db_cb_voltaChange(Sender: TObject);
begin
  db_txt_func_volta.Text:=inttostr(Integer(db_cb_volta.KeyValue));
end;

procedure Tt_pedidos.FormCreate(Sender: TObject);
begin

end;

end.

