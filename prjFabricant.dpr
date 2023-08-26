program prjFabricant;

uses
  Vcl.Forms,
  UnitMake in 'UnitMake.pas' {frm1},
  UnitMake2 in 'UnitMake2.pas' {Form1},
  UnitCreateTable in 'UnitCreateTable.pas' {frmCreateTable1},
  UnitAddString in 'UnitAddString.pas',
  UnitNotForm1 in 'UnitNotForm1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm1, frm1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCreateTable1, frmCreateTable1);
  Application.Run;
end.
