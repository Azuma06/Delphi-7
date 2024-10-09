unit Unit1;

interface

uses
  SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms, 
  QDialogs, QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    img1: TImage;
    img2: TImage;
    img3: TImage;
    btn1: TButton;
    btn2: TButton;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    procedure img1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    vote1, vote2, vote3: Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.img1Click(Sender: TObject);

begin
        inc(vote1);
        pnl1.Caption  := IntToStr(vote1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
        vote1 := 0;
        vote2 := 0;
        vote3 := 0;
end;

procedure TForm1.img2Click(Sender: TObject);
begin
        inc(vote2);
        pnl2.Caption  := IntToStr(vote2);
end;

procedure TForm1.img3Click(Sender: TObject);
begin
        inc(vote3);
        pnl3.Caption  := IntToStr(vote3);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
        vote1 := 0;
        vote2 := 0;
        vote3 := 0;

        pnl1.Caption  := IntToStr(vote1);
        pnl2.Caption  := IntToStr(vote2);
        pnl3.Caption  := IntToStr(vote3);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
        Application.Terminate;  
end;

end.
