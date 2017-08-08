unit getop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit1, StdCtrls, CheckLst, zapros, unit2;

type
  TForm8 = class(TForm)
    ListBox1: TListBox;
    procedure FormActivate(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.FormActivate(Sender: TObject);
var i: integer;
begin
 ListBox1.Clear;
 for i:=0 to unit1.Form1.ComboBox10.Items.Count-1 do
  begin

    ListBox1.Items.Append(unit1.Form1.ComboBox10.Items.Strings[i]);
  end;
end;

procedure TForm8.ListBox1DblClick(Sender: TObject);
begin
 // Вылавливаем идентификатор юзера
// unit1.adm[ListBox1.ItemIndex+1] - Идентификатор оператора

// Оформляем передачу
             // Заносим данные об исполнителе в БД и меняем ее статус
         zapros.Form7.IBQuery4.SQL.Clear;
         zapros.Form7.IBQuery4.SQL.Append('UPDATE ZAPROZ SET ID_ISP=:ID_ISP, STATUS=:STATUS, DATE_RAB=:DATE_RAB WHERE ID=:ID');
         zapros.Form7.IBQuery4.ParamByName('ID_ISP').AsInteger:=unit1.adm[ListBox1.ItemIndex+1];
         zapros.Form7.IBQuery4.ParamByName('STATUS').AsInteger:=2;
         zapros.Form7.IBQuery4.ParamByName('DATE_RAB').AsDateTime:=now;
         zapros.Form7.IBQuery4.ParamByName('ID').AsInteger:=strtoint(zapros.Form7.label1.Caption);
         zapros.Form7.IBQuery4.Close;
         zapros.Form7.IBQuery4.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
 // Заносим в лог-таблицу

        zapros.Form7.IBQuery3.SQL.Clear;
         zapros.Form7.IBQuery3.SQL.Append('select * from USERS WHERE ID=:ID');
         zapros.Form7.IBQuery3.ParamByName('ID').AsInteger:=unit1.ID_USER;
         zapros.Form7.IBQuery3.Close;
         zapros.Form7.IBQuery3.Open;
         zapros.Form7.IBQuery3.First;

         zapros.Form7.IBQuery9.SQL.Clear;
         zapros.Form7.IBQuery9.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, ID_SHAP, ID_USER, TEXT, FIO) VALUES (:ACT_TYPE, :DATE_GET, :ID_SHAP, :ID_USER, :TEXT, :FIO)');
         zapros.Form7.IBQuery9.ParamByName('ACT_TYPE').AsString:='Передал заявку';
         zapros.Form7.IBQuery9.ParamByName('DATE_GET').AsDateTime:=now;
         zapros.Form7.IBQuery9.ParamByName('ID_SHAP').AsInteger:=strtoint(zapros.Form7.label1.Caption);
         zapros.Form7.IBQuery9.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
         zapros.Form7.IBQuery9.ParamByName('TEXT').AsString:='Оператор передал заявку оператору '+inttostr(unit1.adm[ListBox1.ItemIndex+1])+' ФИО:'+ListBox1.Items.Strings[ListBox1.ItemIndex];
         zapros.Form7.IBQuery9.ParamByName('FIO').AsString:=zapros.Form7.IBQuery3FAMILY.AsString+' '+zapros.Form7.IBQuery3NAME.AsString+' '+zapros.Form7.IBQuery3SECOND_NAME.AsString;
         zapros.Form7.IBQuery9.Close;
         zapros.Form7.IBQuery9.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
         // Обновляем выдачу на странице заявки
         Form7.Close;
//         FormActivate(SElF);
         Form8.Close;

end;

end.
