unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Mask, StdCtrls, unit2, unit1, DB, IBCustomDataSet, IBQuery;

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
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  NUM_LOGIN:integer;
  ia:array[1..500] of Integer;
implementation

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
var name, family, s, p_get,new_pass:string;
    i,fl, num_ID:integer;
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
                        if fl=1 then name:=name+s[i];
                        if fl=2 then family:=family+s[i];
                      end;

    end;
    if ((name='admin')and(fl=1)) then family:=name;

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

   if p_get=new_pass then begin
                            // начинаем процедуру входа
                            NUM_LOGIN:=0;
                            unit1.Login_Flag:=2;
                            unit1.NAME_USER:=name;
                            unit1.FAMILY_USER:=family;
                            unit1.ROLE_USER:=IBQuery1ROLE.AsString;
                            unit1.ID_USER:=IBQuery1ID.AsInteger;
                            unit1.Form1.StatusBar1.Panels[0].Text:='Пользователь:'+Family+' '+NAME;
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

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if unit1.Login_Flag<>2 then form1.Close;
end;

end.
