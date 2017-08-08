unit zapros1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, unit2, unit1, DB,
  IBCustomDataSet, IBQuery, ActnList, Menus,  Clipbrd;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Memo1: TMemo;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    RichEdit1: TRichEdit;
    Splitter1: TSplitter;
    RichEdit2: TRichEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ComboBox1: TComboBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Timer1: TTimer;
    IBQuery1: TIBQuery;
    IBQuery1ID: TIntegerField;
    IBQuery1ID_SHAPKA: TIntegerField;
    IBQuery1DATE_GET: TDateTimeField;
    IBQuery1TEXT: TIBStringField;
    IBQuery1ID_FROM: TIntegerField;
    IBQuery1ID_ADMIN: TIntegerField;
    IBQuery1STATUS: TIntegerField;
    IBQuery1DOP_ZNAK: TIntegerField;
    Label12: TLabel;
    Label13: TLabel;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    SpeedButton5: TSpeedButton;
    ActionList1: TActionList;
    IBQuery6: TIBQuery;
    IBQuery6ID: TIntegerField;
    IBQuery6ID_FROM_FIRM: TIntegerField;
    IBQuery6ID_ISP: TIntegerField;
    IBQuery6ID_FROM_USER: TIntegerField;
    IBQuery6STATUS: TIntegerField;
    IBQuery6SPEED: TIntegerField;
    IBQuery6DATE_GET: TDateTimeField;
    IBQuery6DATE_RAB: TDateTimeField;
    IBQuery6DATE_END: TDateTimeField;
    IBQuery6OCENKA: TIntegerField;
    IBQuery6OTHER: TIBStringField;
    IBQuery6TEMA: TIBStringField;
    Label14: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    richEditContextMenu: TPopupMenu;
    itemUndo: TMenuItem;
    itemCut: TMenuItem;
    itemCopy: TMenuItem;
    itemDelete: TMenuItem;
    itemPaste: TMenuItem;
    itemSelectAll: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RichEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    function GetRichEditFromPopup: TRichEdit;
    procedure SpeedButton5Click(Sender: TObject);

    procedure richEditContextMenuPopup(Sender: TObject);
    procedure itemPasteClick(Sender: TObject);
    procedure itemCutClick(Sender: TObject);
    procedure itemCopyClick(Sender: TObject);
    procedure itemDeleteClick(Sender: TObject);
    procedure itemSelectAllClick(Sender: TObject);
 
    procedure itemUndoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  fl: integer;
implementation

uses zapdel;

{$R *.dfm}

procedure TForm6.Timer1Timer(Sender: TObject);
var ar1:array[1..1000] of integer;
    k, i:integer;
begin
 // Обрабатываем новые сообщения по переписке
  Timer1.Enabled:=false;
  if Label2.Caption<>'Label2' then begin

  // Обрабатываем изменения

  // Сомотрим на флаги шапки запроса (снят ли запрос админом и т.п.)
  IBQuery6.SQL.Clear;
  IBQuery6.SQL.Append('select * from ZAPROZ WHERE ID=:ID');
  IBQuery6.ParamByName('ID').AsInteger:=strtoint(label2.Caption);
  IBQuery6.Close;
  IBQuery6.Open;
  IBQuery6.First;
  if IBQuery6STATUS.AsInteger>2 then begin
                               if IBQuery6STATUS.AsString='3' then  label10.Caption:='Заявка выполнена';
                               if IBQuery6STATUS.AsString='4' then  label10.Caption:='Заявка снята пользователем';
                               if IBQuery6STATUS.AsString='5' then  label10.Caption:='Заявка снята администратором';
                               SpeedButton2.Enabled:=false;
                               SpeedButton5.Enabled:=false;

                               if IBQuery6OCENKA.asString<>'' then
                                begin
                               ComboBox1.Enabled:=false;
                               SpeedButton3.Enabled:=false;
                                end
                                else begin
                               ComboBox1.Enabled:=true;
                               SpeedButton3.Enabled:=true;
                                     end;

                               if length (IBQuery6OTHER.AsString)>1 then
                               SpeedButton4.Enabled:=false
                               else SpeedButton4.Enabled:=true;

                           end;



   //Проверка на новые сообщения
   IBQuery2.SQL.Clear;
   IBQuery2.SQL.Append('select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA AND STATUS=:STATUS');
   IBQuery2.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label2.Caption);
   IBQuery2.ParamByName('STATUS').AsInteger:=1;
   IBQuery2.Close;
   IBQuery2.Open;
   IBQuery2.First;
   If not IBQuery2.Eof then
                         begin
                          // Имеются новые сообщения от администратора
                          fl:=2;

                         end;

   // Выводим новые сообщения на экран
   if fl=2 then
   begin

   RichEdit1.Clear;
   IBQuery1.SQL.Clear;
   IBQuery1.SQL.Append('select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA ORDER BY ID');
   IBQuery1.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label2.Caption);
   IBQuery1.Close;
   IBQuery1.Open;

   IBQuery1.First;
   k:=1;
   While NOT IBQuery1.Eof do
      begin


      RichEdit1.ReadOnly:=false;
      RichEdit1.SelAttributes.Color:=clMenuHighLight;
      RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];
     case IBQuery1STATUS.AsInteger of
      1: RichEdit1.Lines.Append(IBQuery1DATE_GET.AsString+' Администратор:');
      2: RichEdit1.Lines.Append(IBQuery1DATE_GET.AsString+' Администратор:');
      3: RichEdit1.Lines.Append(IBQuery1DATE_GET.AsString+ ' Ваши комментарии:');
      4: RichEdit1.Lines.Append(IBQuery1DATE_GET.AsString+ 'Ваши комментарии:');
     end;
      RichEdit1.SelAttributes.Color:=clBlack;
      RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsBold];
      RichEdit1.Lines.Append(IBQuery1TEXT.AsString);
      RichEdit1.Lines.Append(' ');
      RichEdit1.ReadOnly:=true;

     if (IBQuery1STATUS.AsInteger=1) then
                                  begin
                                    ar1[k]:=IBQuery1ID.AsInteger;
                                    k:=k+1;
                                  end;


       IBQuery1.Next;
        end;

        // В нужных местах помечаем сообщения как уже прочитанные
             // Меняем статус на прочитано
     for i:=1 to k-1 do
     begin
     IBQuery3.SQL.Clear;
     IBQuery3.SQL.Append('UPDATE ZAPROS_TELO SET STATUS=:STATUS where ID=:ID');
     IBQuery3.ParamByName('STATUS').AsInteger:=2;
     IBQuery3.ParamByName('ID').AsInteger:=ar1[i];
     IBQuery3.Close;
     IBQuery3.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     end;
     unit1.Form1.ListView1.Clear;  // Сбрасываем указатель на непрочитанные сообщения
     RichEdit1.Perform(WM_VScroll, SB_BOTTOM,0);
     RichEdit2.SetFocus;




        fl:=1; // Шапку обновлений скидываем в 1
       end;  //   if fl=2 then



  end; // if Label2.Caption<>'Label2' then begin

 Timer1.Enabled:=true;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Timer1.Enabled:=false;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
 IBQuery4.SQL.Clear;
 IBQuery4.SQL.Append('INSERT INTO ZAPROS_TELO (TEXT, STATUS, ID_SHAPKA, ID_FROM, DATE_GET)  VALUES (:TEXT, :STATUS, :ID_SHAPKA, :ID_FROM, :DATE_GET)');
 IBQuery4.ParamByName('TEXT').AsString:=RichEdit2.Lines.Text;
 IBQuery4.ParamByName('STATUS').AsInteger:=3;
 IBQuery4.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label2.Caption);
 IBQuery4.ParamByName('ID_FROM').AsInteger:=unit1.ID_USER;
 IBQuery4.ParamByName('DATE_GET').AsDateTime:=now;
 IBQuery4.Close;
 IBQuery4.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;
// unit2.DataModule2.IBTransaction1.Commit;
 // Обновляем выдачу сообщений
 fl:=2;
 RichEdit2.Clear;
end;

procedure TForm6.RichEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (ssCtrl in Shift) and (Key = VK_RETURN) then
if length(RichEdit2.Lines.Text)>1 then speedbutton2.Click;

end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
 // Сохраняем оценку за работу
if ComboBox1.Text<>'Оценить работу' then
 begin
 IBQuery5.SQL.Clear;
 IBQuery5.SQL.Append('UPDATE ZAPROZ SET OCENKA=:OCENKA WHERE ID=:ID');
 IBQuery5.ParamByName('ID').AsInteger:=strtoint(label2.Caption);
 if ComboBox1.Text='Отлично' then IBQuery5.ParamByName('OCENKA').AsInteger:=5;
 if ComboBox1.Text='Хорошо' then IBQuery5.ParamByName('OCENKA').AsInteger:=4;
 if ComboBox1.Text='Удовлетворительно' then IBQuery5.ParamByName('OCENKA').AsInteger:=3;
 if ComboBox1.Text='Плохо' then IBQuery5.ParamByName('OCENKA').AsInteger:=2;
 if ComboBox1.Text='Отвратительно' then IBQuery5.ParamByName('OCENKA').AsInteger:=1;

 IBQuery5.Close;
 IBQuery5.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;
 ComboBox1.Enabled:=false;

 end;

end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
 // Снимаем заявку с проведения

 form7.Label3.Caption:=label2.Caption;
 Form7.Memo1.Lines.Text:=memo1.Lines.Text;
 Form7.Memo2.Clear;
 form7.showmodal;
end;

function TForm6.GetRichEditFromPopup: TRichEdit;
begin
  //нужно добавить некоторую проверку (if richEditContextMenu.PopupComponent is TRichEdit)
  result := TRichEdit(richEditContextMenu.PopupComponent) ;
end;


procedure TForm6.richEditContextMenuPopup(Sender: TObject);
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

procedure TForm6.itemPasteClick(Sender: TObject);
begin
GetRichEditFromPopup.PasteFromClipboard;
end;

procedure TForm6.itemCutClick(Sender: TObject);
begin
GetRichEditFromPopup.CutToClipboard;
end;

procedure TForm6.itemCopyClick(Sender: TObject);
begin
GetRichEditFromPopup.CopyToClipboard;
end;

procedure TForm6.itemDeleteClick(Sender: TObject);
begin
 GetRichEditFromPopup.ClearSelection;
end;

procedure TForm6.itemSelectAllClick(Sender: TObject);
begin
GetRichEditFromPopup.SelectAll;
end;

procedure TForm6.itemUndoClick(Sender: TObject) ;
begin
  GetRichEditFromPopup.Undo;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
form6.SpeedButton4.Visible:=false
end;

end.
