unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, StdCtrls, unit2, unit1, DB, IBCustomDataSet, IBQuery, loglist,
  ComCtrls, ExtCtrls, unit3;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    SpeedButton1: TSpeedButton;
    IBQuery1: TIBQuery;
    IBQuery1PASS: TIBStringField;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery1SECOND_NAME: TIBStringField;
    IBQuery1FAMILY: TIBStringField;
    IBQuery1ROLE: TIBStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery2ADRESS: TIBStringField;
    IBQuery2PHONE: TIBStringField;
    IBQuery2OTHER: TIBStringField;
    IBQuery2UIN1: TIntegerField;
    IBQuery2ACT: TIntegerField;
    Label6: TLabel;
    IBQuery3: TIBQuery;
    IBQuery3ID: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3ADRESS: TIBStringField;
    IBQuery3PHONE: TIBStringField;
    IBQuery3OTHER: TIBStringField;
    IBQuery3UIN1: TIntegerField;
    IBQuery3ACT: TIntegerField;
    IBQuery4: TIBQuery;
    IBQuery4ID: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4SECOND_NAME: TIBStringField;
    IBQuery4FAMILY: TIBStringField;
    IBQuery4PASS: TIBStringField;
    IBQuery4ROLE: TIBStringField;
    IBQuery4DOLGNOST: TIBStringField;
    IBQuery4OTDEL: TIBStringField;
    IBQuery4ID_FIRM: TIntegerField;
    StatusBar1: TStatusBar;
    IBQuery5: TIBQuery;
    STARTFB: TTimer;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STARTFBTimer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
    Thread1: TSimpleThread;
  end;

var
  Form3: TForm3;
  NUM_LOGIN:integer;
  ia:array[1..500] of Integer;
  Flag_WORK_thrd:integer;
implementation

uses opt2;

{$R *.dfm}

// CODING - DECODING
procedure TForm3.Coding(F:string;fr: integer; fk1:string; var newstr:string);
  var
   s: string;
   i, j, jj1, jj2:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key1, key2, fk2:string;
 begin
      key:=$aa;
    { Шифруем строку }
   s:='';
   s:=f;
   key1:=fk1;
  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key);
    s[i]:=chr(m);
  end;

  if fr<10 then fr:=fr+251;
  key1:=inttostr(fr);
  j:=length (key1);
  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key1[j]);
    j:=j-1;
    if j<1 then j:=length (key1);
    s[i]:=chr(m);
  end;


  newstr:=s;
end;


 procedure TForm3.decoding(F:string;fr: integer; fk1:string; var newstr:string);
 var
    s: string;
   i, j:integer;
   m,key:byte;
   k:char;
   kk, kk1, pp1, pp2, key2, key1:string;

 begin
     key:=$aa;
     j:=0;
   s:='';
     s:=f;
  key1:=fk1;

  if fr<10 then fr:=fr+251;
  key1:=inttostr(fr);
  j:=length (key1);
  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key1[j]);
    j:=j-1;
    if j<1 then j:=length (key1);
    s[i]:=chr(m);
  end;


  for i:=1 to Length(s) do
  begin
    k:=s[i];
    m:=ord(k) xor ord(key);
    s[i]:=chr(m);
  end;

     newstr:=s;
end;

// CODING - DECODING


procedure TForm3.SpeedButton1Click(Sender: TObject);
var name, family, s, p_get,new_pass, newrole, newrole1:string;
    i,fl, num_ID, kl:integer;
    INDEX_OF_FIRM:integer;
begin
   INDEX_OF_FIRM:=ia[ComboBox1.ItemIndex+1];
//   label6.caption:=inttostr(ComboBox1.ItemIndex);

   s:=Edit1.Text;
   fl:=1;
   name:='';
   family:='';
   for i:=1 to length(s) do
    begin
     if s[i]='_' then fl:=fl+1
                 else begin
                        if fl=2 then name:=name+s[i];
                        if fl=1 then family:=family+s[i];
                      end;

    end;
    if ((family='admin')and(fl=1)) then name:=family;

   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Append('select * from USERS WHERE NAME=:NAME and FAMILY=:FAMILY and ID_FIRM=:ID_FIRM');
   IBQuery1.ParamByName('NAME').AsString:=name;
   IBQuery1.ParamByName('FAMILY').AsString:=family;
   IBQuery1.ParamByName('ID_FIRM').AsInteger:=INDEX_OF_FIRM;
   IBQuery1.Close;
   IBQuery1.Open;
   IBQuery1.First;

   if not IBQuery1.Eof then
   begin

   p_get:=IBQuery1PASS.AsString;
   num_ID:=IBQuery1ID.AsInteger;
   // Кодируем имеющийся пароль

   Coding(MaskEdit1.Text,num_ID, name, new_pass);
   Decoding(IBQuery1ROLE.AsString,num_ID, IBQuery1NAME.AsString, newrole1);

   if ((p_get=new_pass)and(newrole1='Администратор')) then begin
                            // начинаем процедуру входа
                            NUM_LOGIN:=0;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery1ROLE.AsString;
                            // Если декодируем роль пользователя
                             


                            unit1.ID_USER:=IBQuery1ID.AsInteger;
                            unit1.Form1.StatusBar1.Panels[0].Text:='Пользователь:'+Family+' '+NAME;
                            // Осуществляем первоначальное заполнение данных
                              form1.ComboBox2.Clear;
                              form1.ComboBox2.Items.Append('Заявка не обработана');
                              form1.ComboBox2.Items.Append('Заявка в процессе обработки');
                              form1.ComboBox2.Items.Append('Заявка снята Администратором');
                              form1.ComboBox2.Items.Append('Заявка снята Пользователем');
                              form1.ComboBox2.Items.Append('Заявка выполнена');
                              form1.ComboBox2.Items.Append('Не имеет значения');
                              form1.ComboBox2.Text:='Заявка не обработана';

                              form1.ComboBox3.Clear;
                              form1.ComboBox3.Items.Append('Высокая срочность');
                              form1.ComboBox3.Items.Append('Средняя срочность');
                              form1.ComboBox3.Items.Append('Низкая срочность');
                              form1.ComboBox3.Items.Append('Не имеет значения');
                              form1.ComboBox3.Text:='Не имеет значения';





                              form1.ComboBox5.Clear;
                              form1.ComboBox5.Items.Append('Заявка не обработана');
                              form1.ComboBox5.Items.Append('Заявка в процессе обработки');
                              form1.ComboBox5.Items.Append('Заявка снята Администратором');
                              form1.ComboBox5.Items.Append('Заявка снята Пользователем');
                              form1.ComboBox5.Items.Append('Заявка выполнена');
                              form1.ComboBox5.Items.Append('Не имеет значения');
                              form1.ComboBox5.Text:='Заявка в процессе обработки';

                              form1.ComboBox6.Clear;
                              form1.ComboBox6.Items.Append('Высокая срочность');
                              form1.ComboBox6.Items.Append('Средняя срочность');
                              form1.ComboBox6.Items.Append('Низкая срочность');
                              form1.ComboBox6.Items.Append('Не имеет значения');
                              form1.ComboBox6.Text:='Не имеет значения';


                              form1.ComboBox8.Clear;
                              form1.ComboBox8.Items.Append('Заявка не обработана');
                              form1.ComboBox8.Items.Append('Заявка в процессе обработки');
                              form1.ComboBox8.Items.Append('Заявка снята Администратором');
                              form1.ComboBox8.Items.Append('Заявка снята Пользователем');
                              form1.ComboBox8.Items.Append('Заявка выполнена');
                              form1.ComboBox8.Items.Append('Не имеет значения');
                              form1.ComboBox8.Text:='Заявка в процессе обработки';

                              form1.ComboBox9.Clear;
                              form1.ComboBox9.Items.Append('Высокая срочность');
                              form1.ComboBox9.Items.Append('Средняя срочность');
                              form1.ComboBox9.Items.Append('Низкая срочность');
                              form1.ComboBox9.Items.Append('Не имеет значения');
                              form1.ComboBox9.Text:='Не имеет значения';






                              form1.ComboBox1.Clear;
                              form1.ComboBox4.Clear;
                              form1.ComboBox7.Clear;
                              form1.ComboBox7.Clear;
                              IBQuery3.SQL.Clear;
                              IBQuery3.SQL.Append('select * from FIRM ORDER BY NAME');
                              IBQuery3.Close;
                              IBQuery3.Open;
                              IBQuery3.First;
                              while not IBQuery3.Eof do
                               begin
                                 form1.ComboBox1.Items.Append(IBQuery3NAME.AsString);
                                 form1.ComboBox4.Items.Append(IBQuery3NAME.AsString);
                                 form1.ComboBox7.Items.Append(IBQuery3NAME.AsString);
                                 form1.ComboBox11.Items.Append(IBQuery3NAME.AsString);
                               IBQuery3.Next;
                               end;
                               form1.ComboBox11.Items.Append('Фирма не выбрана');
                               form1.ComboBox11.Text:='Фирма не выбрана';


                               form1.ComboBox1.Items.Append('Не имеет значения');
                               form1.ComboBox1.Text:='Не имеет значения';
                               form1.DateTimePicker1.Date:=now;
                               form1.DateTimePicker2.Date:=now;

                               form1.ComboBox4.Items.Append('Не имеет значения');
                               form1.ComboBox4.Text:='Не имеет значения';
                               form1.DateTimePicker3.Date:=now;
                               form1.DateTimePicker4.Date:=now;

                               form1.ComboBox7.Items.Append('Не имеет значения');
                               form1.ComboBox7.Text:='Не имеет значения';
                               form1.DateTimePicker5.Date:=now;
                               form1.DateTimePicker6.Date:=now;
                               form1.DateTimePicker9.Date:=now;
                               form1.DateTimePicker10.Date:=now;

                               // заполним список операторов в ComboBox10
                               IBQuery4.SQL.Clear;
                               IBQuery4.SQL.Append('select * from USERS ORDER BY FAMILY');
                               IBQuery4.Close;
                               IBQuery4.Open;
                               IBQuery4.First;
                               form1.ComboBox10.Clear;
                               form10.ComboBox2.Clear;
                               form10.ComboBox1.Clear;
                               Form10.ComboBox2.Items.Append('Не имеет значения');
                               kl:=1;
                               While not IBQuery4.Eof do
                                  begin
                                   // Декодируем роль для распознавания

                                   Decoding(IBQuery4ROLE.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, newrole);
                                   if newrole='Администратор' then begin
                                                                     form1.ComboBox10.Items.Append(IBQuery4FAMILY.AsString+' '+IBQuery4NAME.AsString+' '+IBQuery4SECOND_NAME.AsString);
                                                                     form10.ComboBox2.Items.Append(IBQuery4FAMILY.AsString+' '+IBQuery4NAME.AsString+' '+IBQuery4SECOND_NAME.AsString);
                                                                     unit1.adm[kl]:=IBQuery4ID.AsInteger;
                                                                     kl:=kl+1;
                                                                   end;
                                   IBQuery4.Next;
                                  end;
                                  Form1.Timer1.Enabled:=true;
                                  Form10.ComboBox2.Text:='Не имеет значения';


                                  // Чистим данные в отчетах
                                          Form1.label42.Caption:='';
                                          Form1.label44.Caption:='';
                                          Form1.label46.Caption:='';



                                          Form1.Label26.Caption:='';
                                          Form1.Label24.Caption:='';
                                          Form1.Label28.Caption:='';
                                          Form1.Label30.Caption:='';
                                          Form1.Label32.Caption:='';
                                          Form1.Label40.Caption:='';
                                          Form1.Label34.Caption:='';
                                          Form1.Label36.Caption:='';
                                          Form1.Timer4.Enabled:=true;
                                          form1.DateTimePicker7.DateTime:=now;
                                          form1.DateTimePicker8.DateTime:=now;


         Form1.label56.Caption:='Среднее время выполнения: ';
         Form1.label57.Caption:='Среднее время ожидания:   ';
         Form1.label63.Caption:='Средний бал:       ';

          Form1.label58.Caption:='Заявок зарегистрировано: ';
          Form1.label59.Caption:='Исполнено:  ';
          Form1.label60.Caption:='В процессе: ';
          Form1.label61.Caption:='В ожидании: ';

          Form1.label62.Caption:='Отклонено администратором: ';
          Form1.label63.Caption:='Снято пользователем:       ';
          Form1.edit5.Text:='';

                                          // Прописываем в таблице лог-файла данные о входе
                                          IBQuery5.SQL.Clear;
                                          IBQuery5.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, FIO, ID_USER, TEXT) VALUES (:ACT_TYPE, :DATE_GET, :FIO, :ID_USER, :TEXT)');
                                          IBQuery5.ParamByName('ACT_TYPE').AsString:='Вход в систему';
                                          IBQuery5.ParamByName('DATE_GET').AsDateTime:=now;
                                          IBQuery5.ParamByName('FIO').AsString:=IBQuery1FAMILY.AsString+' '+IBQuery1NAME.AsString+' '+IBQuery1SECOND_NAME.AsString;
                                          IBQuery5.ParamByName('ID_USER').AsInteger:=IBQuery1ID.AsInteger;
                                          IBQuery5.ParamByName('TEXT').AsString:='Вход в систему';
                                          IBQuery5.Close;
                                          IBQuery5.Open;
                                          unit2.DataModule2.IBTransaction1.CommitRetaining;
                                          unit1.ID_LOCAL_FIRM:=INDEX_OF_FIRM;

                         // Готовим автообновление окна
                         if Form1.CheckBox7.Checked then
                           begin
                              if Form1.Edit4.Text='' then Form1.Edit4.Text:='10';
                              Form1.SpeedButton1.Click;
                               //Form1.Timer3.Enabled:=true;
                              Form1.Timer5.Enabled:=true;

                              if unit1.variant=1 then begin
                                                       Unit1.Form1.CheckBox9.Checked:=true;
                                                       Unit1.Form1.Label52.Caption:='911';
                                                       Unit1.Form1.SpeedButton6.Click;
                                                       
                                                      end
                                                      else begin
                                                            Unit1.Form1.Label52.Caption:='0';
                                                            Unit1.Form1.CheckBox9.Checked:=false;
                                                            Form1.SpeedButton1.Click;
                                                           end;

                              Form1.Edit4.Enabled:=true;

                           end
                           else
                           begin
                           Form1.Edit4.Enabled:=false;
                           Form1.Timer3.Enabled:=false;
                           Form1.Timer5.Enabled:=false;
                           end;
                            // Осуществим первоначальную сортировку

                          end
                          else NUM_LOGIN:=NUM_LOGIN+1;


   end
   else begin
         // Тормозим вход, увеличиваем счетчик накруток
         NUM_LOGIN:=NUM_LOGIN+1;
        end;

 if ((unit1.Login_Flag=1) and (NUM_LOGIN>3)) then
     begin
      Unit1.Form1.Close;
     end else if unit1.Login_Flag=2 then form3.Close;

end;

procedure TForm3.FormCreate(Sender: TObject);
var i: integer;
begin
STARTFB.Enabled:=true;
 ComboBox1.Text:='';
  begin
    // Если не удается соединиться с бд - выводим сообщение об ошибке.
    // Блокируем запуск системы
    ComboBox1.Text:='';
    StatusBar1.Panels[0].Text:='Ошибка соединения с БД';
    SpeedButton1.Enabled:=false;
  end;


end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if unit1.Login_Flag<>2 then form1.Close;
end;

procedure TForm3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.STARTFBTimer(Sender: TObject);

var er, er1:string;
    a, b, i: integer;
begin
// Если подключение не установлено - запускаем поток с попытками
// Если коннекта с фаербердом нет, но сервисы стартовали - коннектим фаеберд
if (unit2.FLAG_DB_CONNECT=0) then
  begin
     SpeedButton1.Enabled:=false;
     ComboBox1.Text:='';
     StatusBar1.Panels[0].Text:='Ошибка соединения с БД';


     if Flag_WORK_thrd=0 then begin
        Flag_WORK_thrd:=1;
        login.Form3.StatusBar1.Panels[0].Text:='Соединяюсь с БД';
        Thread1 :=TSimpleThread.Create(true);
        Thread1.FreeOnTerminate:=true;
        Thread1.Priority := tpLowest;
        Thread1.Resume;
      end;
  end
  else begin
          STARTFB.Enabled:=false;
          SpeedButton1.Enabled:=true;
          login.Form3.StatusBar1.Panels[0].Text:='Соединились с БД';
            StatusBar1.Panels[0].Text:='Соединились с БД';

            NUM_LOGIN:=0;
            i:=1;
            IBQuery2.SQL.Clear;
            IBQuery2.SQL.Append('select * from FIRM ORDER BY NAME');
            IBQuery2.Close;
            IBQuery2.Open;
            IBQuery2.First;
            ComboBox1.Items.Clear;

            While not IBQuery2.Eof do
              begin

                ComboBox1.Items.Append(IBQuery2NAME.AsString);
                ia[i]:=IBQuery2ID.asInteger;
                i:=i+1;
                IBQuery2.Next;
              end;
              ComboBox1.Text:='';
    end;



end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
STARTFB.Enabled:=false;
form14.showmodal;

end;

end.
