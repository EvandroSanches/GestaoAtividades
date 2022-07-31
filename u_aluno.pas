unit u_aluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tf_aluno = class(TForm)
    pnl_fundo: TPanel;
    pgc_aluno: TPageControl;
    pg_aluno: TTabSheet;
    pg_serie: TTabSheet;
    btn_sair: TSpeedButton;
    btn_exluir: TSpeedButton;
    btn_gravar: TSpeedButton;
    db_serie: TDBGrid;
    db_aluno: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_aluno: Tf_aluno;

implementation

{$R *.dfm}



procedure Tf_aluno.btn_sairClick(Sender: TObject);
begin
  f_aluno.Close;
end;

procedure Tf_aluno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  f_aluno := nil;
end;

end.
