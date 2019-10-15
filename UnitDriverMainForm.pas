unit UnitDriverMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCall: TButton;
    procedure btnCallClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
procedure ShowDllMainForm(p: string); stdcall;
  external 'DelphiDll.dll';

implementation

{$R *.dfm}

procedure TForm1.btnCallClick(Sender: TObject);
begin
  ShowDllMainForm('DLL µ÷ÓÃ');
end;

end.
