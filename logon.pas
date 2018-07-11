unit logon;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tt_logon }

  Tt_logon = class(TForm)
    btn_entrar: TButton;
    btn_sair: TButton;
    txt_login: TEdit;
    txt_senha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn_entrarClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  t_logon: Tt_logon;

implementation

{$R *.lfm}

{ Tt_logon }
uses home;

procedure Tt_logon.btn_sairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tt_logon.btn_entrarClick(Sender: TObject);
begin

  if (txt_login.Text = 'admin') and (txt_senha.Text = 'admin') then
     begin
          t_logon.Close;
          t_home.Show;
     end
  else
      begin
           txt_login.Clear;
           txt_senha.Clear;
           showmessage('Login ou Senha Incorretos!');
      end;

end;

end.

