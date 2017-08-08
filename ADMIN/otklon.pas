unit otklon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, unit2,zapros, DB, IBCustomDataSet, IBQuery, unit1;

type
  TForm9 = class(TForm)
    StaticText1: TStaticText;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    IBQuery1: TIBQuery;
    Label1: TLabel;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
Form9.Close;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
 // Производим отклонение заявки
 if length(label1.caption)>0 then
 begin
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('UPDATE ZAPROZ SET DATE_END=:DATE_END, STATUS=:STATUS WHERE ID=:ID');
 IBQuery1.ParamByName('DATE_END').AsDateTime:=now;
 IBQuery1.ParamByName('STATUS').AsInteger:=5;
 IBQuery1.ParamByName('ID').AsInteger:=strtoint(label1.caption);
 IBQuery1.Close;
 IBQuery1.Open;

 // Вносим последний комментарий
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('INSERT INTO ZAPROS_TELO (DATE_GET, ID_ADMIN, ID_FROM, ID_SHAPKA, STATUS, TEXT) VALUES (:DATE_GET, :ID_ADMIN, :ID_FROM, :ID_SHAPKA, :STATUS, :TEXT)');
 IBQuery2.ParamByName('DATE_GET').AsDateTime:=now;
 IBQuery2.ParamByName('ID_ADMIN').AsInteger:=unit1.ID_USER;
 IBQuery2.ParamByName('ID_FROM').AsInteger:=unit1.ID_USER;
 IBQuery2.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label1.Caption);
 IBQuery2.ParamByName('STATUS').AsInteger:=1;
 IBQuery2.ParamByName('TEXT').AsString:='Запрос снят администратором. Причина: '+memo1.Lines.Text;
 IBQuery2.Close;
 IBQuery2.Open;

 //Вносим запись в лог
 IBQuery3.SQL.Clear;
 IBQuery3.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_SHAP, ID_USER, TEXT) VALUES (:ACT_TYPE, :DATE_GET, :FIO, :ID_SHAP, :ID_USER, :TEXT)');
 IBQuery3.ParamByName('ACT_TYPE').AsString:='Отклонение заявки';
 IBQuery3.ParamByName('DATE_GET').AsDateTime:=now;
 IBQuery3.ParamByName('FIO').AsString:=Label2.Caption;
 IBQuery3.ParamByName('ID_SHAP').AsInteger:=strtoint(label1.Caption);
 IBQuery3.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
 IBQuery3.ParamByName('TEXT').AsString:='Пользователь снял заявку по причине:'+Memo1.Lines.Text;
 IBQuery3.Close;
 IBQuery3.Open;

 unit2.DataModule2.IBTransaction1.CommitRetaining;

 //Обновляем выдачу
  zapros.Form7.FormActivate(SElF);
  
 form9.Close;

 end;

end;

end.
