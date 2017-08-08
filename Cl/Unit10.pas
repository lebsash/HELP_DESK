unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, unit2, login, DB, IBCustomDataSet, IBQuery,
  ExtCtrls, ComCtrls;

type
  TForm10 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    IBQuery1: TIBQuery;
    SpeedButton2: TSpeedButton;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery3ID: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3SECOND_NAME: TIBStringField;
    IBQuery3FAMILY: TIBStringField;
    IBQuery3PASS: TIBStringField;
    IBQuery3ROLE: TIBStringField;
    IBQuery3DOLGNOST: TIBStringField;
    IBQuery3OTDEL: TIBStringField;
    IBQuery3ID_FIRM: TIntegerField;
    IBQuery3USLOGIN: TIBStringField;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    IBQuery4: TIBQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }

    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

// CODING - DECODING
procedure TForm10.Coding(F:string;fr: integer; fk1:string; var newstr:string);
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


 procedure TForm10.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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


procedure TForm10.SpeedButton1Click(Sender: TObject);
var num_ID : integer;
    ROLE_NEW: string;
begin
if length (Edit2.Text)<1 then showmessage ('Необходимо заполнить поле ВАША ФАМИЛИЯ');
if length (Edit3.Text)<1 then showmessage ('Необходимо заполнить поле ВАШЕ ИМЯ');
if length (Edit1.Text)<1 then showmessage ('ОШИБКА ПОЛУЧЕНИЯ ЛОГИНА AD. Обратитесь за помощью к системному администратору.');

if (length (Edit1.Text)>0)and(length (Edit2.Text)>0)and(length (Edit3.Text)>0) then
   begin


     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Append('INSERT INTO USERS (NAME, FAMILY, SECOND_NAME, ID_FIRM, OTDEL, DOLGNOST, PASS, ROLE, USLOGIN) VALUES (:NAME, :FAMILY, :SECOND_NAME, :ID_FIRM, :OTDEL, :DOLGNOST, :PASS, :ROLE, :USLOGIN)');
     IBQuery2.ParamByName('NAME').AsString:=Edit3.Text;
     IBQuery2.ParamByName('FAMILY').AsString:=Edit2.Text;
     IBQuery2.ParamByName('SECOND_NAME').AsString:=Edit4.Text;
     IBQuery2.ParamByName('ID_FIRM').AsInteger:=1;
     IBQuery2.ParamByName('OTDEL').AsString:='1';
     IBQuery2.ParamByName('DOLGNOST').AsString:='1';
     IBQuery2.ParamByName('PASS').AsString:='';
     IBQuery2.ParamByName('ROLE').AsString:='';
     IBQuery2.ParamByName('USLOGIN').AsString:=Edit1.Text;
     IBQuery2.Close;
     IBQuery2.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;

          // Сохраняем пользователя в основной базе
 IBQuery3.SQL.Clear;
 IBQuery3.SQL.Append('select * from USERS ORDER BY ID');
 IBQuery3.Close;
 IBQuery3.Open;
 IBQuery3.Last;
 num_ID:=IBQuery3ID.AsInteger;


     // Кодируем пароль юзера
     // Кодируем роль пользователя
      Coding('Пользователь',num_ID, Edit3.Text, ROLE_NEW);

     IBQuery4.SQL.Clear;
     IBQuery4.SQL.Append('UPDATE USERS SET PASS=:PASS, ROLE=:ROLE WHERE ID=:ID');
     IBQuery4.ParamByName('PASS').AsString:='';
     IBQuery4.ParamByName('ROLE').AsString:=ROLE_NEW;
     IBQuery4.ParamByName('ID').AsInteger:=num_ID;
     IBQuery4.Close;
     IBQuery4.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;




     // Начинаем сохранение пользователей
       IBQuery1.SQL.Clear;
       IBQuery1.SQL.Append ('INSERT INTO USERSGRAY (ID, NAME_LOGIN, DET) VALUES (:ID, :NAME_LOGIN, :DET)');
       IBQuery1.ParamByName('DET').AsInteger:=num_ID;
       IBQuery1.ParamByName('NAME_LOGIN').AsString:=Edit1.Text;
       if checkbox1.Checked=true then IBQuery1.ParamByName('DET').AsInteger:=1
                                 else IBQuery1.ParamByName('DET').AsInteger:=0;
       IBQuery1.Close;
       IBQuery1.Open;

       login.Form3.Edit2.Text:=Edit1.Text;
       Login.Form3.SpeedButton1.Click;
       Form10.Close;

   end;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin       {
       IBQuery1.SQL.Clear;
       IBQuery1.SQL.Append ('INSERT INTO USERSGRAY (NAME_LOGIN, DET) VALUES (:NAME_LOGIN, :DET)');
       IBQuery1.ParamByName('NAME_LOGIN').AsString:=Edit1.Text;
       IBQuery1.ParamByName('DET').AsInteger:=9;
       IBQuery1.Close;
       IBQuery1.Open;
       }
       login.Form3.Edit2.Text:='';
       Form10.Close;

end;

procedure TForm10.Timer1Timer(Sender: TObject);
begin
 ProgressBar1.StepIt;
 if ProgressBar1.Position>=ProgressBar1.Max then begin
                                                     Timer1.Enabled:=false;
                                                     SpeedButton1.Click;

                                                 end;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Timer1.Enabled:=false;
end;

procedure TForm10.Edit2Change(Sender: TObject);
begin
Timer1.Enabled:=false;
end;

procedure TForm10.Edit3Change(Sender: TObject);
begin
Timer1.Enabled:=false;
end;

procedure TForm10.Edit4Change(Sender: TObject);
begin
Timer1.Enabled:=false;
end;

procedure TForm10.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Timer1.Enabled:=false;
end;

end.
