unit SRC_1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types,ComObj, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation,SpeechLib_TLB, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  xel : Variant;
begin
  xel:= CreateOleObject('SAPI.SpVoice');
  xel.Speak('Je me nomme Luc',SVSFlagsAsync);
  xel := UnAssigned ;
end;

end.
