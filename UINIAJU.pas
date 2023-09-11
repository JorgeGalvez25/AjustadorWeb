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
  csIniCONFIGMinutosRetardo = 'MinutosRetardo';
  csIniCONFIGRestringeReportes = 'RestringeReportes';
  csIniCONFIGDiasReportes = 'DiasReportes';
  csIniCONFIGPassword = 'Password';
  csIniCONFIGPasswordImp = 'PasswordImp';
  csIniCONFIGImprimirReportes = 'ImprimirReportes';
  csIniCONFIGAjusteLitros = 'AjusteLitros';
  csIniCONFIGMinimoLitros = 'MinimoLitros';
  csIniCONFIGLitrosAjustar = 'LitrosAjustar';
  csIniCONFIGLitrosAjustarP = 'LitrosAjustarP';
  csIniCONFIGLitrosAjustarD = 'LitrosAjustarD';
  csIniCONFIGArraste = 'Arrastre';
  csIniCONFIGPorcPemexPositivo = 'PorcPemexPositivo';
  csIniCONFIGFusionTanques = 'FusionTanques';
  csIniCONFIGSoloEntradas = 'SoloEntradas';
  csIniCONFIGDe6a6 = 'De6a6';
  csIniCONFIGRegistraTickDif = 'RegistraTickDif';
  csIniCONFIGDescartarCombustible= 'DescartarCombustible';
  csIniCONFIGConexionOG = 'ConexionOG';
  csIniCONFIGLicencia = 'Licencia';
  csIniCONFIGFechaVence = 'FechaVence';

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
    FCONFIGMinutosRetardo: string;
    FCONFIGRestringeReportes: string;
    FCONFIGDiasReportes: string;
    FCONFIGPassword: string;
    FCONFIGPasswordImp: string;
    FCONFIGImprimirReportes: string;
    FCONFIGAjusteLitros: string;
    FCONFIGMinimoLitros: string;
    FCONFIGLitrosAjustar: string;
    FCONFIGLitrosAjustarP: string;
    FCONFIGLitrosAjustarD: string;
    FCONFIGArrastre: string;
    FCONFIGPorcPemexPositivo: string;
    FCONFIGFusionTanques: string;
    FCONFIGSoloEntradas: string;
    FCONFIGDe6a6: string;
    FCONFIGRegistraTickDif: string;
    FCONFIGDescartarCombustible: string;
    FCONFIGConexionOG: string;
    FCONFIGLicencia: String;
    FCONFIGFechaVence: String;
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
    property CONFIGMinutosRetardo: string read FCONFIGMinutosRetardo write FCONFIGMinutosRetardo;
    property CONFIGRestringeReportes: string read FCONFIGRestringeReportes write FCONFIGRestringeReportes;
    property CONFIGDiasReportes: string read FCONFIGDiasReportes write FCONFIGDiasReportes;
    property CONFIGPassword: string read FCONFIGPassword write FCONFIGPassword;
    property CONFIGPasswordImp: string read FCONFIGPasswordImp write FCONFIGPasswordImp;
    property CONFIGImprimirReportes: string read FCONFIGImprimirReportes write FCONFIGImprimirReportes;
    property CONFIGAjusteLitros: string read FCONFIGAjusteLitros write FCONFIGAjusteLitros;
    property CONFIGMinimoLitros: string read FCONFIGMinimoLitros write FCONFIGMinimoLitros;
    property CONFIGLitrosAjustar: string read FCONFIGLitrosAjustar write FCONFIGLitrosAjustar;
    property CONFIGLitrosAjustarP: string read FCONFIGLitrosAjustarP write FCONFIGLitrosAjustarP;
    property CONFIGLitrosAjustarD: string read FCONFIGLitrosAjustarD write FCONFIGLitrosAjustarD;
    property CONFIGArrastre: string read FCONFIGArrastre write FCONFIGArrastre;
    property CONFIGPorcPemexPositivo: string read FCONFIGPorcPemexPositivo write FCONFIGPorcPemexPositivo;
    property CONFIGFusionTanques: string read FCONFIGFusionTanques write FCONFIGFusionTanques;
    property CONFIGSoloEntradas: string read FCONFIGSoloEntradas write FCONFIGSoloEntradas;
    property CONFIGDe6a6: string read FCONFIGDe6a6 write FCONFIGDe6a6;
    property CONFIGRegistraTickDif: string read FCONFIGRegistraTickDif write FCONFIGRegistraTickDif;
    property CONFIGDescartarCombustible: string read FCONFIGDescartarCombustible write FCONFIGDescartarCombustible;
    property CONFIGConexionOG: string read FCONFIGConexionOG write FCONFIGConexionOG;
    property CONFIGLicencia: string read FCONFIGLicencia write FCONFIGLicencia;
    property CONFIGFechaVence: string read FCONFIGFechaVence write FCONFIGFechaVence;
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
    FCONFIGMinutosRetardo := Ini.ReadString(csIniCONFIGSection, csIniCONFIGMinutosRetardo, '15');
    FCONFIGRestringeReportes := Ini.ReadString(csIniCONFIGSection, csIniCONFIGRestringeReportes, 'No');
    FCONFIGDiasReportes := Ini.ReadString(csIniCONFIGSection, csIniCONFIGDiasReportes, '100');
    FCONFIGPassword := Ini.ReadString(csIniCONFIGSection, csIniCONFIGPassword, '5855');
    FCONFIGPasswordImp := Ini.ReadString(csIniCONFIGSection, csIniCONFIGPasswordImp, '');
    FCONFIGImprimirReportes := Ini.ReadString(csIniCONFIGSection, csIniCONFIGImprimirReportes, 'No');
    FCONFIGAjusteLitros := Ini.ReadString(csIniCONFIGSection, csIniCONFIGAjusteLitros, 'No');
    FCONFIGMinimoLitros := Ini.ReadString(csIniCONFIGSection, csIniCONFIGMinimoLitros, '0');
    FCONFIGLitrosAjustar := Ini.ReadString(csIniCONFIGSection, csIniCONFIGLitrosAjustar, '0');
    FCONFIGLitrosAjustarP := Ini.ReadString(csIniCONFIGSection, csIniCONFIGLitrosAjustarP, '0');
    FCONFIGLitrosAjustarD := Ini.ReadString(csIniCONFIGSection, csIniCONFIGLitrosAjustarD, '0');
    FCONFIGArrastre := Ini.ReadString(csIniCONFIGSection, csIniCONFIGArraste, 'N');
    FCONFIGPorcPemexPositivo := Ini.ReadString(csIniCONFIGSection, csIniCONFIGPorcPemexPositivo, 'No');
    FCONFIGFusionTanques := Ini.ReadString(csIniCONFIGSection, csIniCONFIGFusionTanques, 'No');
    FCONFIGSoloEntradas := Ini.ReadString(csIniCONFIGSection, csIniCONFIGSoloEntradas, 'No');
    FCONFIGDe6a6 := Ini.ReadString(csIniCONFIGSection, csIniCONFIGDe6a6, 'No');
    FCONFIGRegistraTickDif := Ini.ReadString(csIniCONFIGSection, csIniCONFIGRegistraTickDif, 'No');
    FCONFIGDescartarCombustible := Ini.ReadString(csIniCONFIGSection, csIniCONFIGDescartarCombustible, '0');
    FCONFIGConexionOG := Ini.ReadString(csIniCONFIGSection, csIniCONFIGConexionOG, '');
    FCONFIGLicencia := Ini.ReadString(csIniCONFIGSection, csIniCONFIGLicencia, '');
    FCONFIGFechaVence := Ini.ReadString(csIniCONFIGSection, csIniCONFIGFechaVence, '');
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
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGMinutosRetardo, FCONFIGMinutosRetardo);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGRestringeReportes, FCONFIGRestringeReportes);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGDiasReportes, FCONFIGDiasReportes);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGPassword, FCONFIGPassword);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGPasswordImp, FCONFIGPasswordImp);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGImprimirReportes, FCONFIGImprimirReportes);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGAjusteLitros, FCONFIGAjusteLitros);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGMinimoLitros, FCONFIGMinimoLitros);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGLitrosAjustar,FCONFIGLitrosAjustar);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGLitrosAjustarP,FCONFIGLitrosAjustarP);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGLitrosAjustarD,FCONFIGLitrosAjustarD);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGArraste,FCONFIGArrastre);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGPorcPemexPositivo, FCONFIGPorcPemexPositivo);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGFusionTanques, FCONFIGFusionTanques);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGSoloEntradas, FCONFIGSoloEntradas);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGDe6a6, FCONFIGDe6a6);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGRegistraTickDif, FCONFIGRegistraTickDif);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGDescartarCombustible, FCONFIGDescartarCombustible);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGConexionOG, FCONFIGConexionOG);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGLicencia, FCONFIGLicencia);
    Ini.WriteString(csIniCONFIGSection, csIniCONFIGFechaVence, FCONFIGFechaVence);
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

