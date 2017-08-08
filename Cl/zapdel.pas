unit zapdel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, unit1, unit2, DB, IBCustomDataSet, IBQuery;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    Memo2: TMemo;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2ID_FROM_FIRM: TIntegerField;
    IBQuery2ID_ISP: TIntegerField;
    IBQuery2ID_FROM_USER: TIntegerField;
    IBQuery2STATUS: TIntegerField;
    IBQuery2SPEED: TIntegerField;
    IBQuery2DATE_GET: TDateTimeField;
    IBQuery2DATE_RAB: TDateTimeField;
    IBQuery2DATE_END: TDateTimeField;
    IBQuery2OCENKA: TIntegerField;
    IBQuery2OTHER: TIBStringField;
    IBQuery2TEMA: TIBStringField;
    IBQuery2IPLOCAL: TIBStringField;
    IBQuery2IPPC: TIBStringField;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses zapros1;

{$R *.dfm}

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin
 form7.Close;
 
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
var fl1:integer;
begin
 // «апрашиваем ZAPOZ перед сн€тием
 // ≈сли он еще не в работе - ставим начала работы = конец работы
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from ZAPROZ WHERE ID=:ID');
 IBQuery2.ParamByName('ID').AsInteger:=strtoint(label3.Caption);
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;
 if IBQuery2DATE_RAB.AsString='' then fl1:=1
                                 else fl1:=0;


 IBQuery1.SQL.Clear;
 if fl1=0 then
 IBQuery1.SQL.Append('UPDATE ZAPROZ SET DATE_END=:DATE_END, STATUS=:STATUS, OTHER=:OTHER WHERE ID=:ID')
 else
 IBQuery1.SQL.Append('UPDATE ZAPROZ SET DATE_END=:DATE_END, DATE_RAB=:DATE_END, STATUS=:STATUS, OTHER=:OTHER WHERE ID=:ID');
 IBQuery1.ParamByName('DATE_END').AsDateTime:=now;
 IBQuery1.ParamByName('STATUS').AsInteger:=4;
 IBQuery1.ParamByName('OTHER').AsString:=Memo2.Lines.Text;
 IBQuery1.ParamByName('ID').AsInteger:=strtoint(label3.Caption);
 IBQuery1.Close;
 IBQuery1.Open;


 unit2.DataModule2.IBTransaction1.CommitRetaining;
 form1.N7.Click;
 Form7.Close;
 Form6.Close;
 end;

end.
