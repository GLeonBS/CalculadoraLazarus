unit uCalcular;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn1: TButton;
    btn0: TButton;
    btnSoma: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnMulti: TButton;
    btnDiv: TButton;
    btnSub: TButton;
    btnResultado: TButton;
    btnClear: TButton;
    calculadora: TLabel;
    Label1: TLabel;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnMultiClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure edtCampoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    valor1, valor2, resultado: Integer;
    operador: String;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btn7Click(Sender: TObject);
begin
   Label1.Caption:=Label1.Caption+'7';
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
   Label1.Caption:=Label1.Caption+'8';
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  Label1.Caption:=Label1.Caption+'9';
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  valor1:= StrToInt(Label1.Caption);
  operador:= '/';
  Label1.Caption := ' ';
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Label1.Caption:=Label1.Caption+'1';
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
  Label1.Caption:=Label1.Caption+'0';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
      Label1.Caption:=Label1.Caption+'2';
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  Label1.Caption:=Label1.Caption+'3';
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
    Label1.Caption:=Label1.Caption+'4';
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
      Label1.Caption:=Label1.Caption+'5';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  Label1.Caption:=Label1.Caption+'6';
end;

procedure TForm1.btnMultiClick(Sender: TObject);
begin
  valor1:= StrToInt(Label1.Caption);
  operador:= '*';
  Label1.Caption := ' ';
end;

procedure TForm1.btnResultadoClick(Sender: TObject);
begin
  valor2:= StrToInt(Label1.Caption);
   case operador of
          '+': resultado:= valor1 + valor2;
          '-': resultado:= valor1 - valor2;
          '*': resultado:= valor1 * valor2;
          '/': resultado:= valor1 Div valor2;
          else
              writeln('Error');
end;
    Label1.Caption := IntToStr(resultado);
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  valor1:= StrToInt(Label1.Caption);
  operador:= '+';
  Label1.Caption := ' ';
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  valor1:= StrToInt(Label1.Caption);
  operador:= '-';
  Label1.Caption := ' ';
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  Label1.Caption := ' ';
end;

procedure TForm1.edtCampoChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

