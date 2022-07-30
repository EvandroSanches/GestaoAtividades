program Controle_de_Atividades;

uses
  Vcl.Forms,
  u_menu in 'u_menu.pas' {f_menu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_menu, f_menu);
  Application.Run;
end.
