program Project1;

uses
  Vcl.Forms,
  uMainView in 'uMainView.pas' {MainView},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(TMainView, MainView);
  Application.Run;
end.
