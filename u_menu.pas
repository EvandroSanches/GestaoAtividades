unit u_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tf_menu = class(TForm)
    pnl_fundo: TPanel;
    pnl_lateral: TPanel;
    btn_sair: TSpeedButton;
    btn_atividades: TSpeedButton;
    btn_alunos: TSpeedButton;
    btn_menu: TSpeedButton;
    btn_relatorios: TSpeedButton;
    pnl_barra: TPanel;
    procedure btn_menuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_menu: Tf_menu;
  bExpandido : Boolean;

implementation

{$R *.dfm}

procedure Tf_menu.btn_menuClick(Sender: TObject);
begin

  if bExpandido then
  begin
    pnl_lateral.Width := 57;
  end
  else
  begin
    pnl_lateral.Width := 150;
  end;

  bExpandido := not bExpandido;
end;


procedure Tf_menu.btn_sairClick(Sender: TObject);
begin
  if bExpandido then
    Application.Terminate;
end;

procedure Tf_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tf_menu.FormShow(Sender: TObject);
begin
  pnl_lateral.Width := 57;
  bExpandido := False;
end;

end.
