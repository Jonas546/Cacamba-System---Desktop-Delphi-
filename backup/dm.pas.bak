unit DM;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, sqldb, db, FileUtil, DateUtils;

type

  { TDMC }

  TDMC = class(TDataModule)
    ds_imagem: TDataSource;
    ds_total_c_anual: TDataSource;
    ds_cacamba_anual: TDataSource;
    ds_cacamba_mensal: TDataSource;
    ds_total_c_mensal: TDataSource;
    ds_total_c_semanal: TDataSource;
    ds_cacamba_semanal: TDataSource;
    ds_total_anual: TDataSource;
    ds_rel_anual_receita: TDataSource;
    ds_gasto_anual: TDataSource;
    ds_rel_anual_gastos: TDataSource;
    ds_total_semanal: TDataSource;
    ds_rel_semanal_receita: TDataSource;
    ds_total_mensal: TDataSource;
    ds_rel_mensal_receita: TDataSource;
    ds_gasto_semanal: TDataSource;
    ds_rel_gastos_semanal: TDataSource;
    ds_rel_financeiro: TDataSource;
    ds_fin_total: TDataSource;
    ds_c_status: TDataSource;
    ds_livres: TDataSource;
    ds_motorista: TDataSource;
    ds_pedido: TDataSource;
    ds_ativos: TDataSource;
    ds_financeiro: TDataSource;
    ds_funcionario: TDataSource;
    ds_preco: TDataSource;
    ds_cacamba: TDataSource;
    dbSistema: TIBConnection;
    query_cacamba: TSQLQuery;
    query_preco: TSQLQuery;
    query_funcionario: TSQLQuery;
    query_financeiro: TSQLQuery;
    query_ativos: TSQLQuery;
    query_pedido: TSQLQuery;
    query_motorista: TSQLQuery;
    query_livres: TSQLQuery;
    qr_c_status: TSQLQuery;
    qr_rel_financeiro_total: TSQLQuery;
    query_rel_financeiro: TSQLQuery;
    query_relatorio_gastos_semanal: TSQLQuery;
    gasto_semanal: TSQLQuery;
    qr_rel_mensal_receita: TSQLQuery;
    qr_rel_semanal_receita: TSQLQuery;
    qr_rel_anual_gastos: TSQLQuery;
    gasto_anual: TSQLQuery;
    qr_rel_anual_receita: TSQLQuery;
    cacamba_semanal: TSQLQuery;
    cacamba_mensal: TSQLQuery;
    cacamba_anual: TSQLQuery;
    qr_imagen: TSQLQuery;
    query_img: TSQLQuery;
    total_c_anual: TSQLQuery;
    total_c_mensal: TSQLQuery;
    total_c_semanal: TSQLQuery;
    total_anual: TSQLQuery;
    total_semanal: TSQLQuery;
    total_mensal: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure query_cacambaAfterDelete(DataSet: TDataSet);
    procedure query_cacambaAfterEdit(DataSet: TDataSet);
    procedure query_cacambaAfterPost(DataSet: TDataSet);
    procedure query_cacambaNewRecord(DataSet: TDataSet);
    procedure query_financeiroAfterDelete(DataSet: TDataSet);
    procedure query_financeiroAfterEdit(DataSet: TDataSet);
    procedure query_financeiroAfterPost(DataSet: TDataSet);
    procedure query_financeiroBeforePost(DataSet: TDataSet);
    procedure query_financeiroNewRecord(DataSet: TDataSet);
    procedure query_funcionarioAfterDelete(DataSet: TDataSet);
    procedure query_funcionarioAfterEdit(DataSet: TDataSet);
    procedure query_funcionarioAfterPost(DataSet: TDataSet);
    procedure query_funcionarioBeforePost(DataSet: TDataSet);
    procedure query_funcionarioNewRecord(DataSet: TDataSet);
    procedure query_pedidoAfterDelete(DataSet: TDataSet);
    procedure query_pedidoAfterEdit(DataSet: TDataSet);
    procedure query_pedidoAfterPost(DataSet: TDataSet);
    procedure query_pedidoBeforePost(DataSet: TDataSet);
    procedure query_pedidoNewRecord(DataSet: TDataSet);
    procedure query_precoAfterEdit(DataSet: TDataSet);
    procedure query_precoAfterPost(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DMC: TDMC;
  linhas, codigo, num_dias: integer;
  agora, depois, nc, st, stl, hoje, nStatus: String;
  vPreco, VTotal: double;

implementation

{$R *.lfm}

{ TDMC }

procedure TDMC.query_cacambaNewRecord(DataSet: TDataSet);
begin
  linhas := DMC.query_cacamba.RecordCount;
  codigo := linhas + 1;
  DMC.query_cacamba.Fields[0].AsInteger:=codigo;
  DMC.query_cacamba.Fields[1].AsString:= '0';
  DMC.query_cacamba.Fields[2].AsString:= 'Livre';
end;

procedure TDMC.query_financeiroAfterDelete(DataSet: TDataSet);
begin
     if DMC.query_financeiro.ChangeCount > 0 then
     begin
          DMC.query_financeiro.ApplyUpdates(-1);
          DMC.query_financeiro.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_financeiro.Active:=true;
     end;
end;

procedure TDMC.query_financeiroAfterEdit(DataSet: TDataSet);
begin
     //if DMC.query_financeiro.ChangeCount > 0 then
     //begin
          //DMC.query_financeiro.ApplyUpdates(0);
          //DMC.query_financeiro.Refresh;
          //DMC.SQLTransaction1.Commit;
          //DMC.query_financeiro.Active:=true;
     //end;
end;

procedure TDMC.query_financeiroAfterPost(DataSet: TDataSet);
begin
     if DMC.query_financeiro.ChangeCount > 0 then
     begin
          DMC.query_financeiro.ApplyUpdates(0);
          DMC.query_financeiro.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_financeiro.Active:=true;
     end;
end;

procedure TDMC.query_financeiroBeforePost(DataSet: TDataSet);
begin

  if (DMC.query_financeiro.Fields[2].AsString = '') or (DMC.query_financeiro.Fields[3].AsString = '') then
     begin
          Abort;
     end;

end;

procedure TDMC.query_financeiroNewRecord(DataSet: TDataSet);
begin
  linhas := DMC.query_financeiro.RecordCount;
  codigo := linhas + 1;
  DMC.query_financeiro.Fields[0].AsInteger:=codigo;
  DMC.query_financeiro.Fields[4].AsString:=datetimetostr(now);
end;

procedure TDMC.query_funcionarioAfterDelete(DataSet: TDataSet);
begin
     if DMC.query_funcionario.ChangeCount > 0 then
     begin
          DMC.query_funcionario.ApplyUpdates(-1);
          DMC.query_funcionario.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_funcionario.Active:=true;
     end;
end;

procedure TDMC.query_funcionarioAfterEdit(DataSet: TDataSet);
begin
     //if DMC.query_funcionario.ChangeCount > 0 then
     //begin
          //DMC.query_funcionario.ApplyUpdates(0);
          //DMC.query_funcionario.Refresh;
          //DMC.SQLTransaction1.Commit;
          //DMC.query_funcionario.Active:=true;
     //end;
end;

procedure TDMC.query_funcionarioAfterPost(DataSet: TDataSet);
begin
     if DMC.query_funcionario.ChangeCount > 0 then
     begin
          DMC.query_funcionario.ApplyUpdates(0);
          DMC.query_funcionario.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_funcionario.Active:=true;
          DMC.query_ativos.Active:=false;
          DMC.query_ativos.Active:=true;
          DMC.query_motorista.Active:=false;
          DMC.query_motorista.Active:=true;
     end;
end;

procedure TDMC.query_funcionarioBeforePost(DataSet: TDataSet);
begin
  if (DMC.query_funcionario.Fields[1].AsString = '') or (DMC.query_funcionario.Fields[2].AsString = '') or (DMC.query_funcionario.Fields[3].AsString = '') or (DMC.query_funcionario.Fields[4].AsString = '') or (DMC.query_funcionario.Fields[5].AsString = '') or (DMC.query_funcionario.Fields[6].AsString = '') or (DMC.query_funcionario.Fields[7].AsString = '') or (DMC.query_funcionario.Fields[8].AsString = '') or (DMC.query_funcionario.Fields[9].AsString = '') or (DMC.query_funcionario.Fields[10].AsString = '') then
     begin
          Abort;
     end;
end;

procedure TDMC.query_funcionarioNewRecord(DataSet: TDataSet);
begin
  linhas := DMC.query_funcionario.RecordCount;
  codigo := linhas + 1;
  DMC.query_funcionario.Fields[0].Value := codigo;
end;

procedure TDMC.query_pedidoAfterDelete(DataSet: TDataSet);
begin
     if DMC.query_pedido.ChangeCount > 0 then
       begin
           DMC.query_pedido.ApplyUpdates(-1);
           DMC.query_pedido.Refresh;
           DMC.SQLTransaction1.Commit;
           DMC.query_pedido.Active:=true;
       end;
end;

procedure TDMC.query_pedidoAfterEdit(DataSet: TDataSet);
begin
     //if DMC.query_pedido.ChangeCount > 0 then
      //begin
           //DMC.query_pedido.ApplyUpdates(0);
           //DMC.query_pedido.Refresh;
           //DMC.SQLTransaction1.Commit;
           //DMC.query_pedido.Active:=true;
      //end;
end;

procedure TDMC.query_pedidoAfterPost(DataSet: TDataSet);
begin
  hoje := datetimetostr(now);

       if DMC.query_pedido.ChangeCount > 0 then
        begin

             st := 'Ocupado';
             stl := 'Livre';
             nc := inttostr(DMC.query_pedido.Fields[4].AsInteger);
             nStatus := DMC.query_pedido.Fields[9].AsString;

             if nStatus = 'Aberto' then
                begin
                     DMC.qr_c_status.Close;
                     DMC.qr_c_status.SQL.Clear;
                     DMC.qr_c_status.SQL.Add('update cacamba set status = :s1 where n_cacamba = :n1');
                     DMC.qr_c_status.ParamByName('s1').AsString:=st;
                     DMC.qr_c_status.ParamByName('n1').AsString:=nc;
                     DMC.qr_c_status.ExecSQL;
                     DMC.query_pedido.Active:=true;
                     DMC.query_livres.Active:=false;
                     DMC.query_livres.Active:=true;
                end;

             if nStatus = 'Fechado' then
                begin
                     DMC.qr_c_status.Close;
                     DMC.qr_c_status.SQL.Clear;
                     DMC.qr_c_status.SQL.Add('update cacamba set status = :s2 where n_cacamba = :n2');
                     DMC.qr_c_status.ParamByName('s2').AsString:=stl;
                     DMC.qr_c_status.ParamByName('n2').AsString:=nc;
                     DMC.qr_c_status.ExecSQL;
                     DMC.query_pedido.Active:=true;
                     DMC.query_livres.Active:=false;
                     DMC.query_livres.Active:=true;
                end;

             DMC.query_pedido.ApplyUpdates(0);
             DMC.query_pedido.Refresh;
             DMC.SQLTransaction1.Commit;
             DMC.query_pedido.Active:=true;
        end;
end;

procedure TDMC.query_pedidoBeforePost(DataSet: TDataSet);
begin

      hoje := datetimetostr(now);
      DMC.query_preco.Active:=true;

      if DMC.query_pedido.Fields[9].AsString = 'Fechado' then
         begin
              Abort;
         end;

      if (DMC.query_pedido.Fields[7].AsString <> '') and (DMC.query_pedido.Fields[6].AsString <> '') and (DMC.query_pedido.Fields[1].AsString <> '') and (DMC.query_pedido.Fields[2].AsString <> '') and (DMC.query_pedido.Fields[3].AsString <> '') and (DMC.query_pedido.Fields[4].AsString <> '') and (DMC.query_pedido.Fields[8].AsString <> '')then
      begin
           num_dias := DaysBetween(strtoDateTime(DMC.query_pedido.Fields[7].AsString),strtoDateTime(DMC.query_pedido.Fields[6].AsString));
           vPreco := strtofloat(DMC.query_preco.Fields[1].AsString);
           vTotal := vPreco * num_dias;
           DMC.query_pedido.Fields[5].Value := vTotal;

               if(strtodatetime(hoje) >= strtodatetime(DMC.query_pedido.Fields[7].AsString)) then
                 begin
                      DMC.query_pedido.Fields[9].AsString:='Fechado';
                 end
               else
                 begin
                      DMC.query_pedido.Fields[9].AsString:='Aberto';

                 end;
      end
      else
      begin
           Abort;
      end;

      DMC.query_preco.Active:=false;
end;

procedure TDMC.query_pedidoNewRecord(DataSet: TDataSet);
begin
  linhas := DMC.query_pedido.RecordCount;
  codigo := linhas + 1;
  DMC.query_pedido.Fields[0].Value := codigo;
end;

procedure TDMC.query_precoAfterEdit(DataSet: TDataSet);
begin
     //if DMC.query_preco.ChangeCount > 0 then
     //begin
          //DMC.query_preco.ApplyUpdates(0);
          //DMC.query_preco.Refresh;
          //DMC.SQLTransaction1.Commit;
          //DMC.query_preco.Active:=true;
     //end;
end;

procedure TDMC.query_precoAfterPost(DataSet: TDataSet);
begin
     if DMC.query_preco.ChangeCount > 0 then
     begin
          DMC.query_preco.ApplyUpdates(0);
          DMC.query_preco.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_preco.Active:=true;
     end;
end;

procedure TDMC.query_cacambaAfterPost(DataSet: TDataSet);
begin
     if DMC.query_cacamba.ChangeCount > 0 then
     begin
          DMC.query_cacamba.ApplyUpdates(0);
          DMC.query_cacamba.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_cacamba.Active:=true;
          //DMC.query_livres.Close;
          DMC.query_livres.Active:=false;
          DMC.query_livres.Active:=true;
     end;
end;

procedure TDMC.query_cacambaAfterDelete(DataSet: TDataSet);
begin
     if DMC.query_cacamba.ChangeCount > 0 then
     begin
          DMC.query_cacamba.ApplyUpdates(-1);
          DMC.query_cacamba.Refresh;
          DMC.SQLTransaction1.Commit;
          DMC.query_cacamba.Active:=true;
          DMC.query_livres.Active:=false;
          DMC.query_livres.Active:=true;
     end;
end;

procedure TDMC.DataModuleCreate(Sender: TObject);
begin

end;

procedure TDMC.query_cacambaAfterEdit(DataSet: TDataSet);
begin
     //if DMC.query_cacamba.ChangeCount > 0 then
     //begin
          //DMC.query_cacamba.ApplyUpdates(0);
          //DMC.query_cacamba.Refresh;
          //DMC.SQLTransaction1.Commit;
          //DMC.query_cacamba.Active:=true;
     //end;
end;

end.

