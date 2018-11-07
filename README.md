# PerformanceDiagnostics4Delphi
A simple class, which makes the analysis of time performance of methods, simpler and more efficient.
Works based on TObject and String(MethodName).

### For install in your project using [boss](https://github.com/HashLoad/boss):
``` sh
$ boss install boss install github.com/EduardoGrtt/PerformanceDiagnostics4Delphi:1.0.0
```
### How to Use
To use this API you must add the "PerformanceDiagnostics4Delphi\src" Path in your Delphi or on your project.
## Sample
```pascal
var
  APerformance: IPerformanceDiagnostics;
  AMyObject: TMyClass;
begin
  AMyObject := TMyClass.Create;
  try
    {Execute is a method of TMyClass}
    APerformance := TPerformanceDiagnostics.New(AMyObject).Add('Execute');
    AMyObject.Execute;
  finally
    AMyObject.Free;
  end;
  ShowMessage(Format('%f seconds', [APerformance.GetTotalSeconds]));
end;
```
