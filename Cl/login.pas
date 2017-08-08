unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, StdCtrls, unit2, unit1, DB, IBCustomDataSet, IBQuery,
  Menus, ExtCtrls, ComCtrls, unit3;

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
    IBQuery1DOLGNOST: TIBStringField;
    IBQuery1OTDEL: TIBStringField;
    IBQuery1ID_FIRM: TIntegerField;
    IBQuery3: TIBQuery;
    IBQuery3ID: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3ADRESS: TIBStringField;
    IBQuery3PHONE: TIBStringField;
    IBQuery3OTHER: TIBStringField;
    IBQuery3UIN1: TIntegerField;
    IBQuery3ACT: TIntegerField;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    SpeedButton2: TSpeedButton;
    ProgressBar1: TProgressBar;
    Timer2: TTimer;
    StartFBTimer: TTimer;
    Label7: TLabel;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    Label8: TLabel;
    Edit2: TEdit;
    IBQuery7ID: TIntegerField;
    IBQuery7NAME_LOGIN: TIBStringField;
    IBQuery7DET: TIntegerField;
    IBQuery6ID: TIntegerField;
    IBQuery6NAME: TIBStringField;
    IBQuery6SECOND_NAME: TIBStringField;
    IBQuery6FAMILY: TIBStringField;
    IBQuery6PASS: TIBStringField;
    IBQuery6ROLE: TIBStringField;
    IBQuery6DOLGNOST: TIBStringField;
    IBQuery6OTDEL: TIBStringField;
    IBQuery6ID_FIRM: TIntegerField;
    IBQuery6USLOGIN: TIBStringField;
    IBQuery8: TIBQuery;
    IBQuery8ID: TIntegerField;
    IBQuery8NAME: TIBStringField;
    IBQuery8SECOND_NAME: TIBStringField;
    IBQuery8FAMILY: TIBStringField;
    IBQuery8PASS: TIBStringField;
    IBQuery8ROLE: TIBStringField;
    IBQuery8DOLGNOST: TIBStringField;
    IBQuery8OTDEL: TIBStringField;
    IBQuery8ID_FIRM: TIntegerField;
    IBQuery8USLOGIN: TIBStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure StartFBTimerTimer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MaskEdit1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
        Thread1: TSimpleThread;
  end;

 const
  NameUnknown = 0; // Unknown name type.
  NameFullyQualifiedDN = 1;  // Fully qualified distinguished name
  NameSamCompatible = 2; // Windows NT® 4.0 account name
  NameDisplay = 3;  // A "friendly" display name
  NameUniqueId = 6; // GUID string that the IIDFromString function returns
  NameCanonical = 7;  // Complete canonical name
  NameUserPrincipal = 8; // User principal name
  NameCanonicalEx = 9;
  NameServicePrincipal = 10;  // Generalized service principal name
  DNSDomainName = 11;  // DNS domain name, plus the user name


var
  Form3: TForm3;
  NUM_LOGIN:integer;
  ia:array[1..500] of Integer;
  Flag_WORK_thrd: integer;
  IP_NEWSTRING1: string;
implementation

uses options, Unit10;

{$R *.dfm}

// Цепляем ФИО и логин входа в винду
procedure GetUserNameEx(NameFormat: DWORD;
   lpNameBuffer: LPSTR; nSize: PULONG); stdcall;
   external 'secur32.dll' Name 'GetUserNameExA';

function GetUser: String;
var
   UserName : PChar;
   NameSize : DWORD;
begin
   UserName := #0;
   NameSize := 50;
   try
      GetMem(UserName, NameSize);
      GetUserName(UserName, NameSize);
      Result:= StrPas(UserName);
   finally
      FreeMem(UserName);
   end;
end;


 function LoggedOnUserNameEx(fFormat: DWORD): string;
 var
   UserName: array[0..250] of char;
   Size: DWORD;
 begin
   Size := 250;
   GetUserNameEx(fFormat, @UserName, @Size);
   Result := UserName;
 end;


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
var name, family, s, p_get,new_pass, nnn:string;
    i,fl, num_ID:integer;
    INDEX_OF_FIRM, FLAH1:integer;
begin
FLAH1:=1;
if length (Edit2.Text)>0 then
   begin
     // Проверяем корректность автологина
  IBQuery7.SQL.Clear;
  IBQuery7.SQL.Append('SELECT * FROM USERSGRAY WHERE NAME_LOGIN=:NAME_LOGIN AND DET=:DET');
  IBQuery7.ParamByName('NAME_LOGIN').AsString:=Edit2.Text;
  IBQuery7.ParamByName('DET').AsInteger:=1;
  IBQuery7.Close;
  IBQuery7.Open;
  IBQuery7.First;
  if not IBQuery7.Eof then
         begin
          // Надпись для автологина найдена
          FLAH1:=0;



         end
         else begin
                FLAH1:=1;
              end;
   end;

 if FLAH1=0 then
  begin
   // Авторизация по особым правилам

   // Из таблицы узнаем ФИО
    IBQuery8.SQL.Clear;
    IBQuery8.SQL.Append('select * from USERS WHERE USLOGIN=:USLOGIN');
    IBQuery8.ParamByName('USLOGIN').AsString:=Edit2.Text;
    IBQuery8.Close;
    IBQuery8.Open;
    IBQuery8.First;
    if not IBQuery8.Eof then
    begin
    name:=IBQuery8NAME.asString;
    family:=IBQuery8FAMILY.AsString;

                                // начинаем процедуру входа
                            NUM_LOGIN:=0;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery8ROLE.AsString;
                            unit1.ID_USER:=IBQuery8ID.AsInteger;
                            unit1.ID_FIRM:=IBQuery8ID_FIRM.asInteger;
                            unit1.Form1.StatusBar1.Panels[0].Text:='Пользователь:'+Family+' '+NAME;



  unit1.Form1.IBQuery1.SQL.Clear;
  unit1.Form1.IBQuery1.SQL.Append('select * from ZAPROZ WHERE ID_FROM_USER=:ID_USER and ID_FROM_FIRM=:ID_FIRM and STATUS<:STATUS ORDER BY DATE_GET');
  unit1.Form1.IBQuery1.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
  unit1.Form1.IBQuery1.ParamByName('ID_FIRM').AsInteger:=unit1.ID_FIRM;
  unit1.Form1.IBQuery1.ParamByName('STATUS').AsInteger:=3;
  unit1.Form1.IBQuery1.Close;
  unit1.Form1.IBQuery1.Open;

                                          unit1.Form1.Timer1.Enabled:=true;
                                          login.Form3.Timer1.Enabled:=false;
                                          login.Form3.Timer2.Enabled:=false;
                                          form3.Close;



    end else FLAH1:=1;
  end;


if FLAH1=1 then
begin
//   INDEX_OF_FIRM:=ia[ComboBox1.ItemIndex+1];
INDEX_OF_FIRM:=ia[ComboBox1.Items.IndexOf(ComboBox1.Text)+1];
//showmessage(inttostr(Index_of_firm));
//   label6.caption:=inttostr(ComboBox1.ItemIndex);

   s:=Edit1.Text;
   fl:=1;
   name:='';
   family:='';
   for i:=1 to length(s) do
    begin
     if s[i]='_' then fl:=fl+1
                 else begin
                        if fl=1 then name:=name+s[i];
                        if fl=2 then family:=family+s[i];
                      end;

    end;
    if ((name='admin')and(fl=1)) then family:=name;

   // Проверяем активна ли фирма
   IBQuery3.SQL.Clear;
   IBQuery3.SQL.Append('select * from FIRM WHERE ID=:ID_FIRM');
   IBQuery3.ParamByName('ID_FIRM').AsInteger:=INDEX_OF_FIRM;
   IBQuery3.Close;
   IBQuery3.Open;
   IBQuery3.First;

   if IBQuery3ACT.AsInteger=2 then
   begin

   // Для ввода ФАМИЛИЯ_ИМЯ меняем местами переменные
   nnn:=name;
   name:=family;
   family:=nnn;

   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Append('select * from USERS WHERE NAME=:NAME and FAMILY=:FAMILY and ID_FIRM=:ID_FIRM');
   IBQuery1.ParamByName('NAME').AsString:=name;
   IBQuery1.ParamByName('FAMILY').AsString:=family;
   IBQuery1.ParamByName('ID_FIRM').AsInteger:=INDEX_OF_FIRM;
   //IBQuery1.ParamByName('USLOGIN').AsString:='';
   IBQuery1.Close;
   IBQuery1.Open;
   IBQuery1.First;

   if not IBQuery1.Eof then
   begin

   p_get:=IBQuery1PASS.AsString;
   num_ID:=IBQuery1ID.AsInteger;
   // Кодируем имеющийся пароль

   Coding(MaskEdit1.Text,num_ID, name, new_pass);

   if p_get=new_pass then begin
                            // начинаем процедуру входа
                            NUM_LOGIN:=0;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery1ROLE.AsString;
                            unit1.ID_USER:=IBQuery1ID.AsInteger;
                            unit1.ID_FIRM:=IBQuery1ID_FIRM.asInteger;
                            unit1.Form1.StatusBar1.Panels[0].Text:='Пользователь:'+Family+' '+NAME;



  unit1.Form1.IBQuery1.SQL.Clear;
  unit1.Form1.IBQuery1.SQL.Append('select * from ZAPROZ WHERE ID_FROM_USER=:ID_USER and ID_FROM_FIRM=:ID_FIRM and STATUS<:STATUS ORDER BY DATE_GET');
  unit1.Form1.IBQuery1.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
  unit1.Form1.IBQuery1.ParamByName('ID_FIRM').AsInteger:=unit1.ID_FIRM;
  unit1.Form1.IBQuery1.ParamByName('STATUS').AsInteger:=3;
  unit1.Form1.IBQuery1.Close;
  unit1.Form1.IBQuery1.Open;

 

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
     end else if unit1.Login_Flag=2 then begin
                                          unit1.Form1.Timer1.Enabled:=true;
                                          login.Form3.Timer1.Enabled:=false;
                                          login.Form3.Timer2.Enabled:=false;

                                          form3.Close;

                                        end;

 end //if IBQuery3ACT.AsInteger=2 then
 else showmessage ('Выбранная фирма заблокирована администратором.');
end;

end;

procedure TForm3.FormCreate(Sender: TObject);
var i: integer;
    f: textfile;
    l1,l,p1,p,firm1, firm:string;
begin
 StatusBar1.Panels[0].Text:='Связь с БД отсутствует';
 Timer1.Enabled:=true;
 StartFBTimer.Enabled:=false;
 Timer2.Enabled:=false;
 unit2.FLAG_DB_CONNECT:=0;
 progressbar1.Position:=0;
 SpeedButton1.Enabled:=false;
 NUM_LOGIN:=0;
 ComboBox1.Items.Clear;
 
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if unit1.Login_Flag<>2 then form1.Close;
end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) then SpeedButton1.Click;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
var error1:string;
   i, j, j1: integer;
   f: textfile;
   l,l1,p,p1,firm, firm1, winusername, winuserfio, winusername2, winuserfam, winusernam:string;
begin
timer1.Enabled:=false;


if unit2.FLAG_DB_CONNECT=1 then
begin

 progressbar1.Position:=0;
 SpeedButton1.Enabled:=true;
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


 // Поиск по логину в винде. Если логин не обнаружен - предложим сохраниться (1 раз)

  winuserfio := LoggedOnUserNameEx(NameDisplay);
  winusernam := GetUser;

  // Ищем в помойной таблице - была ли запись

  IBQuery7.SQL.Clear;
  IBQuery7.SQL.Append('SELECT * FROM USERSGRAY WHERE NAME_LOGIN=:NAME_LOGIN');
  IBQuery7.ParamByName('NAME_LOGIN').AsString:=winusernam;
  IBQuery7.Close;
  IBQuery7.Open;
  IBQuery7.First;
  if IBQuery7.Eof then begin

    // Повторно сверяемся
  IBQuery6.SQL.Clear;
  IBQuery6.SQL.Append('SELECT * FROM USERS WHERE USLOGIN=:USLOGIN');
  IBQuery6.ParamByName('USLOGIN').AsString:=winusernam;
  IBQuery6.Close;
  IBQuery6.Open;
  IBQuery6.First;
   if IBQuery6.Eof then
        begin
          // Пытаемся разобрать фамилию и имя по косточкам
          j1:=0;
          winusername:='';
         winusername2:='';
          winuserfam:='';
          for j:=1 to length (winuserfio) do
             begin
               if ((winuserfio[j]='.')or(winuserfio[j]=' ')) then
                    begin
                     j1:=j1+1;
                    end
                    else
                    begin
                    if j1=0 then winuserfam:=winuserfam+winuserfio[j];
                    if j1=1 then winusername:=winusername+winuserfio[j];
                    if j1=2 then winusername2:=winusername2+winuserfio[j];
                    end;

             end;

             // Переходим к сохранению данных в базе
             // Желательно использовать новое окно (Добавление пользователя)
             unit10.Form10.Edit1.Text:=winusernam;
             unit10.Form10.Edit2.Text:=winuserfam;
             unit10.Form10.Edit3.Text:=winusername;
             unit10.Form10.Edit4.Text:=winusername2;
             unit10.Form10.CheckBox1.Checked:=true;
             //Unit10.Form10.Edit4.Text:='';
             Unit10.Form10.Timer1.Enabled:=True;
             Form10.ShowModal;
        end;
       end
       else
       begin
        // Запись в помойной таблице авторизации найдена
        // Если есть флаг автологина - логинимся

        if IBQuery7DET.AsInteger=1 then begin
          Edit2.Text:=winusernam;
          Timer2.Enabled:=true;
          end;
          
        // Иначе - выводим стандартное окно авторизации

       end;

 // Продолжаем режим авторизации

           ComboBox1.Text:='';

           AssignFile(f, 'dbconnect.ini');
           Reset(f);
           Readln(f,l);
           readln(f,l);
           CloseFile(f);

           if (l='1') then begin

           AssignFile(f, 'Udox.dat');
           Reset(f);
           readln(F,l);
           readln(f,p);
           readln(f,firm);
           CloseFile(f);
           // Декодируем данные
           DeCoding (l, 10, 'studio911', l1);
           DeCoding (p, 10, 'studio911', p1);
           DeCoding (firm, 10, 'studio911', firm1);
           Edit1.Text:=l1;
           MaskEdit1.Text:=p1;
            ComboBox1.Items.IndexOf(firm1);
            ComboBox1.Text:=firm1;
            Timer2.Enabled:=true;
           end;



end else
    begin
           SpeedButton1.Enabled:=false;
           timer1.Enabled:=true;
           timer2.Enabled:=FALSE;
           StartFBTimer.Enabled:=true;
    end;


end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Timer1.Enabled:=false;
Timer2.Enabled:=false;
form8.StatusBar1.Panels[0].Text:=StatusBar1.Panels[0].Text;
Form8.Showmodal;
end;

procedure TForm3.Timer2Timer(Sender: TObject);
begin
if progressbar1.Position<progressbar1.Max then progressbar1.Position:=progressbar1.Position+10
                                          else begin
                                               if StatusBar1.Panels[0].Text='Соединились с БД' then
                                               begin
                                               ProgressBar1.Position:=0;
                                               SpeedButton1.Click;
                                               end;
                                               end;
end;

procedure TForm3.StartFBTimerTimer(Sender: TObject);
var er, er1:string;
    a, b: integer;
begin
// Если подключение не установлено - запускаем поток с попытками
// Если коннекта с фаербердом нет, но сервисы стартовали - коннектим фаеберд
if (unit2.FLAG_DB_CONNECT=0) then
  begin
     if Flag_WORK_thrd=0 then begin
        Flag_WORK_thrd:=1;
        login.Form3.StatusBar1.Panels[0].Text:='Соединяюсь с БД';
        Thread1 :=TSimpleThread.Create(true);
        Thread1.FreeOnTerminate:=true;
        Thread1.Priority := tpLowest;
        Thread1.Resume;
      end;
  end
  else login.Form3.StatusBar1.Panels[0].Text:='Соединились с БД';
  label7.Caption:=inttostr(unit2.FLAG_DB_CONNECT);

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
Timer2.Enabled:=false;
Edit2.Text:='';
end;

procedure TForm3.MaskEdit1Change(Sender: TObject);
begin
Timer2.Enabled:=false;
Edit2.Text:='';
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
Timer2.Enabled:=false;
Edit2.Text:='';
end;

end.
