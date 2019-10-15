unit UnitController;

interface

uses
  Unit2, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

procedure ShowDllMainForm(p: string); stdcall;

implementation

procedure ShowDllMainForm(p: string); stdcall;
var
 frm: TForm;
begin
//  frm := TForm.Create(nil);
//  frm.ShowModal;
  Form2 := TForm2.Create(nil);
  Form2.Caption := p;
  Form2.ShowModal;
end;

end.
