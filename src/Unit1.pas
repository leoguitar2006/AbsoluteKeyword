unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    ColorBox1: TColorBox;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure SendTextToLabel(Sender: TObject);
    procedure SendTextToLabelWithoutAbsolut(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  SelectedColor: TColor;
  BytesOfSelectedColor: Array [0..3] of Byte absolute SelectedColor;
  NewColor: TColor;
  BytesOfNewColor: Array [0..3] of Byte absolute NewColor;
begin
  SelectedColor := ColorBox1.Selected;

  BytesOfNewColor[0] := BytesOfSelectedColor[Random(3)];
  BytesOfNewColor[1] := BytesOfSelectedColor[Random(3)];
  BytesOfNewColor[2] := BytesOfSelectedColor[Random(3)];
  BytesOfNewColor[3] := 0;  // Alpha Byte (useless on TColor)

  Panel1.Color := NewColor;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.OnChange := SendTextToLabel;
  Memo1.OnChange := SendTextToLabel;
end;

procedure TForm1.SendTextToLabel(Sender: TObject);
var
  MyEdit: TEdit absolute Sender;
  MyMemo: TMemo absolute Sender;
  CursorPos: Integer;
begin
  Label1.Caption := EmptyStr;
  if (Sender is TEdit) then
  begin
    CursorPos := MyEdit.SelStart;
    MyEdit.Text := AnsiUpperCase(MyEdit.Text);
    MyEdit.SelStart := CursorPos;
    Label1.Caption := MyEdit.Text;
  end
  else if (Sender is TMemo) then
  begin
    CursorPos := MyMemo.SelStart;
    MyMemo.Lines.Text := AnsiUpperCase(MyMemo.Lines.Text);
    MyMemo.SelStart := CursorPos;
    Label1.Caption := MyMemo.Lines.Text;
  end;
end;

procedure TForm1.SendTextToLabelWithoutAbsolut(Sender: TObject);
var
  CursorPos: Integer;
begin
  Label1.Caption := EmptyStr;
  if (Sender is TEdit) then
  begin
    CursorPos := (Sender As TEdit).SelStart;
    (Sender As TEdit).Text := AnsiUpperCase((Sender As TEdit).Text);
    (Sender As TEdit).SelStart := CursorPos;
    Label1.Caption := (Sender As TEdit).Text;
  end
  else if (Sender is TMemo) then
  begin
    CursorPos := (Sender As TMemo).SelStart;
    (Sender As TMemo).Lines.Text := AnsiUpperCase((Sender As TMemo).Lines.Text);
    (Sender As TMemo).SelStart := CursorPos;
    Label1.Caption := (Sender As TMemo).Lines.Text;
  end;
end;

end.
