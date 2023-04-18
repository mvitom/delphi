unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x0,y0,zB,R,G,B,zn:integer;
  sy,sx,z,y,z0,x:real;

implementation

{$R *.dfm}

procedure bod;
begin
  Form1.Image1.Canvas.Ellipse(Round(x*200)+x0-2,Round(y*200)+y0-2,Round(x*200)+x0+2,Round(y*200)+y0+2);
end;
procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
  ii,jj: Integer;
begin
  //for i := 0 to 50000 do
    begin
      for ii := 0 to 400 do
      for jj := 0 to 400 do
      begin

      ///x:=(random(401)-200)/200;
      //y:=(random(401)-200)/200;
      x:= (ii-200)/200;
      y:= (jj-200)/200;
      //z:=(x*x*x)-y+y*y;
      z:=x*x+sin(5*y)+cos(7*x*y);
      zB:=round(255-90*z) div 2;
      if zb <64 then
        begin
          R:=zB*2;
          G:= 0;
          B:= 0;
        end
      else
      if zB <127 then
        begin
          R:=zB*2;
          G:= (zB-64)*2;
          B:= 0;
        end
      else
        if zB<(127+64) then
          begin
            R:=255;
            G:= (zB-64)*2;
            B:= (zB-127)*2;
          end
      else
        begin
          R:=255;
          G:=255;
          B:=(zB-127-64)*2;
        end;


      Form1.Image1.Canvas.Pixels[Round(x*200)+x0,Round(y*200)+y0]:=RGB(R,G,B);
    end;
    Form1.Image1.Canvas.MoveTo(0,Form1.Image1.Height div 2); Form1.Image1.Canvas.LineTo(Form1.Image1.Width,Form1.Image1.Height div 2);
    Form1.Image1.Canvas.MoveTo(Form1.Image1.Height div 2,0); Form1.Image1.Canvas.LineTo(Form1.Image1.Height div 2,Form1.Image1.Width);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  x:=(random(401)-200)/200;
  y:=(random(401)-200)/200;
  Form1.Image1.Canvas.Pixels[Round(x*200)+x0,Round(y*200)+y0]:=RGB(R,G,B);
  bod;
  sx:=1;
  sy:=0;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  bod;
  //zigzag
  //Form1.Image1.Canvas.Pixels[Round(x*200)+x0,Round(y*200)+y0]:=RGB(R,G,B);
  if Form1.RadioButton1.Checked then
  begin
  z0:=x*x+sin(5*y)+cos(7*x*y);
  //z0:=x*x+y*y;
  x:=x+sx/200;
  y:=y+sy/200;
  //z:=x*x+y*y;
  z:=x*x+sin(5*y)+cos(7*x*y);
  if z>z0 then
    begin
      x:=x-sx/200;
      y:=y-sy/200;
      if sx<>0 then
      begin
        sx:=0;
        zn:=random(2);
        sy:=2*zn-1;
      end
      else
      begin
        sy:=0;
        zn:=random(2);
        sx:=2*zn-1;
      end;
    end;
  end;
  if Form1.RadioButton2.Checked then
  begin

  z0:=x*x+sin(5*y)+cos(7*x*y);
  x:=x+sx/200;
  y:=y+sy/200;
  z:=x*x+sin(5*y)+cos(7*x*y);
  if z>z0 then
    begin
      x:=x-sx/200;
      y:=y-sy/200;
      //prejel tak se vraci o krok zpet
      sx := (random(401)-200)/200;
      sy := (random(401)-200)/200;

    end;
  end;
  if Form1.RadioButton3.Checked then
  begin
  z0:=x*x+sin(5*y)+cos(7*x*y);
  x:=x+sx/200;
  y:=y+sy/200;
  z:=x*x+sin(5*y)+cos(7*x*y);
  //z:=((y*y)*sin(5*x)+cos(7*x*y));
  if z>z0 then
    begin
      //prejel tak se vraci o krok zpet
      x:=x-sx/200;
      y:=y-sy/200;
      if sx<>0 then
      begin
        sx:=0;
        zn:=random(2);
        sy:=2*zn-1;
      end
      else
      begin
        sy:=0;
        zn:=random(2);
        sx:=2*zn-1;
      end;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
  begin
  x0:=Form1.Image1.Width div 2;
  y0:=Form1.Image1.Height div 2;
  Form1.Image1.Canvas.Rectangle(0,0,Form1.Image1.Width,Form1.Image1.Height);
  Form1.Image1.Canvas.MoveTo(0,Form1.Image1.Height div 2);
  Form1.Image1.Canvas.LineTo(Form1.Image1.Width,Form1.Image1.Height div 2);
  Form1.Image1.Canvas.MoveTo(Form1.Image1.Height div 2,0);
  Form1.Image1.Canvas.LineTo(Form1.Image1.Height div 2,Form1.Image1.Width);
  end;

end.
