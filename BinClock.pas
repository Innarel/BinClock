unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Timer1: TTimer;
    ToggleBox1: TToggleBox;
    ToggleBox10: TToggleBox;
    ToggleBox11: TToggleBox;
    ToggleBox12: TToggleBox;
    ToggleBox2: TToggleBox;
    ToggleBox3: TToggleBox;
    ToggleBox4: TToggleBox;
    ToggleBox5: TToggleBox;
    ToggleBox6: TToggleBox;
    ToggleBox7: TToggleBox;
    ToggleBox8: TToggleBox;
    ToggleBox9: TToggleBox;
    procedure Timer1Timer(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
    function IntToBin(num: integer): string;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.IntToBin(num: integer): string;
var
  binario: string;
begin
  while num > 0 do
  begin
    if ( num and 1 ) = 1 then
    binario:='1'+binario
  else
    binario:='0'+binario;
    num:=num shr 1;
  end;
  result := binario;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  hora, minuto, segundo, mili: word;
  i: integer;
  hstr, minstr: string;
begin
  DecodeTime(time, hora, minuto, segundo, mili);

  // Processa Hora

  if hora <= 12 then
    hstr:=inttobin(hora) else
    hstr:=inttobin(hora-12);

  if length(hstr) < 4 then
  repeat
    hstr := '0' + hstr;
  until length(hstr) = 4;

  if hstr[1] = '1' then
    ToggleBox1.Checked:=true else
    ToggleBox1.Checked:=false;
  if hstr[2] = '1' then
    ToggleBox2.Checked:=true else
    ToggleBox2.Checked:=false;
  if hstr[3] = '1' then
    ToggleBox3.Checked:=true else
    ToggleBox3.Checked:=false;
  if hstr[4] = '1' then
    ToggleBox4.Checked:=true else
    ToggleBox4.Checked:=false;

  // Processa Minuto 1

  if minuto <= 9 then
    minstr := '0' + inttostr(minuto) else
    minstr := inttostr(minuto);

  minstr:=inttobin(strtoint(minstr[1]));

  if length(minstr) < 4 then
  repeat
    minstr := '0' + minstr;
  until length(minstr) = 4;

  if minstr[1] = '1' then
    ToggleBox5.Checked:=true else
    ToggleBox5.Checked:=false;
  if minstr[2] = '1' then
    ToggleBox6.Checked:=true else
    ToggleBox6.Checked:=false;
  if minstr[3] = '1' then
    ToggleBox7.Checked:=true else
    ToggleBox7.Checked:=false;
  if minstr[4] = '1' then
    ToggleBox8.Checked:=true else
    ToggleBox8.Checked:=false;

  // Processa Minuto 2

  if minuto < 9 then
    minstr := '0' + inttostr(minuto) else
    minstr := inttostr(minuto);

  minstr:=inttobin(strtoint(minstr[2]));

  if length(minstr) < 4 then
  repeat
    minstr := '0' + minstr;
  until length(minstr) = 4;

  if minstr[1] = '1' then
    ToggleBox9.Checked:=true else
    ToggleBox9.Checked:=false;
  if minstr[2] = '1' then
    ToggleBox10.Checked:=true else
    ToggleBox10.Checked:=false;
  if minstr[3] = '1' then
    ToggleBox11.Checked:=true else
    ToggleBox11.Checked:=false;
  if minstr[4] = '1' then
    ToggleBox12.Checked:=true else
    ToggleBox12.Checked:=false;

end;

end.
