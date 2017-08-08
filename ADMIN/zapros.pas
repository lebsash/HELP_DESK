unit zapros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, unit2, DB, IBCustomDataSet,
  IBQuery, Buttons, unit1, RichEdit, Menus, Clipbrd;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    GroupBox4: TGroupBox;
    Label29: TLabel;
    Label1: TLabel;
    Label31: TLabel;
    Label2: TLabel;
    Label33: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label39: TLabel;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Label41: TLabel;
    Label10: TLabel;
    Label43: TLabel;
    Label11: TLabel;
    Label45: TLabel;
    Label12: TLabel;
    GroupBox6: TGroupBox;
    Label47: TLabel;
    Label7: TLabel;
    Label49: TLabel;
    Label8: TLabel;
    Label51: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    Splitter2: TSplitter;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    IBQuery1: TIBQuery;
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
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery2ADRESS: TIBStringField;
    IBQuery2PHONE: TIBStringField;
    IBQuery2OTHER: TIBStringField;
    IBQuery2UIN1: TIntegerField;
    IBQuery2ACT: TIntegerField;
    IBQuery3ID: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3SECOND_NAME: TIBStringField;
    IBQuery3FAMILY: TIBStringField;
    IBQuery3PASS: TIBStringField;
    IBQuery3ROLE: TIBStringField;
    IBQuery3DOLGNOST: TIBStringField;
    IBQuery3OTDEL: TIBStringField;
    IBQuery3ID_FIRM: TIntegerField;
    SpeedButton1: TSpeedButton;
    IBQuery4: TIBQuery;
    Timer1: TTimer;
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
    SpeedButton2: TSpeedButton;
    IBQuery8: TIBQuery;
    IBQuery9: TIBQuery;
    SpeedButton3: TSpeedButton;
    StatusBar1: TStatusBar;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    IBQuery10: TIBQuery;
    richEditContextMenu: TPopupMenu;
    itemCopy: TMenuItem;
    itemSelectAll: TMenuItem;
    itemCut: TMenuItem;
    itemPaste: TMenuItem;
    itemUndo: TMenuItem;
    itemDelete: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    IBQuery1IPLOCAL: TIBStringField;
    IBQuery1IPPC: TIBStringField;
    function GetRichEditFromPopup: TRichEdit;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RichEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure richEditContextMenuPopup(Sender: TObject);
    procedure itemSelectAllClick(Sender: TObject);
    procedure itemCopyClick(Sender: TObject);
    procedure itemPasteClick(Sender: TObject);
    procedure itemCutClick(Sender: TObject);
    procedure itemDeleteClick(Sender: TObject);
    procedure itemUndoClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  FL_NEWMMESSAGE:integer; // Флаг новых сообщений
implementation

uses getop, otklon, Unit15;

{$R *.dfm}

function TForm7.GetRichEditFromPopup: TRichEdit;
begin
  //нужно добавить некоторую проверку (if richEditContextMenu.PopupComponent is TRichEdit)
  result := TRichEdit(richEditContextMenu.PopupComponent) ;
end;

// В RichEdit подсветка фона строки
procedure RE_SetSelBgColor(RichEdit: TRichEdit; AColor: TColor);
var
 Format: CHARFORMAT2;
begin
 FillChar(Format, SizeOf(Format), 0);
 with Format do
 begin
  cbSize := SizeOf(Format);
  dwMask := CFM_BACKCOLOR;
  crBackColor := AColor;
  Richedit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
 end;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
 Timer1.Enabled:=true; // Стартуем таймер обработки сообщений по данной заявке
 // Начинаем загрузку необходимых данных
 FL_NEWMMESSAGE:=1;
 RichEdit2.Clear;
 if label1.Caption<>'' then
  begin
    IBQuery1.SQL.Clear;
    IBQuery1.SQL.Append('select * from ZAPROZ WHERE ID=:ID');
    IBQuery1.ParamByName('ID').AsInteger:=strtoint(label1.Caption);
    IBQuery1.Close;
    IBQuery1.Open;
    IBQuery1.First;
    form7.Caption:='HELP_DESK - Окно заявки №'+label1.Caption;
    
    label2.Caption:=IBQuery1DATE_GET.AsString;
    label3.Caption:=IBQuery1DATE_RAB.AsString;
    Label4.Caption:=IBQuery1DATE_END.AsString;
    if IBQuery1OCENKA.AsInteger<>NULL then StatusBar1.Panels[0].Text:='Оценка: '+inttostr(IBQuery1OCENKA.AsInteger)
                                      else StatusBar1.Panels[0].Text:='Оценка не выставлена';
    if length(IBQuery1OTHER.AsString)>0 then SpeedButton6.Visible:=true
                                        else SpeedButton6.Visible:=false;

    //Статус заявки
    if IBQuery1STATUS.AsInteger=1 then label5.Caption:='Заявка новая';
    if IBQuery1STATUS.AsInteger=2 then label5.Caption:='Заявка принята на выполнение';
    if IBQuery1STATUS.AsInteger=3 then label5.Caption:='Заявка исполнена';
    if IBQuery1STATUS.AsInteger=4 then label5.Caption:='Заявка отклонена пользователем';
    if IBQuery1STATUS.AsInteger=5 then label5.Caption:='Заявка отклонена администратором';

    // Срочность заявки
    if IBQuery1SPEED.AsInteger=1 then label6.Caption:='Высокая срочность';
    if IBQuery1SPEED.AsInteger=2 then label6.Caption:='Средняя срочность';
    if IBQuery1SPEED.AsInteger=3 then label6.Caption:='Низкая срочность';

    Edit1.Text:=IBQuery1IPLOCAL.AsString;
    Edit2.Text:=IBQuery1IPPC.AsString;

    //Информация о пользователе
    if IBQuery1ID_FROM_USER.asInteger<>0 then Label9.Caption:=inttostr(IBQuery1ID_FROM_USER.asInteger)
                                         else Label9.Caption:='';

    IBQuery2.SQL.Clear;
    IBQuery2.SQL.Append('select * from FIRM WHERE ID=:ID');
    IBQuery2.ParamByName('ID').AsInteger:=IBQuery1ID_FROM_FIRM.AsInteger;
    IBQuery2.Close;
    IBQuery2.Open;
    IBQuery2.First;
    Label7.Caption:=IBQuery2NAME.AsString;

    IBQuery3.SQL.Clear;
    IBQuery3.SQL.Append('select * from USERS WHERE ID=:ID');
    IBQuery3.ParamByName('ID').AsInteger:=IBQuery1ID_FROM_USER.AsInteger;
    IBQuery3.Close;
    IBQuery3.Open;
    IBQuery3.First;
    Label8.Caption:=IBQuery3FAMILY.AsString+' '+IBQuery3NAME.AsString+' '+IBQuery3SECOND_NAME.AsString;

    // Информация об исполнителе
    if IBQuery1ID_ISP.asInteger<>0 then Label12.Caption:=inttostr(IBQuery1ID_ISP.asInteger)
                                        else Label12.Caption:='';


    IBQuery3.SQL.Clear;
    IBQuery3.SQL.Append('select * from USERS WHERE ID=:ID');
    IBQuery3.ParamByName('ID').AsInteger:=IBQuery1ID_ISP.AsInteger;
    IBQuery3.Close;
    IBQuery3.Open;
    IBQuery3.First;
    Label11.Caption:=IBQuery3FAMILY.AsString+' '+IBQuery3NAME.AsString+' '+IBQuery3SECOND_NAME.AsString;

    IBQuery2.SQL.Clear;
    IBQuery2.SQL.Append('select * from FIRM WHERE ID=:ID');
    IBQuery2.ParamByName('ID').AsInteger:=IBQuery3ID_FIRM.AsInteger;
    IBQuery2.Close;
    IBQuery2.Open;
    IBQuery2.First;
    Label10.Caption:=IBQuery2NAME.AsString;

    //Загружаем информацию в Memo1
    memo1.ReadOnly:=false;
    memo1.Lines.Clear;
    memo1.Lines.Append(IBQuery1TEMA.AsString);
    memo1.ReadOnly:=true;

    // Разграничиваем доступ к кнопкам управления
    if label12.Caption='' then
                             begin
                              speedbutton1.Enabled:=true;
                              speedbutton2.Enabled:=false;
                              speedbutton3.Enabled:=false;
                              speedbutton4.Enabled:=false;
                              speedbutton5.Enabled:=false;
                             end
                          else
                             begin
                              if strtoint(Label12.Caption)<>unit1.ID_USER then
                              begin
                              speedbutton1.Enabled:=false;
                              speedbutton2.Enabled:=false;
                              speedbutton3.Enabled:=false;
                              speedbutton4.Enabled:=false;
                              speedbutton5.Enabled:=false;
                              end
                              else begin
                              speedbutton1.Enabled:=false;
                              speedbutton2.Enabled:=true;                              
                              speedbutton3.Enabled:=true;
                              speedbutton4.Enabled:=true;
                              speedbutton5.Enabled:=true;

                                   end;

                             end;

    if IBQuery1STATUS.AsInteger>2 then
                                   begin
                              speedbutton1.Enabled:=false;
                              speedbutton2.Enabled:=false;
                              speedbutton3.Enabled:=false;
                              speedbutton4.Enabled:=false;
                              speedbutton5.Enabled:=false;
                                   end;


  end;
end;

procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
 // Забираем заявку к себе на исполнение
  if MessageDlg('Вы действительно хотите забрать данную заявку на исполнение?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin

        // Повторно проверяем не занята ли уже данная запись
            IBQuery1.SQL.Clear;
            IBQuery1.SQL.Append('select * from ZAPROZ WHERE ID=:ID');
            IBQuery1.ParamByName('ID').AsInteger:=strtoint(label1.Caption);
            IBQuery1.Close;
            IBQuery1.Open;
            IBQuery1.First;
            if ((IBQuery1STATUS.AsInteger>1)or(IBQuery1ID_ISP.asInteger<>0)) then begin
                                     FormActivate(SElF);
                                     ShowMessage ('Данная заявка уже занята пользователем')
                                     end
                                     else
                                     begin


         // Заносим данные об исполнителе в БД и меняем ее статус
         IBQuery4.SQL.Clear;
         IBQuery4.SQL.Append('UPDATE ZAPROZ SET ID_ISP=:ID_ISP, STATUS=:STATUS, DATE_RAB=:DATE_RAB WHERE ID=:ID');
         IBQuery4.ParamByName('ID_ISP').AsInteger:=unit1.ID_USER;
         IBQuery4.ParamByName('STATUS').AsInteger:=2;
         IBQuery4.ParamByName('DATE_RAB').AsDateTime:=now;
         IBQuery4.ParamByName('ID').AsInteger:=strtoint(label1.Caption);
         IBQuery4.Close;
         IBQuery4.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;

         // Заносим в лог-таблицу
         IBQuery3.SQL.Clear;
         IBQuery3.SQL.Append('select * from USERS WHERE ID=:ID');
         IBQuery3.ParamByName('ID').AsInteger:=unit1.ID_USER;
         IBQuery3.Close;
         IBQuery3.Open;
         IBQuery3.First;

         IBQuery9.SQL.Clear;
         IBQuery9.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, ID_SHAP, ID_USER, TEXT, FIO) VALUES (:ACT_TYPE, :DATE_GET, :ID_SHAP, :ID_USER, :TEXT, :FIO)');
         IBQuery9.ParamByName('ACT_TYPE').AsString:='Принял заявку';
         IBQuery9.ParamByName('DATE_GET').AsDateTime:=now;
         IBQuery9.ParamByName('ID_SHAP').AsInteger:=strtoint(label1.Caption);
         IBQuery9.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
         IBQuery9.ParamByName('TEXT').AsString:='Оператор забрал заявку на обработку';
         IBQuery9.ParamByName('FIO').AsString:=IBQuery3FAMILY.AsString+' '+IBQuery3NAME.AsString+' '+IBQuery3SECOND_NAME.AsString;
         IBQuery9.Close;
         IBQuery9.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;


         //Обновляем выдачу в текущем окне
         FormActivate(SElF);
         end; //if IBQuery1STATUS>1 then begin
       end;

end;

procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 Timer1.Enabled:=false; // тормозим таймер обработки новых сообщений по данной заявке
end;

procedure TForm7.Timer1Timer(Sender: TObject);
var FL1, j:integer;
begin
 Timer1.Enabled:=false;
 FL1:=1; //Флаг новых сообщений
 // Ищем непрочитанные сообщения
 IBQuery6.SQL.Clear;
 IBQuery6.SQL.Append('select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA AND STATUS=:STATUS ORDER BY ID');
 IBQuery6.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label1.Caption);
 IBQuery6.ParamByName('STATUS').AsInteger:=3;
 IBQuery6.Close;
 IBQuery6.Open;
 IBQuery6.First;
 if not IBQuery6.Eof then
                       begin
                        FL1:=2;
                       end;


 if ((FL1=2)or(FL_NEWMMESSAGE=1)) then

 begin
 // Выводив в ричедит все сообщения
 IBQuery5.SQL.Clear;
 IBQuery5.SQL.Append('select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA ORDER BY ID');
 IBQuery5.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label1.Caption);
 IBQuery5.Close;
 IBQuery5.Open;
 IBQuery5.First;
 RichEdit1.Clear;

 While not IBQuery5.Eof do
  begin

      RichEdit1.ReadOnly:=false;
      RichEdit1.SelAttributes.Color:=clMenuHighLight;
      RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];
     case IBQuery5STATUS.AsInteger of
      1: RichEdit1.Lines.Append(IBQuery5DATE_GET.AsString+' Администратор:');
      2: RichEdit1.Lines.Append(IBQuery5DATE_GET.AsString+' Администратор:');
      3: RichEdit1.Lines.Append(IBQuery5DATE_GET.AsString+ ' Пользователь:');
      4: RichEdit1.Lines.Append(IBQuery5DATE_GET.AsString+ ' Пользователь:');
     end;
      RichEdit1.SelAttributes.Color:=clBlack;
      RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsBold];

      RichEdit1.Lines.Append(IBQuery5TEXT.AsString);
      RichEdit1.Lines.Append(' ');
      RichEdit1.ReadOnly:=true;



  IBQuery5.Next;
  end;
  FL_NEWMMESSAGE:=2;
  RichEdit1.Perform(WM_VScroll, SB_BOTTOM,0);
  RichEdit2.SetFocus;
  end;
  if FL1=2 then begin
                 // Если присутствовали новые сообщения, ставим пометку что они
                 // были прочитаны
                 IBQuery7.SQL.Clear;
                 IBQuery7.SQL.Append('UPDATE ZAPROS_TELO SET ID_ADMIN=:ID_ADMIN, STATUS=:STATUS WHERE STATUS=:STATUS1 AND ID_SHAPKA=:ID_SHAPKA');
                 IBQuery7.ParamByName('ID_ADMIN').AsInteger:=unit1.ID_USER;
                 IBQuery7.ParamByName('STATUS').AsInteger:=4;
                 IBQuery7.ParamByName('STATUS1').AsInteger:=3;
                 IBQuery7.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label1.Caption);
                 IBQuery7.Close;
                 IBQuery7.Open;
                 unit2.DataModule2.IBTransaction1.CommitRetaining;

                   form1.ListView1.Clear;
                 FL1:=1;

                end;

  Timer1.Enabled:=true;
end;

procedure TForm7.SpeedButton2Click(Sender: TObject);
begin
 // Отправляем сообщение пользователю
 if Length(RichEdit2.Lines.Text)>0 then
 begin
    IBQuery8.SQL.Clear;
    IBQuery8.SQL.Append('INSERT INTO ZAPROS_TELO (ID_ADMIN, ID_FROM, ID_SHAPKA, STATUS, DATE_GET, TEXT) VALUES (:ID_ADMIN, :ID_FROM, :ID_SHAPKA, :STATUS, :DATE_GET, :TEXT)');
    IBQuery8.ParamByName('ID_ADMIN').AsInteger:=unit1.ID_USER;
    IBQuery8.ParamByName('ID_FROM').AsInteger:=unit1.ID_USER;
    IBQuery8.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label1.Caption);
    IBQuery8.ParamByName('STATUS').AsInteger:=1;
    IBQuery8.ParamByName('DATE_GET').AsDateTime:=now;
    IBQuery8.ParamByName('TEXT').AsString:=RichEdit2.Lines.Text;
    IBQuery8.Close;
    IBQuery8.Open;
    unit2.DataModule2.IBTransaction1.CommitRetaining;
    RichEdit2.Clear;
    FL_NEWMMESSAGE:=1;
 end;
end;

procedure TForm7.SpeedButton3Click(Sender: TObject);
begin
 // Передаем заявку на обработку другому оператору
 form8.Left:=form7.left+SpeedButton3.Left;
 Form8.Height:=275;
 Form8.Top:=Form7.Top+SpeedButton3.Top+GroupBox2.Top-Form8.Height;
 Form8.Caption:='Операторы';
 form8.showmodal;



 // Фиксируем в лог действие оператора
 // Заносим в лог-таблицу
 {
         IBQuery3.SQL.Clear;
         IBQuery3.SQL.Append('select * from USERS WHERE ID=:ID');
         IBQuery3.ParamByName('ID').AsInteger:=unit1.ID_USER;
         IBQuery3.Close;
         IBQuery3.Open;
         IBQuery3.First;

         IBQuery9.SQL.Clear;
         IBQuery9.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, ID_SHAP, ID_USER, TEXT, FIO) VALUES (:ACT_TYPE, :DATE_GET, :ID_SHAP, :ID_USER, :TEXT, :FIO)');
         IBQuery9.ParamByName('ACT_TYPE').AsString:='Передал заявку';
         IBQuery9.ParamByName('DATE_GET').AsDateTime:=now;
         IBQuery9.ParamByName('ID_SHAP').AsInteger:=strtoint(label1.Caption);
         IBQuery9.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
         IBQuery9.ParamByName('TEXT').AsString:='Оператор передал заявку';
         IBQuery9.ParamByName('FIO').AsString:=IBQuery3FAMILY.AsString+' '+IBQuery3NAME.AsString+' '+IBQuery3SECOND_NAME.AsString;
         IBQuery9.Close;
         IBQuery9.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;
   }
end;

procedure TForm7.SpeedButton4Click(Sender: TObject);
begin
form9.Caption:='HELP_DESK - отклонить заявку №'+label1.Caption;
form9.Label1.Caption:=label1.Caption;
form9.Label2.Caption:=label11.Caption;
form9.Memo1.Lines.Clear;
Form9.showmodal;
end;

procedure TForm7.SpeedButton5Click(Sender: TObject);
begin
 // Если все действия завершены - завершаем заявку
   if MessageDlg('Вы уверены что работы по данной заявке завершены?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       IBQuery10.SQL.Clear;
       IBQuery10.SQL.Append('UPDATE ZAPROZ SET DATE_END=:DATE_END, STATUS=:STATUS WHERE ID=:ID');
       IBQuery10.ParamByName('DATE_END').AsDateTime:=now;
       IBQuery10.ParamByName('STATUS').AsInteger:=3;
       IBQuery10.ParamByName('ID').AsInteger:=strtoint (label1.Caption);
       IBQuery10.Close;
       IBQuery10.Open;

       // Отправляем пользователю соответствующее сообщение
           IBQuery8.SQL.Clear;
      IBQuery8.SQL.Append('INSERT INTO ZAPROS_TELO (ID_ADMIN, ID_FROM, ID_SHAPKA, STATUS, DATE_GET, TEXT) VALUES (:ID_ADMIN, :ID_FROM, :ID_SHAPKA, :STATUS, :DATE_GET, :TEXT)');
      IBQuery8.ParamByName('ID_ADMIN').AsInteger:=unit1.ID_USER;
      IBQuery8.ParamByName('ID_FROM').AsInteger:=unit1.ID_USER;
      IBQuery8.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label1.Caption);
      IBQuery8.ParamByName('STATUS').AsInteger:=1;
      IBQuery8.ParamByName('DATE_GET').AsDateTime:=now;
      IBQuery8.ParamByName('TEXT').AsString:='Ваша заявка выполнена . Просьба оценить качество работы.';
      IBQuery8.Close;
      IBQuery8.Open;
      RichEdit2.Clear;
      FL_NEWMMESSAGE:=1;

      // Сохраняем данные в логе
         IBQuery9.SQL.Clear;
         IBQuery9.SQL.Append('INSERT INTO ACTIONS (ACT_TYPE, DATE_GET, ID_SHAP, ID_USER, TEXT, FIO) VALUES (:ACT_TYPE, :DATE_GET, :ID_SHAP, :ID_USER, :TEXT, :FIO)');
         IBQuery9.ParamByName('ACT_TYPE').AsString:='Завершил заявку';
         IBQuery9.ParamByName('DATE_GET').AsDateTime:=now;
         IBQuery9.ParamByName('ID_SHAP').AsInteger:=strtoint(label1.Caption);
         IBQuery9.ParamByName('ID_USER').AsInteger:=unit1.ID_USER;
         IBQuery9.ParamByName('TEXT').AsString:='Оператор завершил работу по текущей заявке';
         IBQuery9.ParamByName('FIO').AsString:=IBQuery3FAMILY.AsString+' '+IBQuery3NAME.AsString+' '+IBQuery3SECOND_NAME.AsString;
         IBQuery9.Close;
         IBQuery9.Open;
         unit2.DataModule2.IBTransaction1.CommitRetaining;

         //Обновляем выдачу в текущем окне
         FormActivate(SElF);

         Form1.SpeedButton6.Click;
         Form1.SpeedButton2.Click;
         Form1.SpeedButton3.Click;
     end;
end;

procedure TForm7.RichEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (ssCtrl in Shift) and (Key = VK_RETURN) then
if length(RichEdit2.Lines.Text)>1 then speedbutton2.Click;
end;

procedure TForm7.richEditContextMenuPopup(Sender: TObject);
var
  re : TRichEdit;
begin
  re := GetRichEditFromPopup;

  itemUndo.Enabled := re.CanUndo;
  itemCut.Enabled := re.SelText <> '';
  itemCopy.Enabled := re.SelText <> '';
  itemDelete.Enabled := re.SelText <> '';
  itemPaste.Enabled := Clipboard.HasFormat(CF_TEXT) ;
end;

procedure TForm7.itemSelectAllClick(Sender: TObject);
begin
GetRichEditFromPopup.SelectAll;
end;

procedure TForm7.itemCopyClick(Sender: TObject);
begin
GetRichEditFromPopup.CopyToClipboard;
end;

procedure TForm7.itemPasteClick(Sender: TObject);
begin
GetRichEditFromPopup.PasteFromClipboard;
end;

procedure TForm7.itemCutClick(Sender: TObject);
begin
GetRichEditFromPopup.CutToClipboard;
end;

procedure TForm7.itemDeleteClick(Sender: TObject);
begin
GetRichEditFromPopup.ClearSelection;
end;

procedure TForm7.itemUndoClick(Sender: TObject);
begin
GetRichEditFromPopup.Undo;
end;

procedure TForm7.SpeedButton6Click(Sender: TObject);
begin

   
   form15.Caption:='HELP_DESK - Примечание по заявке №'+IBQuery1ID.AsString;
   Form15.Memo1.Clear;
   Form15.Memo1.Lines.Append(IBQuery1OTHER.AsString);
   Form15.ShowModal;

end;

end.
