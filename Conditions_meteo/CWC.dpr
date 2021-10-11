program CWC;

uses
  Forms,
  Unit1 in 'Unit1.pas' {CurrentWeather};

{$R *.res}
begin
  Application.Initialize;
  Application.Title:='Meteo';
  Application.CreateForm(TCurrentWeather, CurrentWeather);
  Application.Run;
end.
