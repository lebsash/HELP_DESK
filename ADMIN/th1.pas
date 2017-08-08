unit th1;
 // Поток вычисления строки для поиска
 // IBQuery14 содержит тень 1

interface

uses
  Classes, unit2, Windows, Messages, SysUtils, DB, IB;
type
  TSimple = class(TThread)
  procedure UpdateNUM;
  procedure UpdateVID;
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;


implementation
 uses unit1;
 var yyy: integer;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TSimpleThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TSimpleThread }
procedure TSimple.UpdateNUM;
begin

   if strtoint(unit1.Form1.Label53.Caption)<2 then unit1.Form1.Label53.Caption:=inttostr(strtoint(unit1.Form1.Label53.Caption)+1)
                                       else unit1.Form1.Label53.Caption:='0';

end;

procedure TSimple.UpdateVID;
begin


end;

procedure TSimple.Execute;
 var sql:string;
    id_f, l1, speed, status,yyy:integer;
    bm1:string;
begin

   if   (unit2.FLAG_DB_CONNECT=1)and(unit1.Form1.Active)and(unit1.Form1.Label53.Caption='0') then begin


   with Unit1.Form1 do
  begin
 try
   // Вычисляем строку





   //IBQuery14.DisableControls;
   l1:=1; // Флак для учета AND в запросах
   IBQuery14.SQL.Clear;
   IBQuery14.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox1.Text<>'Не имеет значения')or(ComboBox2.Text<>'Не имеет значения')or(ComboBox3.Text<>'Не имеет значения')or(length(Edit1.text)>0)or(CheckBox1.Checked))
   then IBQuery14.SQL.Append(' WHERE');
  if ComboBox1.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox1.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery14.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox3.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery14.SQL.Append(' AND');
      IBQuery14.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox3.Text='Высокая срочность' then speed:=1;
      if ComboBox3.Text='Средняя срочность' then speed:=2;
      if ComboBox3.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox2.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery14.SQL.Append(' AND');
      IBQuery14.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox2.Text='Заявка не обработана' then status:=1;
     if ComboBox2.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox2.Text='Заявка выполнена' then status:=3;
     if ComboBox2.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox2.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox1.Checked) then
     begin
       if l1=2 then IBQuery14.SQL.Append(' AND');
       IBQuery14.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<=:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit1.Text)>0) then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery14.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

    if checkBox4.Checked then IBQuery14.SQL.Append(' order by ZAPROZ.SPEED')
                         else IBQuery14.SQL.Append(' order by ZAPROZ.ID');



  // Заполняем значения для запроса
   if ComboBox1.Text<>'Не имеет значения' then begin

                                                  IBQuery14.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
                                               end;
   if ComboBox2.Text<>'Не имеет значения' then begin

                                                 IBQuery14.ParamByName('STATUS').AsInteger:=status;
                                               end;
   if ComboBox3.Text<>'Не имеет значения' then begin

                                                 IBQuery14.ParamByName('SPEED').AsInteger:=speed;
                                               end;
   if (CheckBox1.Checked) then
     begin
      IBQuery14.ParamByName('DATE_ONE').AsDate:=DateTimePicker1.Date;
      IBQuery14.ParamByName('DATE_DVA').AsDate:=DateTimePicker2.Date;
     end;
   if (Length(Edit1.Text)>0) then begin

                                      IBQuery14.ParamByName('ID').AsInteger:=strtoint(Edit1.Text);

                                  end;



   //IBQuery14.DisableControls;
   IBQuery14.Close;
   IBQuery14.Open;
  // IBQuery14.EnableControls;
   //IBQuery14.FieldCount;
   {
   IBQuery14.First;
   yyy:=0;
   //unit1.form1.IBQuery14.FetchAll;
   While not IBQuery14.Eof do
   begin
   yyy:=yyy+1;
   IBQuery14.Next;
   end;
    }

    //Synchronize (UpdateVID);



  finally
    Synchronize (UpdateNUM);
  end;

  end; // with Unit1.Form1 do

 end; // if   (unit2.FLAG_DB_CONNECT=1)and(unit1.Form1.Active) then begin
end;

end.

