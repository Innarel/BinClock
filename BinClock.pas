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
    ToggleBox13: TToggleBox;
    ToggleBox14: TToggleBox;
    ToggleBox15: TToggleBox;
    ToggleBox16: TToggleBox;
    ToggleBox17: TToggleBox;
    ToggleBox18: TToggleBox;
    ToggleBox19: TToggleBox;
    ToggleBox2: TToggleBox;
    ToggleBox20: TToggleBox;
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
  hstr, minstr, secstr: string;
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

  // Processa Segundo 1

  if segundo < 9 then
    secstr := '0' + inttostr(segundo) else
    secstr := inttostr(segundo);

  secstr:=inttobin(strtoint(secstr[1]));

  if length(secstr) < 4 then
  repeat
    secstr := '0' + secstr;
  until length(secstr) = 4;

  if secstr[1] = '1' then
    ToggleBox13.Checked:=true else
    ToggleBox13.Checked:=false;
  if secstr[2] = '1' then
    ToggleBox14.Checked:=true else
    ToggleBox14.Checked:=false;
  if secstr[3] = '1' then
    ToggleBox15.Checked:=true else
    ToggleBox15.Checked:=false;
  if secstr[4] = '1' then
    ToggleBox16.Checked:=true else
    ToggleBox16.Checked:=false;

  // Processa Segundo 2

  if segundo < 9 then
    secstr := '0' + inttostr(segundo) else
    secstr := inttostr(segundo);

  secstr:=inttobin(strtoint(secstr[2]));

  if length(secstr) < 4 then
  repeat
    secstr := '0' + secstr;
  until length(secstr) = 4;

  if secstr[1] = '1' then
    ToggleBox17.Checked:=true else
    ToggleBox17.Checked:=false;
  if secstr[2] = '1' then
    ToggleBox18.Checked:=true else
    ToggleBox18.Checked:=false;
  if secstr[3] = '1' then
    ToggleBox19.Checked:=true else
    ToggleBox19.Checked:=false;
  if secstr[4] = '1' then
    ToggleBox20.Checked:=true else
    ToggleBox20.Checked:=false;

end;

end.
