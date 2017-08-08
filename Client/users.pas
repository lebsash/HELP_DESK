unit users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, Grids, DBGrids, IBCustomDataSet, IBQuery, Menus;

type
  TForm4 = class(TForm)
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    IBQuery1ID: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery1ADRESS: TIBStringField;
    IBQuery1PHONE: TIBStringField;
    IBQuery1OTHER: TIBStringField;
    IBQuery1UIN1: TIntegerField;
    IBQuery1ACT: TIntegerField;
    IBQuery3: TIBQuery;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    IBQuery4: TIBQuery;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    IBQuery4ID: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4SECOND_NAME: TIBStringField;
    IBQuery4FAMILY: TIBStringField;
    IBQuery4PASS: TIBStringField;
    IBQuery4ROLE: TIBStringField;
    IBQuery4DOLGNOST: TIBStringField;
    IBQuery4OTDEL: TIBStringField;
    IBQuery5: TIBQuery;
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Coding (F:string; fr: integer; fk1:string; var newstr:string);
    procedure Decoding(F:string; fr: integer; fk1:string; var newstr:string);
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses firm, user_add;

{$R *.dfm}

// CODING - DECODING
procedure TForm4.Coding(F:string;fr: integer; fk1:string; var newstr:string);
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


 procedure TForm4.decoding(F:string;fr: integer; fk1:string; var newstr:string);
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

procedure TForm4.N1Click(Sender: TObject);
begin
 //форма добавления-редактирования фирмы
 // открываем форму и передаем в нее идентификатор фирмы

 form5.Label6.Caption:='1'; // Режим добавления
 form5.showmodal;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
 users.Form4.IBQuery1.SQL.Clear;
 users.Form4.IBQuery1.SQL.Append('select * from FIRM ORDER BY NAME');
 users.Form4.IBQuery1.Close;
 users.Form4.IBQuery1.Open;
 IBQuery1.First;
 if NOT IBQuery1.Eof then
    begin
      IBQuery4.SQL.Clear;
      IBQuery4.SQL.Append('select * from USERS WHERE ID_FIRM=:ID_FIRM');
      IBQuery4.ParamByName('ID_FIRM').AsInteger:=IBQuery1ID.AsInteger;
      IBQuery4.Close;
      IBQuery4.Open;
    end;

end;

procedure TForm4.N2Click(Sender: TObject);
begin
    //форма добавления-редактирования фирмы
 // открываем форму и передаем в нее идентификатор фирмы

 form5.Label6.Caption:='2'; // Режим редактирования фирмы
 // Ловим идентификатор, на котором нажата кнопка и передаем в окно редактирования
  form5.Label7.Caption:=inttostr(IBQuery1ID.AsInteger);
  form5.Edit1.Text:=IBQuery1NAME.AsString;
  form5.Edit2.Text:=IBQuery1ADRESS.AsString;
  form5.Edit3.Text:=IBQuery1PHONE.AsString;
  form5.Memo1.Text:=IBQuery1OTHER.AsString;
  if IBQuery1ACT.AsInteger=2 then Form5.ComboBox1.Text:='Активна'
                             else Form5.ComboBox1.Text:='Нективна';

 form5.showmodal;
end;

procedure TForm4.N3Click(Sender: TObject);
begin
 // Ловим идентификатор фирмы и удаляем ее
  if MessageDlg('Вы действительно хотите удалить все записи о фирме?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Append('DELETE FROM FIRM WHERE ID=:ID');
     IBQuery2.ParamByName('ID').AsInteger:=IBQuery1ID.AsInteger;
     IBQuery2.Close;
     IBQuery2.Open;

     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('DELETE FROM USERS WHERE ID_FIRM=:ID_FIRM');
     IBQuery3.ParamByName('ID_FIRM').AsInteger:=IBQuery1ID.AsInteger;
     IBQuery3.Close;
     IBQuery3.Open;

     // Обновляем выдачу
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     users.Form4.IBQuery1.SQL.Clear;
     users.Form4.IBQuery1.SQL.Append('select * from FIRM BY NAME');
     users.Form4.IBQuery1.Close;
     users.Form4.IBQuery1.Open;
 IBQuery1.First;
 if NOT IBQuery1.Eof then
    begin
      IBQuery4.SQL.Clear;
      IBQuery4.SQL.Append('select * from USERS WHERE ID_FIRM=:ID_FIRM');
      IBQuery4.ParamByName('ID_FIRM').AsInteger:=IBQuery1ID.AsInteger;
      IBQuery4.Close;
      IBQuery4.Open;
    end;

    end;


end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
       if NOT IBQuery1.Eof then
    begin
      IBQuery4.SQL.Clear;
      IBQuery4.SQL.Append('select * from USERS WHERE ID_FIRM=:ID_FIRM');
      IBQuery4.ParamByName('ID_FIRM').AsInteger:=IBQuery1ID.AsInteger;
      IBQuery4.Close;
      IBQuery4.Open;
     end; 
end;

procedure TForm4.N4Click(Sender: TObject);
begin
 if NOT IBQuery1.Eof then
    begin
     // Добавляем пользователя
     form6.Label11.Caption:='1'; // Добавляем пользователя
     form6.Label2.Caption:=IBQuery1NAME.AsString;
     form6.Label12.Caption:=inttostr(IBQuery1ID.asInteger);
     Form6.ShowModal;
    end;
end;

procedure TForm4.N5Click(Sender: TObject);
var parol, role:string;
    id: integer;
begin
  if NOT IBQuery1.Eof then
    begin
     // Редактирование пользователя
     form6.Label11.Caption:='2'; // Добавляем пользователя
     form6.Label13.Caption:=inttostr(IBQuery4ID.AsInteger); // Идентификатор пользователя
     form6.Label2.Caption:=IBQuery1NAME.AsString;
     form6.Label12.Caption:=inttostr(IBQuery1ID.asInteger);
     form6.Edit1.Text:=IBQuery4NAME.AsString;
     form6.Edit2.Text:=IBQuery4SECOND_NAME.AsString;
     form6.Edit3.Text:=IBQuery4FAMILY.AsString;
     Form6.Edit4.Text:=IBQuery4DOLGNOST.AsString;
     Form6.Edit5.Text:=IBQuery4OTDEL.AsString;

     // Декодируем пароль и роль пользователя
     Decoding(IBQuery4ROLE.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, role);
     Decoding(IBQuery4PASS.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, parol);
     Form6.MaskEdit1.Text:=parol;
     Form6.MaskEdit2.Text:=parol;
     Form6.ComboBox1.Text:=role;


     Form6.ShowModal;
    end;
end;

procedure TForm4.N6Click(Sender: TObject);
begin
// Ловим идентификатор пользователя и удаляем его
  if MessageDlg('Вы действительно хотите удалить пользователя '+IBQuery4NAME.AsString+'_'+IBQuery4FAMILY.AsString+'?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     IBQuery5.SQL.Clear;
     IBQuery5.SQL.Append('DELETE FROM USERS WHERE ID=:ID');
     IBQuery5.ParamByName('ID').AsInteger:=IBQuery4ID.AsInteger;
     IBQuery5.Close;
     IBQuery5.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;

      IBQuery4.SQL.Clear;
      IBQuery4.SQL.Append('select * from USERS WHERE ID_FIRM=:ID_FIRM');
      IBQuery4.ParamByName('ID_FIRM').AsInteger:=IBQuery1ID.AsInteger;
      IBQuery4.Close;
      IBQuery4.Open;

    end;
end;

procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
    //форма добавления-редактирования фирмы
 // открываем форму и передаем в нее идентификатор фирмы

 form5.Label6.Caption:='2'; // Режим редактирования фирмы
 // Ловим идентификатор, на котором нажата кнопка и передаем в окно редактирования
  form5.Label7.Caption:=inttostr(IBQuery1ID.AsInteger);
  form5.Edit1.Text:=IBQuery1NAME.AsString;
  form5.Edit2.Text:=IBQuery1ADRESS.AsString;
  form5.Edit3.Text:=IBQuery1PHONE.AsString;
  form5.Memo1.Text:=IBQuery1OTHER.AsString;
  if IBQuery1ACT.AsInteger=2 then Form5.ComboBox1.Text:='Активна'
                             else Form5.ComboBox1.Text:='Нективна';

 form5.showmodal;
end;

procedure TForm4.DBGrid2DblClick(Sender: TObject);
var parol, role:string;
    id: integer;
begin
  if NOT IBQuery1.Eof then
    begin
     // Редактирование пользователя
     form6.Label11.Caption:='2'; // Добавляем пользователя
     form6.Label13.Caption:=inttostr(IBQuery4ID.AsInteger); // Идентификатор пользователя
     form6.Label2.Caption:=IBQuery1NAME.AsString;
     form6.Label12.Caption:=inttostr(IBQuery1ID.asInteger);
     form6.Edit1.Text:=IBQuery4NAME.AsString;
     form6.Edit2.Text:=IBQuery4SECOND_NAME.AsString;
     form6.Edit3.Text:=IBQuery4FAMILY.AsString;
     Form6.Edit4.Text:=IBQuery4DOLGNOST.AsString;
     Form6.Edit5.Text:=IBQuery4OTDEL.AsString;

     // Декодируем пароль и роль пользователя
     Decoding(IBQuery4ROLE.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, role);
     Decoding(IBQuery4PASS.AsString,IBQuery4ID.AsInteger, IBQuery4NAME.AsString, parol);
     Form6.MaskEdit1.Text:=parol;
     Form6.MaskEdit2.Text:=parol;
     Form6.ComboBox1.Text:=role;


     Form6.ShowModal;
    end;
end;

end.
