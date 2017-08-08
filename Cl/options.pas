unit options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, ComCtrls, login;

type
  TForm8 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    CheckBox1: TCheckBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);    
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

// CODING - DECODING
procedure TForm8.Coding(F:string;fr: integer; fk1:string; var newstr:string);
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


 procedure TForm8.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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

procedure TForm8.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form3.Timer1.Enabled:=true;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
 Form8.Close;
end;

procedure TForm8.FormActivate(Sender: TObject);
var i,j,k: integer;
    f:textfile;
    s,s1,s2,s3, s4:string;
    l,p,firm, l1,p1, firm1: string;
begin
 if StatusBar1.Panels[0].Text<>'Соединились с БД' then
  begin
   Edit1.Enabled:=false;
   MaskEdit1.Enabled:=false;
   ComboBox1.Enabled:=false;
   CheckBox1.Enabled:=false;
      AssignFile(f, 'dbconnect.ini');
           Reset(f);
           Readln(F,s);
           Readln(F,s4);
           if length(s)>0 then
            begin
             s1:='';
             s2:='';
             k:=1;
             for j:=1 to length(s) do
             begin

                if s[j]=':' then k:=2;
                if k=1 then s1:=s1+s[j];
                if k=2 then s2:=s2+s[j];

             end;

             Edit2.Text:=s1;
             s3:='';
             for j:=2 to length(s2) do s3:=s3+s2[j];
             Edit3.Text:=s3;
            end;
           CloseFile(f);
            if s4='0' then checkBox1.Checked:=false
                      else checkBox1.Checked:=true;
  end
  else begin
           Edit1.Enabled:=true;
           MaskEdit1.Enabled:=true;
           ComboBox1.Enabled:=true;
           ComboBox1.Clear;
           for i:=0 to login.Form3.ComboBox1.Items.Count-1 do
           begin
            ComboBox1.Items.Append(Form3.ComboBox1.Items.Strings[i]);
           end;
           // Подгружаем данные из файла
           CheckBox1.Enabled:=true;

           AssignFile(f, 'dbconnect.ini');
           Reset(f);
           Readln(F,s);
           Readln(F,s4);
           if length(s)>0 then
            begin
             s1:='';
             s2:='';
             k:=1;
             for j:=1 to length(s) do
             begin

                if s[j]=':' then k:=2;
                if k=1 then s1:=s1+s[j];
                if k=2 then s2:=s2+s[j];

             end;

             Edit2.Text:=s1;
             s3:='';
             for j:=2 to length(s2) do s3:=s3+s2[j];
             Edit3.Text:=s3;
            end;
           CloseFile(f);
            if s4='0' then checkBox1.Checked:=false
                      else checkBox1.Checked:=true;
           // Теперь грузим прочие данные
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
           ComboBox1.Text:=firm1;

       end;
end;

procedure TForm8.SpeedButton1Click(Sender: TObject);
var F: textFile;
    s, l, p,firm: String;
begin
    if StatusBar1.Panels[0].Text<>'Соединились с БД' then
    begin
      // Сохраняем только настройки доступа к БД
      AssignFile(F,'dbconnect.ini');
      Rewrite(F);
      s:=Edit2.Text+':'+Edit3.Text;
      Append(F);
      Writeln(f,s);
      CloseFile(F);
      
      Form8.Close;
    end
    else
    begin
      // Шифруем и созраняем пароли и логины
      Coding (Edit1.text, 10, 'studio911', l);
      Coding (MaskEdit1.text, 10, 'studio911', p);
      Coding (ComboBox1.text, 10, 'studio911', firm);

      AssignFile(f,'Udox.dat');
      Rewrite(f);
      Append(f);
      Writeln(f,l);
      Writeln(f,p);
      Writeln(f,firm);
      writeln(f,p+firm+l);
      writeln(f,firm+l+p);
      CloseFile(f);

      AssignFile(F,'dbconnect.ini');
      Rewrite(F);
      s:=Edit2.Text+':'+Edit3.Text;
      Append(F);
      Writeln(F,s);
       if CheckBox1.Checked then Writeln(F,'1')
                            else Writeln(F,'0');
      CloseFile(F);
      if CheckBox1.Checked then
      begin
       form3.Edit1.Text:=Edit1.text;
       Form3.MaskEdit1.Text:=MaskEdit1.Text;
       Form3.ComboBox1.Text:=ComboBox1.Text;
       Form3.Timer2.Enabled:=true;
      end;
      Form8.Close;


    end;

end;

end.
