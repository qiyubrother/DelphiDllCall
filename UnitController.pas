unit UnitController;

interface

uses
  Unit2, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

procedure ShowDllMainForm(p: string); stdcall;
procedure ChangeName(out pOut: pWideChar); stdcall;
function GetName:PWideChar; stdcall;

implementation

procedure ShowDllMainForm(p: string); stdcall;
begin
//  frm := TForm.Create(nil);
//  frm.ShowModal;
  Form2 := TForm2.Create(nil);
  Form2.Caption := p;
  Form2.Show;
end;

procedure ChangeName(out pOut: pWideChar); stdcall;
var
  sOut: PWideChar;
  BuffSize: Integer;
begin
  sOut := 'bing.com';
  BuffSize := SizeOf(WideChar)*(Length(sOut)+1);//+1 for null-terminator
  ShowMessage(IntToStr(SizeOf(WideChar)));
  ShowMessage(IntToStr((Length(sOut)+1)));
  GetMem(pOut, BuffSize);
  FillChar(pOut^, BuffSize, 0);
  ShowMessage(IntToStr(Length(sOut)));
  if Length(sOut) > 0 then
    Move(PChar(sOut)^, pOut^, BuffSize);
//  ShowMessage(pOut);
end;

function GetName:PWideChar; stdcall;
begin
  Result := 'Liuzhenhua, ÁõÕñ»ª';
end;

end.
