program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  PerformanceDiagnostics.Interfaces in 'src\PerformanceDiagnostics.Interfaces.pas',
  PerformanceDiagnostics in 'src\PerformanceDiagnostics.pas',
  PerformanceDiagnostics.VirtualMethodInterceptor in 'src\PerformanceDiagnostics.VirtualMethodInterceptor.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
