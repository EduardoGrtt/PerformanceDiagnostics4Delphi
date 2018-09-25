unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PerformanceDiagnostics.Interfaces, PerformanceDiagnostics;

type
  TMyClass = class
  public
    procedure Execute; virtual;
  end;

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  APerformance: IPerformanceDiagnostics;
  AMyClass: TMyClass;
begin
  AMyClass := TMyClass.Create;
  try
    APerformance := TPerformanceDiagnostics.New(AMyClass).Add('Execute');
    AMyClass.Execute;
  finally
    AMyClass.Free;
  end;
  ShowMessage(Format('%f seconds', [APerformance.GetTotalSeconds]));
end;

{ TMinhaClass }

procedure TMyClass.Execute;
var
  I, Aux: Integer;
begin
  for I := 0 to 9999999999 do
    Aux := Trunc(I/2);
end;

end.
