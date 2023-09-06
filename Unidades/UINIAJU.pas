unit UINIAJU;

interface

uses
  Classes, SysUtils, IniFiles, Forms, Windows;

const
  csIniCONFIGSection = 'CONFIG';

  {Section: CONFIG}
  csIniCONFIGPorcentaje = 'Porcentaje';
  csIniCONFIGPorcentajeP = 'PorcentajeP';
  csIniCONFIGPorcentajeD = 'PorcentajeD';
  csIniCONFIGDatox = 'Datox';
  csIniCONFIGModoAjuste = 'ModoAjuste';
  csIniCONFIGTipoTag = 'TipoTag';
  csIniCONFIGMinimoTicket = 'MinimoTicket';
  csIniCONFIGBorrarLecturas = 'BorrarLecturas';

type
  TIniAju = class(TObject)
  private
    {Section: CONFIG}
    FCONFIGPorcentaje: string;
    FCONFIGPorcentajeP: string;
    FCONFIGPorcentajeD: string;
    FCONFIGDatox: string;
    FCONFIGModoAjuste: string;
    FCONFIGTipoTag: string;
    FCONFIGMinimoTicket: string;
    FCONFIGBorrarLecturas: string;
  public
    procedure LoadSettings(Ini: TIniFile);
    procedure SaveSettings(Ini: TIniFile);

    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);

    {Section: CONFIG}
    property CONFIGPorcentaje: string read FCONFIGPorcentaje write FCONFIGPorcentaje;
    property CONFIGPorcentajeP: string read FCONFIGPorcentajeP write FCONFIGPorcentajeP;
    property CONFIGPorcentajeD: string read FCONFIGPorcentajeD write FCONFIGPorcentajeD;
    property CONFIGDatox: string read FCONFIGDatox write FCONFIGDatox;
    property CONFIGModoAjuste: string read FCONFIGModoAjuste write FCONFIGModoAjuste;
    property CONFIGTipoTag: string read FCONFIGTipoTag write FCONFIGTipoTag;
    property CONFIGMinimoTicket: string read FCONFIGMinimoTicket write FCONFIGMinimoTicket;
    property CONFIGBorrarLecturas: string read FCONFIGBorrarLecturas write FCONFIGBorrarLecturas;
  end;

var
  IniAju: TIniAju = nil;

implementation

procedure TIniAju.LoadSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: CONFIG}
    FCONFIGPorcentaje := Ini.ReadString(csIniCONFIGSection, csIniCONFIGPorcentaje, '0.05');
    FCONFIGPorcentajeP := Ini.ReadString(csIniCONFIGSection, csIniCONFIGPorcentajeP, '0.05');
    FCONFIGPorcentajeD := Ini.ReadString(csIniCONFIGSection, csIniCONFIGPorcentajeD, '0.05');
    FCONFIGDatox := Ini.ReadString(csIniCONFIGSection, csIniCONFIGDatox, '');
    FCONFIGModoAjuste := Ini.ReadString(csIniCONFIGSection, csIniCONFIGModoAjuste, '4');
    FCONFIGTipoTag := Ini.ReadString(csIniCONFIGSection, csIniCONFIGTipoTag, '3');
    FCONFIGMinimoTicket := Ini.ReadString(csIniCONFIGSection, csIniCONFIGMinimoTicket, '20');
    FCONFIGBorrarLecturas := Ini.ReadString(csIniCONFIGSection, csIniCONFIGBorrarLecturas, 'Si');
  end;
end;

procedure TIniAju.SaveSettings(Ini: TIniFile);
begin
  if Ini <> nil then
  begin
    {Section: CONFIG}
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGPorcentaje, FCONFIGPorcentaje);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGPorcentajeP, FCONFIGPorcentajeP);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGPorcentajeD, FCONFIGPorcentajeD);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGDatox, FCONFIGDatox);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGModoAjuste, FCONFIGModoAjuste);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGTipoTag, FCONFIGTipoTag);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGMinimoTicket, FCONFIGMinimoTicket);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGBorrarLecturas, FCONFIGBorrarLecturas);
  end;
end;

procedure TIniAju.LoadFromFile(const FileName: string);
var
  Ini: TIniFile;
begin
  if FileExists(FileName) then
  begin
    Ini := TIniFile.Create(FileName);
    try
      LoadSettings(Ini);
    finally
      Ini.Free;
    end;
  end;
end;

procedure TIniAju.SaveToFile(const FileName: string);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(FileName);
  try
    SaveSettings(Ini);
  finally
    Ini.Free;
  end;
end;

initialization
  IniAju := TIniAju.Create;

finalization
  IniAju.Free;

end.


