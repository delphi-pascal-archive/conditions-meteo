unit Unit1;

interface

uses
  Windows, Activex, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj, StdCtrls, ExtCtrls, CommCtrl, MSXML2_TLB, ComCtrls,
  Buttons;

type
  TCurrentWeather = class(TForm)
    Panel1: TPanel;
    ReportedAt: TLabel;
    WeatherBMP: TImage;
    Temperature: TLabel;
    FeelsLike: TLabel;
    Wind: TLabel;
    Humidity: TLabel;
    Sky: TLabel;
    Shape3: TShape;
    ImageJour: TImage;
    Label1: TLabel;
    SkyJr: TLabel;
    TempMax: TLabel;
    VentJr: TLabel;
    Precipitation: TLabel;
    Shape1: TShape;
    ImageNuit: TImage;
    Label7: TLabel;
    SkyNt: TLabel;
    TempMin: TLabel;
    VentNt: TLabel;
    PrecipitationNt: TLabel;
    Shape2: TShape;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape4: TShape;
    Image2: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Shape5: TShape;
    Timer1: TTimer;
    Shape7: TShape;
    PrecipitationNtDemain: TLabel;
    VentNtDemain: TLabel;
    TempMinDemain: TLabel;
    SkyNtDemain: TLabel;
    Label18: TLabel;
    ImageNuitDemain: TImage;
    Shape6: TShape;
    PrecipitationDemain: TLabel;
    VentJrDemain: TLabel;
    TempMaxDemain: TLabel;
    SkyJrDemain: TLabel;
    Label13: TLabel;
    ImageJourDemain: TImage;
    CheckConditions: TButton;
    BtnOk: TButton;
    procedure CheckConditionsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
    PathExe: string;
    ListTraducteur: TStringList;
    function Traduire(Phrase: string): string;
  public
    NoIcon: string;
    { Public declarations }
  end;

var
  CurrentWeather: TCurrentWeather;

implementation

{$R *.dfm}
{$R icones.res}

uses
  IniFiles;

var
  IniFile: TIniFile;

function TCurrentWeather.Traduire(Phrase: string): string;
var
 Txt,TxtFr: string;
begin
 Result := '';
 while Phrase > '' do
  begin
    Txt := Copy(Phrase,1, Pos(' ',Phrase)-1);
    if Txt = '' then Txt := Phrase;
    TxtFr :=  ListTraducteur.values[Txt];
    if TxtFr= '' then TxtFr := Txt;
    Result := Concat(Result,' ',TxtFr);
    Delete(Phrase,1,length(Txt)+1);
  end;
end;

procedure TCurrentWeather.CheckConditionsClick(Sender: TObject);
var
  objXMLDoc : IXMLDOMDocument;
  Node, Part : IXMLDOMElement;
  List,ListPrinc : IXMLDOMNodeList;
  Path,ID,title,producer: string;
  RS : TResourceStream; // ResourceStream needed to read our BMP resources.
  I : Integer;
begin
  CheckConditions.Enabled := False;
  Screen.Cursor := crHourGlass;
  IniFile := TIniFile.Create(PathExe+'\CWC.ini');
  ListTraducteur.Clear;
  IniFile.ReadSectionValues('Traducteur', ListTraducteur);
  IniFile.Free;

  objXMLDoc := CreateOLEObject('Microsoft.XMLDOM')as IXMLDOMDocument;
  objXMLDoc.async := False;
  objXMLDoc.load('http://xoap.weather.com/weather/local/CAXX0301?cc=*&dayf=6&par=0&prod=xoap&key=0&unit=m');
  Node := objXMLDoc.DocumentElement;
  List := Node.getElementsByTagName('dnam');
  CurrentWeather.Caption := 'Conditions meteo -'+ Traduire(List.Item[0].Text);
  Shape3.Hint := CurrentWeather.Caption;
  List := Node.getElementsByTagName('cc/lsup');
  ReportedAt.Caption := 'Date: ' + List.Item[0].Text;
  List := Node.getElementsByTagName('cc/t');
  Sky.Caption := Traduire (List.Item[0].Text);
  List := Node.getElementsByTagName('cc/tmp');
  Temperature.Caption := 'Temperature: ' + List.Item[0].Text+'°';
  List := Node.getElementsByTagName('cc/flik');
  FeelsLike.Caption := Concat ('FeelsLike: ' , List.Item[0].Text,'°');
  List := Node.getElementsByTagName('cc/hmid');
  Humidity.Caption := 'Humidity: ' + List.Item[0].Text+'%';
  List := Node.getElementsByTagName('cc/wind/s');
  Wind.Caption := 'Wind: ' + List.Item[0].Text+' Km/h -';
  List := Node.getElementsByTagName('cc/wind/t');
  Wind.Caption := Wind.Caption + Traduire (List.Item[0].Text) ;
  List := Node.getElementsByTagName('cc/icon');
  NoIcon := 'b' + List.Item[0].Text;
  RS := TResourceStream.Create(HInstance,NoIcon,RT_RCDATA);
  WeatherBMP.Picture.Bitmap.LoadFromStream(RS);
  RS.Free;

  {Prévision Aujour'Dui}
  List := Node.getElementsByTagName('dayf/day/hi');
  TempMax.Caption := ('Max: ' + List.Item[0].Text+'°');
  List := Node.getElementsByTagName('dayf/day/low');
  TempMin.Caption := ('Min: ' + List.Item[0].Text+'°');
  ListPrinc := Node.selectNodes('//day');
  Node := ListPrinc.Nextnode as IXMLDOMElement;
  List := Node.getElementsByTagName('part');
  Part := List.Nextnode as IXMLDOMElement;
  RS := TResourceStream.Create(HInstance,'b' + Part.getElementsByTagName('icon').Item[0].Text,RT_RCDATA);
  ImageJour.Picture.Bitmap.LoadFromStream(RS);
  RS.Free; // Free the memory used by the ResourceStream.
  SkyJr.Caption := Traduire (Part.getElementsByTagName('t').Item[0].Text);
  VentJr.Caption := 'Wind '+Part.getElementsByTagName('wind/s').Item[0].Text+' Km/h  - '+ Traduire (Part.getElementsByTagName('wind/t').Item[0].Text);
  Precipitation.Caption := 'Humidity: '+Part.getElementsByTagName('ppcp').Item[0].Text+'%';

  {Prévision Cette nuit}
  Part := List.Nextnode as IXMLDOMElement;
  RS := TResourceStream.Create(HInstance,'b' + Part.getElementsByTagName('icon').Item[0].Text,RT_RCDATA);
  ImageNuit.Picture.Bitmap.LoadFromStream(RS);
  RS.Free;
  SkyNt.Caption := Traduire (Part.getElementsByTagName('t').Item[0].Text);
  VentNt.Caption := 'Wind: '+Part.getElementsByTagName('wind/s').Item[0].Text+' Km/h  - '+ Traduire (Part.getElementsByTagName('wind/t').Item[0].Text);
  PrecipitationNt.Caption := 'Humidity: '+Part.getElementsByTagName('ppcp').Item[0].Text+'%';

  {Prévision Demain}
  Node := ListPrinc.Nextnode as IXMLDOMElement;
  List := Node.getElementsByTagName('hi');
  TempMaxDemain.Caption := ('Max: ' + List.Item[0].Text+'°');
  List := Node.getElementsByTagName('low');
  TempMinDemain.Caption := ('Min: ' + List.Item[0].Text+'°');
  List := Node.getElementsByTagName('part');
  Part := List.Nextnode as IXMLDOMElement;
  RS := TResourceStream.Create(HInstance,'b' + Part.getElementsByTagName('icon').Item[0].Text,RT_RCDATA);
  ImageJourDemain.Picture.Bitmap.LoadFromStream(RS);
  RS.Free; // Free the memory used by the ResourceStream.
  SkyJrDemain.Caption := Traduire (Part.getElementsByTagName('t').Item[0].Text);
  VentJrDemain.Caption := 'Wind: '+Part.getElementsByTagName('wind/s').Item[0].Text+' Km/h  - '+ Traduire (Part.getElementsByTagName('wind/t').Item[0].Text);
  PrecipitationDemain.Caption := 'Humidity: '+Part.getElementsByTagName('ppcp').Item[0].Text+'%';

  {Prévision  Demain nuit}
  Part := List.Nextnode as IXMLDOMElement;
  RS := TResourceStream.Create(HInstance,'b' + Part.getElementsByTagName('icon').Item[0].Text,RT_RCDATA);
  ImageNuitDemain.Picture.Bitmap.LoadFromStream(RS);
  RS.Free;
  SkyNtDemain.Caption := Traduire (Part.getElementsByTagName('t').Item[0].Text);
  VentNtDemain.Caption := 'Wind: '+Part.getElementsByTagName('wind/s').Item[0].Text+' Km/h  - '+ Traduire (Part.getElementsByTagName('wind/t').Item[0].Text);
  PrecipitationNtDemain.Caption := 'Précipitation: '+Part.getElementsByTagName('ppcp').Item[0].Text+'%';

  CheckConditions.Enabled := True;
  Screen.Cursor := crDefault;
end;

procedure TCurrentWeather.FormCreate(Sender: TObject);
begin
  Top := 1;
  PathExe := ExtractFileDir(Application.ExeName);
  ListTraducteur := TStringList.Create;
  ReportedAt.Caption := '';
  Sky.Caption := '';
  Temperature.Caption := '';
  FeelsLike.Caption := '';
  Humidity.Caption := '';
  TempMax.Caption := '';
  Wind.Caption := '';
  TempMin.Caption := '';
  SkyJr.Caption := '';
  VentJr.Caption := '';
  Precipitation.Caption := '';
  SkyNt.Caption := '';
  VentNt.Caption := '';
  PrecipitationNt.Caption := '';
  SkyJrDemain.Caption := '';
  VentJrDemain.Caption := '';
  PrecipitationDemain.Caption := '';
  SkyNtDemain.Caption := '';
  VentNtDemain.Caption := '';
  PrecipitationNtDemain.Caption := '';
  TempMaxDemain.Caption := '';
  TempMinDemain.Caption := '';
end;

procedure TCurrentWeather.FormDestroy(Sender: TObject);
begin
  ListTraducteur.Free;
end;

procedure TCurrentWeather.BtnOkClick(Sender: TObject);
begin
  Close;
end;

initialization
  CoInitialize(nil);

finalization
  CoUnInitialize;
end.
