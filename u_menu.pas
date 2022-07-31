unit u_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls, u_aluno,
  Vcl.StdCtrls;

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
    procedure btn_alunosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure Tf_menu.btn_alunosClick(Sender: TObject);
begin
  if bExpandido then
    if Assigned(f_aluno)then
    begin
      f_aluno.Show;
    end
    else
    begin
      f_aluno := Tf_aluno.Create(self);
      f_aluno.Show;
    end;

end;

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

procedure Tf_menu.Button1Click(Sender: TObject);
begin
  f_aluno := tf_aluno.Create(self);
  f_aluno.Show;
end;

procedure Tf_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  f_menu := nil;
end;

procedure Tf_menu.FormShow(Sender: TObject);
begin
  pnl_lateral.Width := 57;
  bExpandido := False;
end;

end.
