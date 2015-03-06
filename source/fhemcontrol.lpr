program fhemcontrol;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, lazcontrols, uMain, Utils, laz_synapse, uFhemFrame, fNotify,
  fpGeneric, fpresence, uAddDevice
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.

