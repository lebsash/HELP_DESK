unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet,
  IBQuery, Buttons, unit2, ExtCtrls, ImgList, CoolTrayIcon;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    IBQuery1ID: TIntegerField;
    IBQuery1ID_FROM_FIRM: TIntegerField;
    IBQuery1ID_ISP: TIntegerField;
    IBQuery1ID_FROM_USER: TIntegerField;
    IBQuery1STATUS: TIntegerField;
    IBQuery1SPEED: TIntegerField;
    IBQuery1DATE_GET: TDateTimeField;
    IBQuery1DATE_RAB: TDateTimeField;
    IBQuery1DATE_END: TDateTimeField;
    IBQuery1OCENKA: TIntegerField;
    IBQuery1OTHER: TIBStringField;
    IBQuery1TEMA: TIBStringField;
    ImageList1: TImageList;
    Timer1: TTimer;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2ID_SHAPKA: TIntegerField;
    IBQuery2DATE_GET: TDateTimeField;
    IBQuery2TEXT: TIBStringField;
    IBQuery2ID_FROM: TIntegerField;
    IBQuery2ID_ADMIN: TIntegerField;
    IBQuery2STATUS: TIntegerField;
    IBQuery2DOP_ZNAK: TIntegerField;
    Timer2: TTimer;
    IBQuery3: TIBQuery;
    IBQuery3ID: TIntegerField;
    IBQuery3ID_FROM_FIRM: TIntegerField;
    IBQuery3ID_ISP: TIntegerField;
    IBQuery3ID_FROM_USER: TIntegerField;
    IBQuery3STATUS: TIntegerField;
    IBQuery3SPEED: TIntegerField;
    IBQuery3DATE_GET: TDateTimeField;
    IBQuery3DATE_RAB: TDateTimeField;
    IBQuery3DATE_END: TDateTimeField;
    IBQuery3OCENKA: TIntegerField;
    IBQuery3OTHER: TIBStringField;
    IBQuery3TEMA: TIBStringField;
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
    IBQuery5: TIBQuery;
    IBQuery5ID: TIntegerField;
    IBQuery5ID_SHAPKA: TIntegerField;
    IBQuery5DATE_GET: TDateTimeField;
    IBQuery5TEXT: TIBStringField;
    IBQuery5ID_FROM: TIntegerField;
    IBQuery5ID_ADMIN: TIntegerField;
    IBQuery5STATUS: TIntegerField;
    IBQuery5DOP_ZNAK: TIntegerField;
    IBQuery6: TIBQuery;
    IBQuery7: TIBQuery;
    IBQuery7ID: TIntegerField;
    IBQuery7ID_FROM_FIRM: TIntegerField;
    IBQuery7ID_ISP: TIntegerField;
    IBQuery7ID_FROM_USER: TIntegerField;
    IBQuery7STATUS: TIntegerField;
    IBQuery7SPEED: TIntegerField;
    IBQuery7DATE_GET: TDateTimeField;
    IBQuery7DATE_RAB: TDateTimeField;
    IBQuery7DATE_END: TDateTimeField;
    IBQuery7OCENKA: TIntegerField;
    IBQuery7OTHER: TIBStringField;
    IBQuery7TEMA: TIBStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    ListView1: TListView;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    MainMenu1: TMainMenu;
    IBQuery8: TIBQuery;
    IBQuery8ID: TIntegerField;
    IBQuery8ID_FROM_FIRM: TIntegerField;
    IBQuery8ID_ISP: TIntegerField;
    IBQuery8ID_FROM_USER: TIntegerField;
    IBQuery8STATUS: TIntegerField;
    IBQuery8SPEED: TIntegerField;
    IBQuery8DATE_GET: TDateTimeField;
    IBQuery8DATE_RAB: TDateTimeField;
    IBQuery8DATE_END: TDateTimeField;
    IBQuery8OCENKA: TIntegerField;
    IBQuery8OTHER: TIBStringField;
    IBQuery8TEMA: TIBStringField;
    CoolTrayIcon1: TCoolTrayIcon;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    IBQuery1IPLOCAL: TIBStringField;
    IBQuery1IPPC: TIBStringField;
    IBQuery7IPLOCAL: TIBStringField;
    IBQuery7IPPC: TIBStringField;
    PopupMenu3: TPopupMenu;
    N7: TMenuItem;
    IBQuery9: TIBQuery;
    IBQuery9ID: TIntegerField;
    IBQuery9ID_FROM_FIRM: TIntegerField;
    IBQuery9ID_ISP: TIntegerField;
    IBQuery9ID_FROM_USER: TIntegerField;
    IBQuery9STATUS: TIntegerField;
    IBQuery9SPEED: TIntegerField;
    IBQuery9DATE_GET: TDateTimeField;
    IBQuery9DATE_RAB: TDateTimeField;
    IBQuery9DATE_END: TDateTimeField;
    IBQuery9OCENKA: TIntegerField;
    IBQuery9OTHER: TIBStringField;
    IBQuery9TEMA: TIBStringField;
    IBQuery9IPLOCAL: TIBStringField;
    IBQuery9IPPC: TIBStringField;
    IBQuery9ID1: TIntegerField;
    IBQuery9ID_SHAPKA: TIntegerField;
    IBQuery9DATE_GET1: TDateTimeField;
    IBQuery9TEXT: TIBStringField;
    IBQuery9ID_FROM: TIntegerField;
    IBQuery9ID_ADMIN: TIntegerField;
    IBQuery9STATUS1: TIntegerField;
    IBQuery9DOP_ZNAK: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure CoolTrayIcon1Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure CoolTrayIcon1MinimizeToTray(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Login_Flag: integer;
  NAME_USER, FAMILY_USER:string;
  ID_USER, ID_FIRM:Integer;
  ROLE_USER:string;
implementation

uses login, new_zapros, mess, zapros1, zapdel, Unit9;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var sql:string;
begin
  CoolTrayIcon1.IconIndex:=10;
  Login_Flag:=1;
  ListView1.Columns[0].Caption:='Комментарий';
  ListView1.Columns[1].Caption:='№ Запроса';
  ListView1.Columns[0].Width:=300;
  ListView1.Columns[1].Width:=150;

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Timer1.Enabled:=false;
  if Login_Flag=1 then form3.showmodal;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 Form4.Edit1.Text:='';
 Form4.Memo1.Clear;
 form4.Label4.Caption:=datetostr(NOW);
 form4.SpeedButton2.Click;
 Form4.Edit2.Text:='';
 form4.showmodal;

end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var sql:string;
begin


if (ComboBox1.Text<>'Все заявки')and
   (ComboBox1.Text<>'Текущие заявки')and
   (ComboBox1.Text<>'Исполненные заявки')then ComboBox1.Text:='Текущие заявки';

// Выводим список всех заявок
if ComboBox1.Text='Все заявки' then
begin
  IBQuery1.DisableControls;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('select * from ZAPROZ WHERE ID_FROM_USER=:ID_USER and ID_FROM_FIRM=:ID_FIRM ORDER BY DATE_GET');
  IBQuery1.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
  IBQuery1.ParamByName('ID_FIRM').AsInteger:=unit1.ID_FIRM;
  
  IBQuery1.Close;
  IBQuery1.Open;
  IBQuery1.EnableControls;


end;

//Выводим список только текущих заявок
if ComboBox1.Text='Текущие заявки' then
begin
  
   sql:='select * from ZAPROZ WHERE ID_FROM_USER=:ID_USER and ID_FROM_FIRM=:ID_FIRM and STATUS<:STATUS ORDER BY DATE_GET';
    IBQuery1.DisableControls;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append(sql);
  IBQuery1.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
  IBQuery1.ParamByName('ID_FIRM').AsInteger:=unit1.ID_FIRM;
  IBQuery1.ParamByName('STATUS').AsInteger:=3;
  IBQuery1.Close;
  IBQuery1.Open;
    IBQuery1.EnableControls;
end;

//Выводим список Исполненных заявок
if ComboBox1.Text='Исполненные заявки' then
begin
   sql:='select * from ZAPROZ WHERE ID_FROM_USER=:ID_USER and ID_FROM_FIRM=:ID_FIRM and STATUS>:STATUS ORDER BY DATE_GET';
    IBQuery1.DisableControls;
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append(sql);
  IBQuery1.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
  IBQuery1.ParamByName('ID_FIRM').AsInteger:=unit1.ID_FIRM;
  IBQuery1.ParamByName('STATUS').AsInteger:=2;
  IBQuery1.Close;
  IBQuery1.Open;
    IBQuery1.EnableControls;
end;

end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

   if comboBox1.Text='Все заявки' then
      begin
          if IBQuery1STATUS.AsInteger=2 then
          DBGrid1.Canvas.Brush.Color:= clSkyBlue;
          if IBQuery1STATUS.AsInteger>2 then
          DBGrid1.Canvas.Brush.Color:= cl3DLight;


      end;

   if comboBox1.Text='Текущие заявки' then
      begin
          if IBQuery1STATUS.AsInteger=2 then
          DBGrid1.Canvas.Brush.Color:= clSkyBlue;
      end;

  DBGrid1.DefaultDrawColumnCell
    (Rect, DataCol, Column, State);



end;

procedure TForm1.Timer1Timer(Sender: TObject);
var id_shap, i, j, FL:integer;
    ListItem: TListItem;

begin
 Timer1.Enabled:=false; // Тормозим таймер

 FL:=0;j:=0;
 IBQuery9.SQL.Clear;
 IBQuery9.SQL.Append('select * from ZAPROZ INNER JOIN ZAPROS_TELO on ZAPROZ.ID=ZAPROS_TELO.ID_SHAPKA WHERE ZAPROZ.ID_FROM_USER=:ID_FROM_USER and ZAPROZ.STATUS<=:STATUS1 and ZAPROS_TELO.STATUS=:STATUS order BY ZAPROS_TELO.ID');
 IBQuery9.ParamByName('ID_FROM_USER').AsInteger:=unit1.ID_USER;
 IBQuery9.ParamByName('STATUS1').AsInteger:=6;
 IBQuery9.ParamByName('STATUS').AsInteger:=1;
 IBQuery9.Close;
 IBQuery9.Open;
 IBQuery9.First;
    While not IBQuery9.Eof do
    begin
      id_shap:=IBQuery9ID_SHAPKA.AsInteger;
            for i:=0 to ListView1.Items.Count-1 do
        begin
          if ListView1.Items.Item[i].SubItems[0]=inttostr(id_shap) then FL:=2;
        end;
        if FL=0 then j:=1;
            if j=1  then begin
                   ListView1.Items.BeginUpdate;
                   ListItem:=ListView1.Items.Add;
                   ListItem.ImageIndex:=9;
                   ListItem.Caption:=' Новый комментарий к заявке №'+inttostr(IBQuery9ID.AsInteger)+' Тема:'+IBQuery9TEMA.AsString;
                   ListItem.SubItems.append (inttostr(IBQuery9ID.AsInteger));
                   ListView1.Items.EndUpdate;
                  j:=0;
                 end;

      IBQuery9.Next;

     end;

 {

 // Выбираем из таблицы шапок шапки, соответствующие админу
 IBQuery8.SQL.Clear;
 IBQuery8.SQL.Append('select * from ZAPROZ WHERE ID_FROM_USER=:ID_FROM_USER and STATUS<=:STATUS order BY ID');
 IBQuery8.ParamByName('ID_FROM_USER').AsInteger:=unit1.ID_USER;
 IBQuery8.ParamByName('STATUS').AsInteger:=6;

 IBQuery8.Close;
 IBQuery8.Open;
 IBQuery8.First;
 j:=0;


 while not IBQuery8.Eof do
  begin
   // Выбираем непрочитанные сообщения
   IBQuery2.SQL.Clear;
   IBQuery2.SQL.Append('select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA and STATUS=:STATUS ORDER BY ID');
   IBQuery2.ParamByName('ID_SHAPKA').AsInteger:=IBQuery8ID.AsInteger;
   IBQuery2.ParamByName('STATUS').AsInteger:=1;
   IBQuery2.Close;
   IBQuery2.Open;
   IBQuery2.First;
   // Просматриваем ListView на наличие сообщений
   // Нет причины лишний раз его обновлять

   FL:=0;

   While not IBQuery2.Eof do
    begin
      id_shap:=IBQuery2ID_SHAPKA.AsInteger;

      for i:=0 to ListView1.Items.Count-1 do
        begin
          if ListView1.Items.Item[i].SubItems[0]=inttostr(id_shap) then FL:=2;
        end;
        if FL=0 then j:=1;



       IBQuery2.Next;
    end;

    if j=1  then begin
                   ListView1.Items.BeginUpdate;
                   ListItem:=ListView1.Items.Add;
                   ListItem.ImageIndex:=9;
                   ListItem.Caption:=' Новый комментарий к заявке №'+inttostr(IBQuery8ID.AsInteger)+' Тема:'+IBQuery8TEMA.AsString;
                   ListItem.SubItems.append (inttostr(IBQuery8ID.AsInteger));
                   ListView1.Items.EndUpdate;
                  j:=0;
                 end;

   IBQuery8.Next;
   end; // while not IBQuery5.Eof do
  }




  Timer1.Enabled:=true; // Стартуем таймер


end;

procedure TForm1.Timer2Timer(Sender: TObject);
var i:integer ;
begin
 // ОБрабатываем мигание
     for i:=0 to ListView1.Items.Count-1 do
     begin
      case ListView1.items.item[i].imageindex of
         -1: ListView1.items.item[i].imageindex:=9;
          9: ListView1.items.item[i].imageindex:=-1;
      end;
     end;

     if ListView1.Items.Count=0 then begin
                                          CoolTrayIcon1.IconIndex:=10;
                                       end
                                       else begin
                                                   case CoolTrayIcon1.IconIndex of
                                                -1: CoolTrayIcon1.IconIndex:=9;
                                                 9: CoolTrayIcon1.IconIndex:=-1;
                                                 10: CoolTrayIcon1.IconIndex:=9;
                                                    end;
                                            end;

end;

procedure TForm1.ListView1DblClick(Sender: TObject);
var i,j, k:integer;
    ar1:array[1..1000] of integer;
begin

 if ((listview1.Items.Count>0)and(ListView1.Selected <> nil)) then begin
 // Чистим форму 6
Form6.Label2.Caption:='';
Form6.Label4.Caption:='';
Form6.Label6.Caption:='';
Form6.Label8.Caption:='';
Form6.Label13.Caption:='';
Form6.Label10.Caption:='';
Form6.Edit1.Text:='';
Form6.Edit2.Text:='';
form6.SpeedButton4.Visible:=false;

  j:=listview1.Selected.Index;
// showmessage(ListView1.items.item[j].SubItems[0]);
// Формируем данные по выбранному тикету
  Form6.Label2.Caption:=(ListView1.items.item[j].SubItems[0]);
  IBQuery7.SQL.Clear;
  IBQuery7.SQL.Append('select * from ZAPROZ WHERE ID=:ID');
  IBQuery7.ParamByName('ID').AsInteger:=strtoint(ListView1.items.item[j].SubItems[0]);
  IBQuery7.Close;
  IBQuery7.Open;
  IBQuery7.First;


Form6.Edit2.Text:=IBQuery7IPLOCAL.AsString;
Form6.Edit1.Text:=IBQuery7IPPC.AsString;

Form6.Label4.Caption:=datetimetostr(IBQuery7DATE_GET.AsDateTime);
if IBQuery7STATUS.AsInteger>1 then Form6.Label6.Caption:=datetimetostr(IBQuery7DATE_RAB.AsDateTime);
if IBQuery7STATUS.AsInteger>2 then Form6.Label8.Caption:=datetimetostr(IBQuery7DATE_END.AsDateTime);
Form6.Memo1.Clear;
Form6.Memo1.Lines.Append(IBQuery7TEMA.AsString);

// Фиксируем статус заявки
if IBQuery7STATUS.AsInteger=1 then Form6.Label10.Caption:='Завка ожидает обработки';
if IBQuery7STATUS.AsInteger=2 then Form6.Label10.Caption:='Заявка находится в обработке';

if IBQuery1STATUS.AsInteger=3 then begin
                                    Form6.Label10.Caption:='Заявка выполнена';
                                    form6.SpeedButton2.Enabled:=false;
                                    form6.SpeedButton5.Enabled:=false;
                                   end;
if IBQuery1STATUS.AsInteger=4 then begin
                                    Form6.Label10.Caption:='Заявка снята пользователем';
                                    form6.SpeedButton2.Enabled:=false;
                                    form6.SpeedButton5.Enabled:=false;
                                   end;
if IBQuery1STATUS.AsInteger=5 then begin
                                     Form6.Label10.Caption:='Заявка снята администратором';
                                     form6.SpeedButton2.Enabled:=false;
                                     form6.SpeedButton5.Enabled:=false;
                                   end;

// ИЩЕМ ФИО Ответственного оператора
if IBQuery7ID_ISP.AsInteger<>NULL then
        begin
          IBQuery4.SQL.Clear;
          IBQuery4.SQL.Append('select * from USERS WHERE ID=:ID');
          IBQuery4.ParamByName('ID').AsInteger:=IBQuery7ID_ISP.AsInteger;
          IBQuery4.Close;
          IBQuery4.Open;
          IBQuery4.First;
          If not IBQuery4.Eof then begin
                             Form6.Label13.Caption:=IBQuery4FAMILY.AsString+' '+IBQuery4NAME.AsString+' '+IBQuery4SECOND_NAME.AsString;
                             //Form5.Label10.Caption:=inttostr(IBQuery3ID_ISP.AsInteger);
                           end else
                           begin
                             Form6.Label13.Caption:='';
                             //Form5.Label10.Caption:='';
                           end;
        end;


// Обрабатываем оценки
if IBQuery7STATUS.AsInteger>2 then
      begin
      form6.ComboBox1.Enabled:=true;
      form6.SpeedButton4.Visible:=true;
      form6.SpeedButton3.Visible:=true;
      if IBQuery7OCENKA.AsInteger<>NULL then
                   begin
                     case IBQuery7OCENKA.AsInteger of
                     1: form6.ComboBox1.Text:='Отвратительно';
                     2: form6.ComboBox1.Text:='Плохо';
                     3: form6.ComboBox1.Text:='Удовлетворительно';
                     4: form6.ComboBox1.Text:='Хорошо';
                     5: form6.ComboBox1.Text:='Отлично';
                     end;
                      form6.ComboBox1.Enabled:=false;
                      form6.SpeedButton3.Enabled:=false;
                   end
                   else begin
                      form6.ComboBox1.Enabled:=true;
                      form6.SpeedButton3.Enabled:=true;
                      form6.SpeedButton4.Enabled:=true;
                        end;
      end else begin
                      form6.ComboBox1.Enabled:=false;
                      form6.SpeedButton3.Enabled:=false;
                      form6.SpeedButton4.Enabled:=false;
               end;
zapros1.fl:=2; // Первоначально выводим все сообщения
Form6.RichEdit2.Clear; // Чистим окно ввода
form6.Timer1.Enabled:=true;


ListView1.Clear;
zapros1.fl:=2; // Первоначально выводим все сообщения
Form6.RichEdit2.Clear; // Чистим окно ввода
form6.Timer1.Enabled:=true;
form6.SpeedButton4.Visible:=false;
form6.ShowModal;
  end;


end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
// Чистим форму 6
Form6.Label2.Caption:='';
Form6.Label4.Caption:='';
Form6.Label6.Caption:='';
Form6.Label8.Caption:='';
Form6.Label13.Caption:='';
Form6.Label10.Caption:='';
Form6.Edit1.Text:='';
Form6.Edit2.Text:='';


Form6.Label2.Caption:=IBQuery1ID.AsString;
if Form6.Label2.Caption<>'' then begin
Form6.Label4.Caption:=datetimetostr(IBQuery1DATE_GET.AsDateTime);
if IBQuery1STATUS.AsInteger>1 then Form6.Label6.Caption:=datetimetostr(IBQuery1DATE_RAB.AsDateTime);
if IBQuery1STATUS.AsInteger>2 then Form6.Label8.Caption:=datetimetostr(IBQuery1DATE_END.AsDateTime);
Form6.Memo1.Clear;
Form6.Memo1.Lines.Append(IBQuery1TEMA.AsString);

// Фиксируем статус заявки
if IBQuery1STATUS.AsInteger=1 then begin
                                    Form6.Label10.Caption:='Завка ожидает обработки';
                                    form6.SpeedButton2.Enabled:=true;
                                    form6.SpeedButton5.Enabled:=true;
                                   end;
if IBQuery1STATUS.AsInteger=2 then begin
                                    Form6.Label10.Caption:='Заявка находится в обработке';
                                    form6.SpeedButton2.Enabled:=true;
                                    form6.SpeedButton5.Enabled:=true;
                                   end;

if IBQuery1STATUS.AsInteger=3 then begin
                                    Form6.Label10.Caption:='Заявка выполнена';
                                    form6.SpeedButton2.Enabled:=false;
                                    form6.SpeedButton5.Enabled:=false;
                                   end;
if IBQuery1STATUS.AsInteger=4 then begin
                                    Form6.Label10.Caption:='Заявка снята пользователем';
                                    form6.SpeedButton2.Enabled:=false;
                                    form6.SpeedButton5.Enabled:=false;
                                   end;
if IBQuery1STATUS.AsInteger=5 then begin
                                     Form6.Label10.Caption:='Заявка снята администратором';
                                     form6.SpeedButton2.Enabled:=false;
                                     form6.SpeedButton5.Enabled:=false;
                                   end;

// ИЩЕМ ФИО Ответственного оператора
if IBQuery1ID_ISP.AsInteger<>NULL then
        begin
          IBQuery4.SQL.Clear;
          IBQuery4.SQL.Append('select * from USERS WHERE ID=:ID');
          IBQuery4.ParamByName('ID').AsInteger:=IBQuery1ID_ISP.AsInteger;
          IBQuery4.Close;
          IBQuery4.Open;
          IBQuery4.First;
          If not IBQuery4.Eof then begin
                             Form6.Label13.Caption:=IBQuery4FAMILY.AsString+' '+IBQuery4NAME.AsString+' '+IBQuery4SECOND_NAME.AsString;
                             //Form5.Label10.Caption:=inttostr(IBQuery3ID_ISP.AsInteger);
                           end else
                           begin
                             Form6.Label13.Caption:='';
                             //Form5.Label10.Caption:='';
                           end;
        end;


// Обрабатываем оценки
if IBQuery1STATUS.AsInteger>2 then
      begin

      form6.ComboBox1.Enabled:=true;
    //  form6.SpeedButton4.Visible:=true;
    //  form6.SpeedButton3.Visible:=true;

      if IBQuery1OCENKA.AsString<>'' then
                   begin
                     case IBQuery1OCENKA.AsInteger of
                     1: form6.ComboBox1.Text:='Отвратительно';
                     2: form6.ComboBox1.Text:='Плохо';
                     3: form6.ComboBox1.Text:='Удовлетворительно';
                     4: form6.ComboBox1.Text:='Хорошо';
                     5: form6.ComboBox1.Text:='Отлично';
                     end;
                      form6.ComboBox1.Enabled:=false;
                      form6.SpeedButton3.Enabled:=false;

                   end
                   else begin


                      form6.ComboBox1.Enabled:=true;
                      form6.SpeedButton3.Enabled:=true;
                        end;
      end else begin
                form6.ComboBox1.Enabled:=false;
                      form6.SpeedButton3.Enabled:=false;
                      form6.SpeedButton4.Enabled:=false;
               end;
zapros1.fl:=2; // Первоначально выводим все сообщения
Form6.RichEdit2.Clear; // Чистим окно ввода
form6.Edit2.Text:=IBQuery1IPLOCAL.AsString;
form6.Edit1.Text:=IBQuery1IPPC.AsString;
form6.Timer1.Enabled:=true;
form6.SpeedButton4.Visible:=false;

Form6.Showmodal;
 end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
   if not IBQuery1.Eof  then DBGrid1DblClick (SELF);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
 if not IBQuery1.Eof  then
 begin
 form7.Label3.Caption:=IBQuery1ID.AsString;
 Form7.Memo1.Lines.Text:=IBQuery1TEMA.AsString;
 Form7.Memo2.Clear;
 form7.showmodal;
 end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
SpeedButton1.Click;
end;

procedure TForm1.CoolTrayIcon1Click(Sender: TObject);
begin
 form1.Show;

end;

procedure TForm1.FormHide(Sender: TObject);
begin
 
// Cooltrayicon1.HideMainForm;
end;

procedure TForm1.CoolTrayIcon1MinimizeToTray(Sender: TObject);
begin
form1.Hide;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  form1.Show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 form9.showmodal;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Form1.ComboBox1Change(Form1);
end;

end.
