unit new_zapros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, unit2, unit1, DB, IBCustomDataSet, IBQuery,
  Mask, WinSock;

type
  TForm4 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    IBQuery1: TIBQuery;
    Label5: TLabel;
    ComboBox1: TComboBox;
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
    IBQuery3: TIBQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

function GetUserFromWindows: string;
Var
UserName : string;
UserNameLen : Dword;
Begin
UserNameLen := 255;
SetLength(userName, UserNameLen);
If GetUserName(PChar(UserName), UserNameLen) Then
Result := Copy(UserName,1,UserNameLen - 1)
Else
Result := 'Unknown';
End;


function GetIP: string;
var
WSAData: TWSAData;
P: PHostEnt;
Buf: array [0..127] of Char;
begin
Result := '';

if (WSAStartup($101, wsaData) = 0) and (GetHostName(@Buf, 128) = 0) then
try
P := GetHostByName(@Buf);

if P <> nil then
Result := inet_ntoa(PInAddr(p^.h_addr_list^)^);
finally
WSACleanup;
end;
end;


procedure TForm4.SpeedButton1Click(Sender: TObject);
var NUM:integer;
begin

 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('INSERT INTO ZAPROZ (DATE_GET, ID_FROM_FIRM, ID_FROM_USER, SPEED, STATUS, TEMA, IPLOCAL, IPPC) VALUES (:DATE_GET, :ID_FROM_FIRM, :ID_FROM_USER, :SPEED, :STATUS, :TEMA, :IPLOCAL, :IPPC)');
 IBQuery1.ParamByName('DATE_GET').AsDateTime:=NOW;
 IBQuery1.ParamByName('ID_FROM_FIRM').AsInteger:=unit1.ID_FIRM;
 IBQuery1.ParamByName('ID_FROM_USER').AsInteger:=unit1.ID_USER;
 if ComboBox1.Text='Высокая степень' then IBQuery1.ParamByName('SPEED').AsInteger:=1;
 if ComboBox1.Text='Средняя степень' then IBQuery1.ParamByName('SPEED').AsInteger:=2;
 if ComboBox1.Text='Низкая степень' then IBQuery1.ParamByName('SPEED').AsInteger:=3;
 IBQuery1.ParamByName('STATUS').AsInteger:=1;
 IBQuery1.ParamByName('TEMA').AsString:=Edit1.Text;
 IBQuery1.ParamByName('IPLOCAL').AsString:=Label7.Caption;
 IBQuery1.ParamByName('IPPC').AsString:=Edit2.Text;
 IBQuery1.Close;
 IBQuery1.Open;
 Unit2.DataModule2.IBTransaction1.CommitRetaining;

 //Вытаскиваем номер заявки
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select * from ZAPROZ ORDER BY ID');
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.Last;
 num:=IBQuery2ID.AsInteger;

 // Заполняем тело заявки
 IBQuery3.SQL.Clear;
 IBQuery3.SQL.Append('INSERT INTO ZAPROS_TELO (DATE_GET, ID_FROM, ID_SHAPKA, STATUS, TEXT)  VALUES (:DATE_GET, :ID_FROM, :ID_SHAPKA, :STATUS, :TEXT)');
 IBQuery3.ParamByName('DATE_GET').AsDateTime:=NOW;
 IBQuery3.ParamByName('ID_FROM').AsInteger:=unit1.ID_USER;
 IBQuery3.ParamByName('ID_SHAPKA').AsInteger:=num;
 IBQuery3.ParamByName('STATUS').AsInteger:=3;
 IBQuery3.ParamByName('TEXT').AsString:=Memo1.Lines.Text;
 IBQuery3.Close;
 IBQuery3.Open;
 Unit2.DataModule2.IBTransaction1.CommitRetaining;

     MessageDlg('Ваш запрос в службу тех. поддержки отправлен. Уникальный номер запроса: '+inttostr(num), mtInformation,
      [mbOk], 0);
  form1.ComboBox1Change(Form1);
  Form4.Close;


end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
label7.Caption:=GetIP();

end;

procedure TForm4.Edit2KeyPress(Sender: TObject; var Key: Char);
     var simv, i33, toch, stp:integer;
         key1:char;
begin
 key1:=Key;

simv:=0;
toch:=0;
stp:=0;
// Считаем кол-во символов
// Если встречаем 3 цифры то добавляем точку... если 2 точки - одну убираем
for i33:=1 to length (Edit2.Text) do
   begin
     stp:=stp+1;


     if (edit2.Text[i33]='.') then begin
                                     simv:=0;
                                     toch:=toch+1;
                                 end;



     if ((edit2.Text[i33]<>'.')) then
     begin
         if ( (toch<=3)) then begin simv:=simv+1; end;
     end;




     if (simv=3)and(toch<3) then begin
                      simv:=0;
                     if (i33=length(Edit2.Text))and(Edit2.Text[i33]<>'.')and (Key<>#8) then begin
                                                                           if not( Key in ['.'] ) then
                                                                           begin
                                                                           edit2.Text:=edit2.Text+'.';
                                                                           Edit2.SelStart:=length(edit2.Text);
                                                                           end;
                                                                           end;
                    end;
           if (toch>=3) then begin
                        if not( Key in ['0'..'9', #8] ) then
                           Key := #0;
                       end;
           if (simv>=3) then begin
                        if not( Key in ['.', #8] ) then
                          Key := #0;
                       end;


   end;      
if key1=#8 then Key:=#8;
if not( Key in ['0'..'9', #8,'.'] ) then
      Key := #0;

end;

procedure TForm4.Edit2Change(Sender: TObject);
var simv, i33:integer;
begin

end;

procedure TForm4.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var simv, i33:integer;
begin

end;

procedure TForm4.ComboBox1Change(Sender: TObject);
begin
  if (comboBox1.text<>'Высокая степень')and(comboBox1.text<>'Средняя степень')and
  (comboBox1.text<>'Низкая степень')then comboBox1.text:='Низкая степень';

end;

procedure TForm4.Button1Click(Sender: TObject);
var i:integer;
begin
    for i:=1 to 90 do speedbutton1.Click;

end;

end.
