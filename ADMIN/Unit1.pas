unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, unit2, DB, IBCustomDataSet, IBQuery, Grids,
  DBGrids, Buttons, ExtCtrls, StdCtrls, ImgList, DateUtils,th1, th2, unit4, IBBackGroundQuery,
  frxClass, frxDBSet, frxDesgn, frxExportXLS, frxExportImage;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DataSource1: TDataSource;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery2ID: TIntegerField;
    IBQuery2NAME: TIBStringField;
    IBQuery2ADRESS: TIBStringField;
    IBQuery2PHONE: TIBStringField;
    IBQuery2OTHER: TIBStringField;
    IBQuery2UIN1: TIntegerField;
    IBQuery2ACT: TIntegerField;
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
    IBQuery3: TIBQuery;
    DataSource2: TDataSource;
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
    DataSource3: TDataSource;
    IBQuery4ID: TIntegerField;
    IBQuery4ID_FROM_FIRM: TIntegerField;
    IBQuery4ID_ISP: TIntegerField;
    IBQuery4ID_FROM_USER: TIntegerField;
    IBQuery4STATUS: TIntegerField;
    IBQuery4SPEED: TIntegerField;
    IBQuery4DATE_GET: TDateTimeField;
    IBQuery4DATE_RAB: TDateTimeField;
    IBQuery4DATE_END: TDateTimeField;
    IBQuery4OCENKA: TIntegerField;
    IBQuery4OTHER: TIBStringField;
    IBQuery4TEMA: TIBStringField;
    Panel2: TPanel;
    Splitter1: TSplitter;
    ListView1: TListView;
    Timer1: TTimer;
    IBQuery5: TIBQuery;
    IBQuery6: TIBQuery;
    IBQuery5ID: TIntegerField;
    IBQuery5ID_FROM_FIRM: TIntegerField;
    IBQuery5ID_ISP: TIntegerField;
    IBQuery5ID_FROM_USER: TIntegerField;
    IBQuery5STATUS: TIntegerField;
    IBQuery5SPEED: TIntegerField;
    IBQuery5DATE_GET: TDateTimeField;
    IBQuery5DATE_RAB: TDateTimeField;
    IBQuery5DATE_END: TDateTimeField;
    IBQuery5OCENKA: TIntegerField;
    IBQuery5OTHER: TIBStringField;
    IBQuery5TEMA: TIBStringField;
    ImageList1: TImageList;
    IBQuery6ID: TIntegerField;
    IBQuery6ID_SHAPKA: TIntegerField;
    IBQuery6DATE_GET: TDateTimeField;
    IBQuery6TEXT: TIBStringField;
    IBQuery6ID_FROM: TIntegerField;
    IBQuery6ID_ADMIN: TIntegerField;
    IBQuery6STATUS: TIntegerField;
    IBQuery6DOP_ZNAK: TIntegerField;
    Timer2: TTimer;
    Timer3: TTimer;
    N4: TMenuItem;
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
    IBQuery8: TIBQuery;
    IBQuery8ID: TIntegerField;
    IBQuery8NAME: TIBStringField;
    IBQuery8ADRESS: TIBStringField;
    IBQuery8PHONE: TIBStringField;
    IBQuery8OTHER: TIBStringField;
    IBQuery8UIN1: TIntegerField;
    IBQuery8ACT: TIntegerField;
    Timer4: TTimer;
    IBQuery9: TIBQuery;
    IBQuery9ID_ISP: TIntegerField;
    IBQuery10: TIBQuery;
    IBQuery11: TIBQuery;
    IBQuery11ID: TIntegerField;
    IBQuery11NAME: TIBStringField;
    IBQuery11SECOND_NAME: TIBStringField;
    IBQuery11FAMILY: TIBStringField;
    IBQuery11PASS: TIBStringField;
    IBQuery11ROLE: TIBStringField;
    IBQuery11DOLGNOST: TIBStringField;
    IBQuery11OTDEL: TIBStringField;
    IBQuery11ID_FIRM: TIntegerField;
    IBQuery10ID: TIntegerField;
    IBQuery10ID_FROM_FIRM: TIntegerField;
    IBQuery10ID_ISP: TIntegerField;
    IBQuery10ID_FROM_USER: TIntegerField;
    IBQuery10STATUS: TIntegerField;
    IBQuery10SPEED: TIntegerField;
    IBQuery10DATE_GET: TDateTimeField;
    IBQuery10DATE_RAB: TDateTimeField;
    IBQuery10DATE_END: TDateTimeField;
    IBQuery10OCENKA: TIntegerField;
    IBQuery10OTHER: TIBStringField;
    IBQuery10TEMA: TIBStringField;
    Help1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    IBQuery4ID1: TIntegerField;
    IBQuery4NAME: TIBStringField;
    IBQuery4SECOND_NAME: TIBStringField;
    IBQuery4FAMILY: TIBStringField;
    IBQuery4PASS: TIBStringField;
    IBQuery4ROLE: TIBStringField;
    IBQuery4DOLGNOST: TIBStringField;
    IBQuery4OTDEL: TIBStringField;
    IBQuery4ID_FIRM: TIntegerField;
    IBQuery3ID1: TIntegerField;
    IBQuery3NAME: TIBStringField;
    IBQuery3SECOND_NAME: TIBStringField;
    IBQuery3FAMILY: TIBStringField;
    IBQuery3PASS: TIBStringField;
    IBQuery3ROLE: TIBStringField;
    IBQuery3DOLGNOST: TIBStringField;
    IBQuery3OTDEL: TIBStringField;
    IBQuery3ID_FIRM: TIntegerField;
    IBQuery1NAME: TIBStringField;
    IBQuery12: TIBQuery;
    IBQuery12ID: TIntegerField;
    IBQuery12ID_FROM_FIRM: TIntegerField;
    IBQuery12ID_ISP: TIntegerField;
    IBQuery12ID_FROM_USER: TIntegerField;
    IBQuery12STATUS: TIntegerField;
    IBQuery12SPEED: TIntegerField;
    IBQuery12DATE_GET: TDateTimeField;
    IBQuery12DATE_RAB: TDateTimeField;
    IBQuery12DATE_END: TDateTimeField;
    IBQuery12OCENKA: TIntegerField;
    IBQuery12OTHER: TIBStringField;
    IBQuery12TEMA: TIBStringField;
    IBQuery12IPLOCAL: TIBStringField;
    IBQuery12IPPC: TIBStringField;
    IBQuery12ID1: TIntegerField;
    IBQuery12NAME: TIBStringField;
    IBQuery12SECOND_NAME: TIBStringField;
    IBQuery12FAMILY: TIBStringField;
    IBQuery12PASS: TIBStringField;
    IBQuery12ROLE: TIBStringField;
    IBQuery12DOLGNOST: TIBStringField;
    IBQuery12OTDEL: TIBStringField;
    IBQuery12ID_FIRM: TIntegerField;
    IBQuery13: TIBQuery;
    IBQuery13ID: TIntegerField;
    IBQuery13NAME: TIBStringField;
    IBQuery13ADRESS: TIBStringField;
    IBQuery13PHONE: TIBStringField;
    IBQuery13OTHER: TIBStringField;
    IBQuery13UIN1: TIntegerField;
    IBQuery13ACT: TIntegerField;
    IBQuery5IPLOCAL: TIBStringField;
    IBQuery5IPPC: TIBStringField;
    IBQuery5ID1: TIntegerField;
    IBQuery5ID_SHAPKA: TIntegerField;
    IBQuery5DATE_GET1: TDateTimeField;
    IBQuery5TEXT: TIBStringField;
    IBQuery5ID_FROM: TIntegerField;
    IBQuery5ID_ADMIN: TIntegerField;
    IBQuery5STATUS1: TIntegerField;
    IBQuery5DOP_ZNAK: TIntegerField;
    Timer5: TTimer;
    IBQuery1IPLOCAL: TIBStringField;
    IBQuery1IPPC: TIBStringField;
    IBQuery1ID1: TIntegerField;
    IBQuery1SECOND_NAME: TIBStringField;
    IBQuery1PASS: TIBStringField;
    IBQuery1ROLE: TIBStringField;
    IBQuery1DOLGNOST: TIBStringField;
    IBQuery1OTDEL: TIBStringField;
    IBQuery1ID_FIRM: TIntegerField;
    IBQuery1USLOGIN: TIBStringField;
    IBQuery14: TIBQuery;
    IBQuery14ID: TIntegerField;
    IBQuery14ID_FROM_FIRM: TIntegerField;
    IBQuery14ID_ISP: TIntegerField;
    IBQuery14ID_FROM_USER: TIntegerField;
    IBQuery14STATUS: TIntegerField;
    IBQuery14SPEED: TIntegerField;
    IBQuery14DATE_GET: TDateTimeField;
    IBQuery14DATE_RAB: TDateTimeField;
    IBQuery14DATE_END: TDateTimeField;
    IBQuery14OCENKA: TIntegerField;
    IBQuery14OTHER: TIBStringField;
    IBQuery14TEMA: TIBStringField;
    IBQuery14IPLOCAL: TIBStringField;
    IBQuery14IPPC: TIBStringField;
    IBQuery14ID1: TIntegerField;
    IBQuery14NAME: TIBStringField;
    IBQuery14SECOND_NAME: TIBStringField;
    IBQuery14FAMILY: TIBStringField;
    IBQuery14PASS: TIBStringField;
    IBQuery14ROLE: TIBStringField;
    IBQuery14DOLGNOST: TIBStringField;
    IBQuery14OTDEL: TIBStringField;
    IBQuery14ID_FIRM: TIntegerField;
    IBQuery14USLOGIN: TIBStringField;
    IBQuery15: TIBQuery;
    IBQuery16: TIBQuery;
    IBQuery15ID: TIntegerField;
    IBQuery15ID_FROM_FIRM: TIntegerField;
    IBQuery15ID_ISP: TIntegerField;
    IBQuery15ID_FROM_USER: TIntegerField;
    IBQuery15STATUS: TIntegerField;
    IBQuery15SPEED: TIntegerField;
    IBQuery15DATE_GET: TDateTimeField;
    IBQuery15DATE_RAB: TDateTimeField;
    IBQuery15DATE_END: TDateTimeField;
    IBQuery15OCENKA: TIntegerField;
    IBQuery15OTHER: TIBStringField;
    IBQuery15TEMA: TIBStringField;
    IBQuery15IPLOCAL: TIBStringField;
    IBQuery15IPPC: TIBStringField;
    IBQuery15ID1: TIntegerField;
    IBQuery15NAME: TIBStringField;
    IBQuery15SECOND_NAME: TIBStringField;
    IBQuery15FAMILY: TIBStringField;
    IBQuery15PASS: TIBStringField;
    IBQuery15ROLE: TIBStringField;
    IBQuery15DOLGNOST: TIBStringField;
    IBQuery15OTDEL: TIBStringField;
    IBQuery15ID_FIRM: TIntegerField;
    IBQuery15USLOGIN: TIBStringField;
    IBQuery16ID: TIntegerField;
    IBQuery16ID_FROM_FIRM: TIntegerField;
    IBQuery16ID_ISP: TIntegerField;
    IBQuery16ID_FROM_USER: TIntegerField;
    IBQuery16STATUS: TIntegerField;
    IBQuery16SPEED: TIntegerField;
    IBQuery16DATE_GET: TDateTimeField;
    IBQuery16DATE_RAB: TDateTimeField;
    IBQuery16DATE_END: TDateTimeField;
    IBQuery16OCENKA: TIntegerField;
    IBQuery16OTHER: TIBStringField;
    IBQuery16TEMA: TIBStringField;
    IBQuery16IPLOCAL: TIBStringField;
    IBQuery16IPPC: TIBStringField;
    IBQuery16ID1: TIntegerField;
    IBQuery16NAME: TIBStringField;
    IBQuery16SECOND_NAME: TIBStringField;
    IBQuery16FAMILY: TIBStringField;
    IBQuery16PASS: TIBStringField;
    IBQuery16ROLE: TIBStringField;
    IBQuery16DOLGNOST: TIBStringField;
    IBQuery16OTDEL: TIBStringField;
    IBQuery16ID_FIRM: TIntegerField;
    IBQuery16USLOGIN: TIBStringField;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    IBQuery17: TIBQuery;
    IBQuery17USLOGIN: TIBStringField;
    IBQuery17NAME: TIBStringField;
    IBQuery17FAMILY: TIBStringField;
    IBQuery17SECOND_NAME: TIBStringField;
    IBQuery17IPLOCAL: TIBStringField;
    IBQuery18: TIBQuery;
    IBQuery18USLOGIN: TIBStringField;
    IBQuery18NAME: TIBStringField;
    IBQuery18FAMILY: TIBStringField;
    IBQuery18SECOND_NAME: TIBStringField;
    IBQuery18IPLOCAL: TIBStringField;
    IBQuery18STATUS: TIntegerField;
    IBQuery18ID: TIntegerField;
    IBQuery18PASS: TIBStringField;
    IBQuery18ROLE: TIBStringField;
    IBQuery18DOLGNOST: TIBStringField;
    IBQuery18OTDEL: TIBStringField;
    IBQuery18ID_FIRM: TIntegerField;
    IBQuery18ID1: TIntegerField;
    IBQuery18ID_FROM_FIRM: TIntegerField;
    IBQuery18ID_ISP: TIntegerField;
    IBQuery18ID_FROM_USER: TIntegerField;
    IBQuery18SPEED: TIntegerField;
    IBQuery18DATE_GET: TDateTimeField;
    IBQuery18DATE_RAB: TDateTimeField;
    IBQuery18DATE_END: TDateTimeField;
    IBQuery18OCENKA: TIntegerField;
    IBQuery18OTHER: TIBStringField;
    IBQuery18TEMA: TIBStringField;
    IBQuery18IPPC: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Label21: TLabel;
    SpeedButton6: TSpeedButton;
    Label53: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    ComboBox3: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    CheckBox4: TCheckBox;
    CheckBox7: TCheckBox;
    Edit4: TEdit;
    CheckBox9: TCheckBox;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    Label13: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    CheckBox2: TCheckBox;
    ComboBox6: TComboBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Edit2: TEdit;
    CheckBox3: TCheckBox;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton3: TSpeedButton;
    Label19: TLabel;
    Label20: TLabel;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    CheckBox5: TCheckBox;
    ComboBox9: TComboBox;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Edit3: TEdit;
    CheckBox6: TCheckBox;
    ComboBox10: TComboBox;
    DBGrid3: TDBGrid;
    TabSheet4: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Panel3: TPanel;
    Label22: TLabel;
    SpeedButton4: TSpeedButton;
    ComboBox11: TComboBox;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    GroupBox5: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    TabSheet6: TTabSheet;
    Panel4: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    SpeedButton5: TSpeedButton;
    Label47: TLabel;
    CheckBox8: TCheckBox;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    Panel5: TPanel;
    StringGrid1: TStringGrid;
    TabSheet7: TTabSheet;
    Panel6: TPanel;
    SpeedButton7: TSpeedButton;
    Label54: TLabel;
    Label55: TLabel;
    Edit5: TEdit;
    DateTimePicker9: TDateTimePicker;
    DateTimePicker10: TDateTimePicker;
    CheckBox10: TCheckBox;
    Panel7: TPanel;
    DBGrid4: TDBGrid;
    Panel8: TPanel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    frxReport1: TfrxReport;
    SpeedButton8: TSpeedButton;
    frxDBDataset1: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    PopupMenu1: TPopupMenu;
    JPG1: TMenuItem;
    IF1: TMenuItem;
    frxXLSExport1: TfrxXLSExport;
    XLS1: TMenuItem;
    N7: TMenuItem;
    Label65: TLabel;
    Edit6: TEdit;
    Label66: TLabel;
    Edit7: TEdit;
    Label67: TLabel;
    Edit8: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ComboBox10Change(Sender: TObject);
    procedure DBGrid3TitleClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure N4Click(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer5Timer(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CheckBox9Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure JPG1Click(Sender: TObject);
    procedure IF1Click(Sender: TObject);
    procedure XLS1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);





  private
    { Private declarations }
     
  public
    Thread1: TSimpleThread;
    { Public declarations }
  end;

var
  Form1: TForm1;
  Login_Flag, ID_LOCAL_FIRM: integer;
  NAME_USER, FAMILY_USER:string;
  ID_USER:Integer;
  ROLE_USER, speedtime:string;
  adm:array[1..500] of integer;
  tus1, ten1_count, ten2_count, ten3_count:integer;
  variant: integer;
implementation

uses login, users, zapros, loglist, Unit11;

var   IBBackQ: TIBBackGroundQuery;

{$R *.dfm}




procedure TForm1.FormCreate(Sender: TObject);
begin
  Login_Flag:=1;
                    ListView1.Clear;
                    ListView1.Columns[0].Caption:='Комментарий';
                    ListView1.Columns[0].Width:=550;
                    ListView1.Columns[1].Caption:='№ Заявки';
                    ListView1.Columns[1].Width:=150;
                    Edit4.Text:=speedtime;

                             Form1.label56.Caption:='Среднее время выполнения: ';
         Form1.label57.Caption:='Среднее время ожидания:   ';
         label64.Caption:='Средний бал: ';
          Form1.label58.Caption:='Заявок зарегистрировано: ';
          Form1.label59.Caption:='Исполнено:  ';
          Form1.label60.Caption:='В процессе: ';
          Form1.label61.Caption:='В ожидании: ';

          Form1.label62.Caption:='Отклонено администратором: ';
          Form1.label63.Caption:='Снято пользователем:       ';
          Form1.edit5.Text:='';

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if Login_Flag=1 then form3.showmodal;

end;

procedure TForm1.N3Click(Sender: TObject);
begin
 form4.Edit1.Text:='';
 form4.showmodal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var sql:string;
    id_f, l1, speed, status, flh1:integer;
    bm:string;
    Bookmark: TBookmark;
begin
  // Формируем строку запроса


  flh1:=0;
 // IBQuery1.DisableControls;
  if not IBQuery1.IsEmpty then begin
                                    IBQuery1.DisableControls;
                                    Bookmark:=IBQuery1.GetBookmark;
                                    flh1:=1;
                               end;
  l1:=1; // Флак для учета AND в запросах
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox1.Text<>'Не имеет значения')or(ComboBox2.Text<>'Не имеет значения')or(ComboBox3.Text<>'Не имеет значения')or(length(Edit1.text)>0)or(CheckBox1.Checked))
   then IBQuery1.SQL.Append(' WHERE');
  if ComboBox1.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox1.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery1.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox3.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox3.Text='Высокая срочность' then speed:=1;
      if ComboBox3.Text='Средняя срочность' then speed:=2;
      if ComboBox3.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox2.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox2.Text='Заявка не обработана' then status:=1;
     if ComboBox2.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox2.Text='Заявка выполнена' then status:=3;
     if ComboBox2.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox2.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox1.Checked) then
     begin
       if l1=2 then IBQuery1.SQL.Append(' AND');
       IBQuery1.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit1.Text)>0) then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

   if (Length(Edit6.Text)>0) then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' (USERS.FAMILY LIKE :USENAME OR USERS.USLOGIN LIKE :USENAME)');
      l1:=2;
     end;


    if checkBox4.Checked then IBQuery1.SQL.Append(' order by ZAPROZ.SPEED')
                         else IBQuery1.SQL.Append(' order by ZAPROZ.ID');



  // Заполняем значения для запроса
   if ComboBox1.Text<>'Не имеет значения' then begin
                                                  IBQuery1.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;

                                               end;
   if ComboBox2.Text<>'Не имеет значения' then begin
                                                 IBQuery1.ParamByName('STATUS').AsInteger:=status;

                                               end;
   if ComboBox3.Text<>'Не имеет значения' then begin
                                                 IBQuery1.ParamByName('SPEED').AsInteger:=speed;

                                               end;
   if (CheckBox1.Checked) then
     begin
      IBQuery1.ParamByName('DATE_ONE').AsDate:=TRUNC(DateTimePicker1.Date);
      IBQuery1.ParamByName('DATE_DVA').AsDate:=TRUNC(DateTimePicker2.Date)+1;
     end;
   if (Length(Edit1.Text)>0) then begin
                                      IBQuery1.ParamByName('ID').AsInteger:=strtoint(Edit1.Text);
                                  end;
      if (Length(Edit6.Text)>0) then begin
                                      IBQuery1.ParamByName('USENAME').AsString:='%'+Edit6.Text+'%';
                                  end;

   
   IBQuery1.Close;
   IBQuery1.Open;

   IBQuery1.FetchAll;

   Label51.Caption:=inttostr(IBQuery1.RecordCount);
   //IBQuery1.last;


   if (flh1=1) and (strtoint(Label51.caption)<>0) then
    begin
    IBQuery1.GotoBookmark(Bookmark);
    IBQuery1.FreeBookmark(Bookmark);
    end;


   IBQuery1.EnableControls;
end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
var sql:string;
    id_f, l1, speed, status:integer;
begin

if column.Title.Caption='№ заявки' then sql:=' ZAPROZ.ID';
if column.Title.Caption='Дата получения' then sql:=' ZAPROZ.DATE_GET';
if column.Title.Caption='Дата начала работ' then sql:=' ZAPROZ.DATE_RAB';
if column.Title.Caption='Дата окончания работ' then sql:=' ZAPROZ.DATE_END';
if column.Title.Caption='ТЕМА' then sql:=' ZAPROZ.TEMA';
   // Формируем строку запроса
  l1:=1; // Флак для учета AND в запросах
  IBQuery1.SQL.Clear;
  IBQuery1.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox1.Text<>'Не имеет значения')or(ComboBox2.Text<>'Не имеет значения')or(ComboBox3.Text<>'Не имеет значения')or(length(Edit1.text)>0)or(CheckBox1.Checked))
   then IBQuery1.SQL.Append(' WHERE');
  if ComboBox1.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox1.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery1.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox3.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox3.Text='Высокая срочность' then speed:=1;
      if ComboBox3.Text='Средняя срочность' then speed:=2;
      if ComboBox3.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox2.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox2.Text='Заявка не обработана' then status:=1;
     if ComboBox2.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox2.Text='Заявка выполнена' then status:=3;
     if ComboBox2.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox2.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox1.Checked) then
     begin
       if l1=2 then IBQuery1.SQL.Append(' AND');
       IBQuery1.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<=:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit1.Text)>0) then
     begin
      if l1=2 then IBQuery1.SQL.Append(' AND');
      IBQuery1.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;
  IBQuery1.SQL.Append(' order by'+sql);


  // Заполняем значения для запроса
   if ComboBox1.Text<>'Не имеет значения' then IBQuery1.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
   if ComboBox2.Text<>'Не имеет значения' then IBQuery1.ParamByName('STATUS').AsInteger:=status;
   if ComboBox3.Text<>'Не имеет значения' then IBQuery1.ParamByName('SPEED').AsInteger:=speed;
   if (CheckBox1.Checked) then
     begin
      IBQuery1.ParamByName('DATE_ONE').AsDate:=DateTimePicker1.Date;
      IBQuery1.ParamByName('DATE_DVA').AsDate:=DateTimePicker2.Date;
     end;
   if (Length(Edit1.Text)>0) then IBQuery1.ParamByName('ID').AsInteger:=strtoint(Edit1.Text);
   IBQuery1.Close;
   IBQuery1.Open;


end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

    if IBQuery1SPEED.AsInteger=1 then
    DBGrid1.Canvas.Brush.Color:= clFuchsia;
    if IBQuery1SPEED.AsInteger=2 then
    DBGrid1.Canvas.Brush.Color:= TColor($004080FD);
    if IBQuery1SPEED.AsInteger=3 then
    DBGrid1.Canvas.Brush.Color:= clSkyBlue;

    if IBQuery1STATUS.AsInteger>2 then
    begin
    DBGrid1.Canvas.Brush.Color:= clWindow;
    TDBGrid(Sender).Canvas.Font.Color := clblack;
    IF gdSelected IN State Then
Begin
TDBGrid(Sender).Canvas.Brush.Color:= $847000;
TDBGrid(Sender).Canvas.Font.Color := clWhite;
End;
    end;


  DBGrid1.DefaultDrawColumnCell
    (Rect, DataCol, Column, State);
end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if IBQuery3SPEED.AsInteger=1 then
    DBGrid2.Canvas.Brush.Color:= clFuchsia;
    if IBQuery3SPEED.AsInteger=2 then
    DBGrid2.Canvas.Brush.Color:= TColor($004080FD);
    if IBQuery3SPEED.AsInteger=3 then
    DBGrid2.Canvas.Brush.Color:= clSkyBlue;
    //if IBQuery3STATUS.AsInteger>2 then
    //DBGrid2.Canvas.Brush.Color:= clWindow;
        if IBQuery3STATUS.AsInteger>2 then
    begin
    DBGrid2.Canvas.Brush.Color:= clWindow;
    TDBGrid(Sender).Canvas.Font.Color := clblack;
    IF gdSelected IN State Then
Begin
TDBGrid(Sender).Canvas.Brush.Color:= $847000;
TDBGrid(Sender).Canvas.Font.Color := clWhite;
End;
    end;

  DBGrid2.DefaultDrawColumnCell
    (Rect, DataCol, Column, State);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var sql:string;
    id_f, l1, speed, status:integer;
begin
  // Формируем строку запроса
  l1:=1; // Флак для учета AND в запросах
  IBQuery3.SQL.Clear;
  IBQuery3.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');

  //if ((ComboBox4.Text<>'Не имеет значения')or(ComboBox5.Text<>'Не имеет значения')or(ComboBox6.Text<>'Не имеет значения')or(length(Edit2.text)>0)or(CheckBox2.Checked))
  // then
   IBQuery3.SQL.Append(' WHERE');

  if ComboBox4.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox4.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery3.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox6.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox6.Text='Высокая срочность' then speed:=1;
      if ComboBox6.Text='Средняя срочность' then speed:=2;
      if ComboBox6.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox5.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox5.Text='Заявка не обработана' then status:=1;
     if ComboBox5.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox5.Text='Заявка выполнена' then status:=3;
     if ComboBox5.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox5.Text='Заявка снята Администратором' then status:=5;
     end;



  if (CheckBox2.Checked) then
     begin
       if l1=2 then IBQuery3.SQL.Append(' AND');
       IBQuery3.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit2.Text)>0) then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

     if (Length(Edit7.Text)>0) then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' (USERS.FAMILY LIKE :USENAME OR USERS.USLOGIN LIKE :USENAME)');
      l1:=2;
     end;


      if l1=2 then IBQuery3.SQL.Append(' AND ZAPROZ.ID_ISP=:ID_ISP')
              else IBQuery3.SQL.Append(' ZAPROZ.ID_ISP=:ID_ISP');


  if checkBox3.Checked then IBQuery3.SQL.Append(' order by ZAPROZ.SPEED')
                       else IBQuery3.SQL.Append(' order by ZAPROZ.ID');


  // Заполняем значения для запроса
   if ComboBox4.Text<>'Не имеет значения' then IBQuery3.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
   if ComboBox5.Text<>'Не имеет значения' then IBQuery3.ParamByName('STATUS').AsInteger:=status;
   if ComboBox6.Text<>'Не имеет значения' then IBQuery3.ParamByName('SPEED').AsInteger:=speed;
   if (CheckBox2.Checked) then
     begin
      IBQuery3.ParamByName('DATE_ONE').AsDate:=TRUNC(DateTimePicker3.Date);
      IBQuery3.ParamByName('DATE_DVA').AsDate:=TRUNC(DateTimePicker4.Date)+1;
     end;
   if (Length(Edit2.Text)>0) then IBQuery3.ParamByName('ID').AsInteger:=strtoint(Edit2.Text);
    if (Length(Edit7.Text)>0) then IBQuery3.ParamByName('USENAME').AsString:='%'+Edit7.Text+'%';
   IBQuery3.ParamByName('ID_ISP').AsInteger:=unit1.ID_USER;


   IBQuery3.Close;
   IBQuery3.Open;

end;

procedure TForm1.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if IBQuery4SPEED.AsInteger=1 then
    DBGrid3.Canvas.Brush.Color:= clFuchsia;
    if IBQuery4SPEED.AsInteger=2 then
    DBGrid3.Canvas.Brush.Color:= TColor($004080FD);
    if IBQuery4SPEED.AsInteger=3 then
    DBGrid3.Canvas.Brush.Color:= clSkyBlue;

   // if IBQuery4STATUS.AsInteger>2 then
   // DBGrid3.Canvas.Brush.Color:= clWindow;


     if IBQuery4STATUS.AsInteger>2 then
    begin
    DBGrid3.Canvas.Brush.Color:= clWindow;
    TDBGrid(Sender).Canvas.Font.Color := clblack;
    IF gdSelected IN State Then
Begin
TDBGrid(Sender).Canvas.Brush.Color:= $847000;
TDBGrid(Sender).Canvas.Font.Color := clWhite;
End;
    end;



  DBGrid3.DefaultDrawColumnCell
    (Rect, DataCol, Column, State);
end;

procedure TForm1.DBGrid2TitleClick(Column: TColumn);
var sql:string;
    id_f, l1, speed, status:integer;
begin



if column.Title.Caption='№ заявки' then sql:=' ZAPROZ.ID';
if column.Title.Caption='Дата получения' then sql:=' ZAPROZ.DATE_GET';
if column.Title.Caption='Дата начала работ' then sql:=' ZAPROZ.DATE_RAB';
if column.Title.Caption='Дата окончания работ' then sql:=' ZAPROZ.DATE_END';
if column.Title.Caption='ТЕМА' then sql:=' TEMA';

  // Формируем строку запроса
  l1:=1; // Флак для учета AND в запросах
  IBQuery3.SQL.Clear;
  IBQuery3.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox4.Text<>'Не имеет значения')or(ComboBox5.Text<>'Не имеет значения')or(ComboBox6.Text<>'Не имеет значения')or(length(Edit2.text)>0)or(CheckBox2.Checked))
   then IBQuery3.SQL.Append(' WHERE');
  if ComboBox4.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox4.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery3.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox4.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox6.Text='Высокая срочность' then speed:=1;
      if ComboBox6.Text='Средняя срочность' then speed:=2;
      if ComboBox6.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox5.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox5.Text='Заявка не обработана' then status:=1;
     if ComboBox5.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox5.Text='Заявка выполнена' then status:=3;
     if ComboBox5.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox5.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox2.Checked) then
     begin
       if l1=2 then IBQuery3.SQL.Append(' AND');
       IBQuery3.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<=:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit2.Text)>0) then
     begin
      if l1=2 then IBQuery3.SQL.Append(' AND');
      IBQuery3.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

      if l1=2 then IBQuery3.SQL.Append(' AND ZAPROZ.ID_ISP=:ID_ISP')
              else IBQuery3.SQL.Append(' ZAPROZ.ID_ISP=:ID_ISP');


    IBQuery3.SQL.Append(' order by'+sql);


  // Заполняем значения для запроса
   if ComboBox4.Text<>'Не имеет значения' then IBQuery3.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
   if ComboBox5.Text<>'Не имеет значения' then IBQuery3.ParamByName('STATUS').AsInteger:=status;
   if ComboBox6.Text<>'Не имеет значения' then IBQuery3.ParamByName('SPEED').AsInteger:=speed;
   if (CheckBox2.Checked) then
     begin
      IBQuery3.ParamByName('DATE_ONE').AsDate:=DateTimePicker3.Date;
      IBQuery3.ParamByName('DATE_DVA').AsDate:=DateTimePicker4.Date;
     end;
   if (Length(Edit2.Text)>0) then IBQuery3.ParamByName('ID').AsInteger:=strtoint(Edit2.Text);
   IBQuery3.ParamByName('ID_ISP').AsInteger:=unit1.ID_USER;
   IBQuery3.Close;
   IBQuery3.Open;



end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var sql:string;
    id_f, l1, speed, status, IDISP:integer;
begin
  // Формируем строку запроса
  l1:=1; // Флак для учета AND в запросах
  IBQuery4.SQL.Clear;
  IBQuery4.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox7.Text<>'Не имеет значения')or(ComboBox8.Text<>'Не имеет значения')or(ComboBox9.Text<>'Не имеет значения')or(ComboBox10.Text<>'')or(length(Edit3.text)>0)or(CheckBox5.Checked))
   then IBQuery4.SQL.Append(' WHERE');
  if ComboBox7.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox7.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery4.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox9.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox9.Text='Высокая срочность' then speed:=1;
      if ComboBox9.Text='Средняя срочность' then speed:=2;
      if ComboBox9.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox8.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox8.Text='Заявка не обработана' then status:=1;
     if ComboBox8.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox8.Text='Заявка выполнена' then status:=3;
     if ComboBox8.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox8.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox5.Checked) then
     begin
       if l1=2 then IBQuery4.SQL.Append(' AND');
       IBQuery4.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit3.Text)>0) then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

     if (Length(Edit8.Text)>0) then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' (USERS.FAMILY LIKE :USENAME OR USERS.USLOGIN LIKE :USENAME)');
      l1:=2;
     end;


     if ComboBox10.Text<>'' then begin

      if l1=2 then IBQuery4.SQL.Append(' AND ZAPROZ.ID_ISP=:ID_ISP')
              else IBQuery4.SQL.Append(' ZAPROZ.ID_ISP=:ID_ISP');
     end;

  if checkBox6.Checked then IBQuery4.SQL.Append(' order by ZAPROZ.SPEED')
                       else IBQuery4.SQL.Append(' order by ZAPROZ.ID');


  // Заполняем значения для запроса
   if ComboBox7.Text<>'Не имеет значения' then IBQuery4.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
   if ComboBox8.Text<>'Не имеет значения' then IBQuery4.ParamByName('STATUS').AsInteger:=status;
   if ComboBox9.Text<>'Не имеет значения' then IBQuery4.ParamByName('SPEED').AsInteger:=speed;
   if (CheckBox5.Checked) then
     begin
      IBQuery4.ParamByName('DATE_ONE').AsDate:=TRUNC(DateTimePicker5.Date);
      IBQuery4.ParamByName('DATE_DVA').AsDate:=TRUNC(DateTimePicker6.Date)+1;
     end;
   if (Length(Edit3.Text)>0) then IBQuery4.ParamByName('ID').AsInteger:=strtoint(Edit3.Text);
   if (Length(Edit8.Text)>0) then begin
                                      IBQuery4.ParamByName('USENAME').AsString:='%'+Edit8.Text+'%';
                                  end;

   if ComboBox10.Text<>'' then begin
                               IDISP:=adm[ComboBox10.Items.IndexOf(ComboBox10.Text)+1];
                               IBQuery4.ParamByName('ID_ISP').AsInteger:=IDISP;
                               end;

   IBQuery4.Close;
   IBQuery4.Open;

end;

procedure TForm1.ComboBox10Change(Sender: TObject);
begin
//showmessage(inttostr(ComboBox10.Items.IndexOf(ComboBox10.Text)));
end;

procedure TForm1.DBGrid3TitleClick(Column: TColumn);
var sql:string;
    id_f, l1, speed, status:integer;
begin


if column.Title.Caption='№ заявки' then sql:=' ZAPROZ.ID';
if column.Title.Caption='Дата получения' then sql:=' ZAPROZ.DATE_GET';
if column.Title.Caption='Дата начала работ' then sql:=' ZAPROZ.DATE_RAB';
if column.Title.Caption='Дата окончания работ' then sql:=' ZAPROZ.DATE_END';
if column.Title.Caption='ТЕМА' then sql:=' TEMA';

 // Формируем строку запроса
  l1:=1; // Флак для учета AND в запросах
  IBQuery4.SQL.Clear;
  IBQuery4.SQL.Append('Select * FROM ZAPROZ LEFT JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox7.Text<>'Не имеет значения')or(ComboBox8.Text<>'Не имеет значения')or(ComboBox9.Text<>'Не имеет значения')or(length(Edit3.text)>0)or(CheckBox5.Checked))
   then IBQuery4.SQL.Append(' WHERE');
  if ComboBox7.Text<>'Не имеет значения' then
     begin
      IBQuery2.SQL.Clear;
      IBQuery2.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery2.ParamByName('NAME').AsString:=ComboBox7.Text;
      IBQuery2.Close;
      IBQuery2.Open;
      IBQuery2.First;
      id_f:=IBQuery2ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery4.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox9.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox9.Text='Высокая срочность' then speed:=1;
      if ComboBox9.Text='Средняя срочность' then speed:=2;
      if ComboBox9.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox8.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox8.Text='Заявка не обработана' then status:=1;
     if ComboBox8.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox8.Text='Заявка выполнена' then status:=3;
     if ComboBox8.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox8.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox5.Checked) then
     begin
       if l1=2 then IBQuery4.SQL.Append(' AND');
       IBQuery4.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<=:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit3.Text)>0) then
     begin
      if l1=2 then IBQuery4.SQL.Append(' AND');
      IBQuery4.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

     if ComboBox10.Text<>'' then begin

      if l1=2 then IBQuery4.SQL.Append(' AND ZAPROZ.ID_ISP=:ID_ISP')
              else IBQuery4.SQL.Append(' ZAPROZ.ID_ISP=:ID_ISP');
     end;

    IBQuery3.SQL.Append(' order by'+sql);


  // Заполняем значения для запроса
   if ComboBox7.Text<>'Не имеет значения' then IBQuery4.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
   if ComboBox8.Text<>'Не имеет значения' then IBQuery4.ParamByName('STATUS').AsInteger:=status;
   if ComboBox9.Text<>'Не имеет значения' then IBQuery4.ParamByName('SPEED').AsInteger:=speed;
   if (CheckBox5.Checked) then
     begin
      IBQuery4.ParamByName('DATE_ONE').AsDate:=DateTimePicker5.Date;
      IBQuery4.ParamByName('DATE_DVA').AsDate:=DateTimePicker6.Date;
     end;
   if (Length(Edit3.Text)>0) then IBQuery4.ParamByName('ID').AsInteger:=strtoint(Edit3.Text);
   if ComboBox10.Text<>'' then IBQuery4.ParamByName('ID_ISP').AsInteger:= adm[ComboBox10.Items.IndexOf(ComboBox10.Text)+1];

   IBQuery4.Close;
   IBQuery4.Open;
   

end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin

//IBQuery1.IsEmpty
if (not IBQuery1.IsEmpty) then
//if (not IBQuery1.Eof) then
 begin
  // Чистим лейблы
  form7.Label1.Caption:='';
  form7.Label2.Caption:='';
  form7.Label3.Caption:='';
  form7.Label4.Caption:='';
  form7.Label5.Caption:='';
  form7.Label6.Caption:='';
  form7.Label7.Caption:='';
  form7.Label8.Caption:='';
  form7.Label9.Caption:='';
  form7.Label10.Caption:='';
  form7.Label11.Caption:='';
  form7.Label12.Caption:='';
  // Передаем в форму идентификатор шапки заявки
  form7.Label1.Caption:=inttostr(IBQuery1ID.AsInteger);
  form7.showmodal;
 end;

end;

procedure TForm1.DBGrid2DblClick(Sender: TObject);
begin
if not IBQuery3.Eof then
 begin
  // Чистим лейблы
  form7.Label1.Caption:='';
  form7.Label2.Caption:='';
  form7.Label3.Caption:='';
  form7.Label4.Caption:='';
  form7.Label5.Caption:='';
  form7.Label6.Caption:='';
  form7.Label7.Caption:='';
  form7.Label8.Caption:='';
  form7.Label9.Caption:='';
  form7.Label10.Caption:='';
  form7.Label11.Caption:='';
  form7.Label12.Caption:='';
  // Передаем в форму идентификатор шапки заявки
  form7.Label1.Caption:=inttostr(IBQuery3ID.AsInteger);
  form7.show;
 end;
end;


procedure TForm1.DBGrid3DblClick(Sender: TObject);
begin
  if not IBQuery4.Eof then
 begin
  // Чистим лейблы
  form7.Label1.Caption:='';
  form7.Label2.Caption:='';
  form7.Label3.Caption:='';
  form7.Label4.Caption:='';
  form7.Label5.Caption:='';
  form7.Label6.Caption:='';
  form7.Label7.Caption:='';
  form7.Label8.Caption:='';
  form7.Label9.Caption:='';
  form7.Label10.Caption:='';
  form7.Label11.Caption:='';
  form7.Label12.Caption:='';
  // Передаем в форму идентификатор шапки заявки
  form7.Label1.Caption:=inttostr(IBQuery4ID.AsInteger);
  form7.show;
 end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var id_shap, i, j, FL:integer;
    ListItem: TListItem;

begin


 Timer1.Enabled:=false; // Тормозим таймер

 // Выбираем из таблицы шапок шапки, соответствующие админу
 IBQuery5.SQL.Clear;
 IBQuery5.SQL.Append('select * from ZAPROZ INNER JOIN ZAPROS_TELO on ZAPROZ.ID=ZAPROS_TELO.ID_SHAPKA WHERE ZAPROZ.ID_ISP=:ID_ISP and ZAPROZ.STATUS<=:STATUS and ZAPROS_TELO.STATUS=:STATUS1 order BY ZAPROS_TELO.ID');
 IBQuery5.ParamByName('ID_ISP').AsInteger:=unit1.ID_USER;
 IBQuery5.ParamByName('STATUS').AsInteger:=6;

   IBQuery5.ParamByName('STATUS1').AsInteger:=3;
 IBQuery5.Close;
 IBQuery5.Open;
 IBQuery5.First;
 j:=0;

  While not IBQuery5.Eof do
    begin
      id_shap:=IBQuery5ID_SHAPKA.AsInteger;
      FL:=0;
      for i:=0 to ListView1.Items.Count-1 do
        begin
          if ListView1.Items.Item[i].SubItems[0]=inttostr(id_shap) then FL:=2;
        end;
        if FL=0 then j:=1;




    if j=1  then begin
                   ListView1.Items.BeginUpdate;
                   ListItem:=ListView1.Items.Add;
                   ListItem.ImageIndex:=9;
                   ListItem.Caption:=' Новый комментарий к заявке №'+inttostr(IBQuery5ID.AsInteger)+' Тема:'+IBQuery5TEMA.AsString;
                   ListItem.SubItems.append (inttostr(IBQuery5ID.AsInteger));
                   ListView1.Items.EndUpdate;
                  j:=0;
                 end;

              IBQuery5.Next;
    end;


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

end;

procedure TForm1.ListView1DblClick(Sender: TObject);
var j: integer;
begin
 if listview1.Items.Count>0 then
    begin
      j:=listview1.Selected.Index;
        // Чистим лейблы
  form7.Label1.Caption:='';
  form7.Label2.Caption:='';
  form7.Label3.Caption:='';
  form7.Label4.Caption:='';
  form7.Label5.Caption:='';
  form7.Label6.Caption:='';
  form7.Label7.Caption:='';
  form7.Label8.Caption:='';
  form7.Label9.Caption:='';
  form7.Label10.Caption:='';
  form7.Label11.Caption:='';
  form7.Label12.Caption:='';
  // Передаем в форму идентификатор шапки заявки
  form7.Label1.Caption:=ListView1.items.item[j].SubItems[0];

  form7.showmodal;

    end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var sql, bm:string;
    id_f, l1, speed, status, nutt, kkl:integer;
begin

 timer3.Enabled:=false;
 if CheckBox7.Checked then
    begin
     // Начинаем автоматический поиск заявок
     if Edit1.Text<>'' then Timer3.Interval:=strtoint(Edit1.Text)*1000;


       // Формируем строку запроса
  l1:=1; // Флак для учета AND в запросах
  IBQuery12.SQL.Clear;
  IBQuery12.SQL.Append('Select * FROM ZAPROZ INNER JOIN USERS on USERS.ID=ZAPROZ.ID_FROM_USER');
  if ((ComboBox1.Text<>'Не имеет значения')or(ComboBox2.Text<>'Не имеет значения')or(ComboBox3.Text<>'Не имеет значения')or(length(Edit1.text)>0)or(CheckBox1.Checked))
   then IBQuery12.SQL.Append(' WHERE');
  if ComboBox1.Text<>'Не имеет значения' then
     begin
      IBQuery13.SQL.Clear;
      IBQuery13.SQL.Append('select * from FIRM WHERE NAME=:NAME');
      IBQuery13.ParamByName('NAME').AsString:=ComboBox1.Text;
      IBQuery13.Close;
      IBQuery13.Open;
      IBQuery13.First;
      id_f:=IBQuery13ID.AsInteger; // Получаем идентификатор текущей фирмы
      l1:=2;
      IBQuery12.SQL.Append(' ZAPROZ.ID_FROM_FIRM=:ID_FROM_FIRM');
     end;

  if (ComboBox3.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery12.SQL.Append(' AND');
      IBQuery12.SQL.Append(' ZAPROZ.SPEED=:SPEED');
      l1:=2;

      // Определим значение скорости
      if ComboBox3.Text='Высокая срочность' then speed:=1;
      if ComboBox3.Text='Средняя срочность' then speed:=2;
      if ComboBox3.Text='Низкая срочность' then speed:=3;
     end;

  if (ComboBox2.Text<>'Не имеет значения') then
     begin
      if l1=2 then IBQuery12.SQL.Append(' AND');
      IBQuery12.SQL.Append(' ZAPROZ.STATUS=:STATUS');
      l1:=2;
     if ComboBox2.Text='Заявка не обработана' then status:=1;
     if ComboBox2.Text='Заявка в процессе обработки' then status:=2;
     if ComboBox2.Text='Заявка выполнена' then status:=3;
     if ComboBox2.Text='Заявка снята Пользователем' then status:=4;
     if ComboBox2.Text='Заявка снята Администратором' then status:=5;
     end;

  if (CheckBox1.Checked) then
     begin
       if l1=2 then IBQuery12.SQL.Append(' AND');
       IBQuery12.SQL.Append(' ZAPROZ.DATE_GET>=:DATE_ONE AND ZAPROZ.DATE_GET<=:DATE_DVA');
       l1:=2;
     end;

  if (Length(Edit1.Text)>0) then
     begin
      if l1=2 then IBQuery12.SQL.Append(' AND');
      IBQuery12.SQL.Append(' ZAPROZ.ID=:ID');
      l1:=2;
     end;

    if checkBox4.Checked then IBQuery12.SQL.Append(' order by ZAPROZ.SPEED')
                         else IBQuery12.SQL.Append(' order by ZAPROZ.ID');



  // Заполняем значения для запроса
   if ComboBox1.Text<>'Не имеет значения' then IBQuery12.ParamByName('ID_FROM_FIRM').AsInteger:=id_f;
   if ComboBox2.Text<>'Не имеет значения' then IBQuery12.ParamByName('STATUS').AsInteger:=status;
   if ComboBox3.Text<>'Не имеет значения' then IBQuery12.ParamByName('SPEED').AsInteger:=speed;
   if (CheckBox1.Checked) then
     begin
      IBQuery12.ParamByName('DATE_ONE').AsDate:=DateTimePicker1.Date;
      IBQuery12.ParamByName('DATE_DVA').AsDate:=DateTimePicker2.Date;
     end;
   if (Length(Edit1.Text)>0) then IBQuery12.ParamByName('ID').AsInteger:=strtoint(Edit1.Text);

   IBQuery12.Close;
   IBQuery12.Open;
   IBQuery12.FetchAll;
   IBQuery1.DisableControls;
   IBQuery1.FetchAll;
   IBQuery1.EnableControls;

   if (IBQuery1.recordCount<>IBQuery12.recordCount) then SpeedButton1.Click
   else
   begin
   bm:=IBQuery1.Bookmark;
   IBQuery1.DisableControls;
   IBQuery1.First;
   IBQuery12.First;
   kkl:=0;
   while not IBQuery1.Eof do
     begin
      if IBQuery12STATUS.AsInteger<>IBQuery1STATUS.AsInteger then    kkl:=1;
      IBQuery12.Next;
      IBQuery1.Next;
     end;

   IBQuery1.Bookmark:=bm;
   IBQuery1.EnableControls;
   if kkl=1 then SpeedButton1.Click;

   end;
    end;
     timer3.Enabled:=true;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
if unit1.variant<>1 then
begin
 if CheckBox7.Checked then begin
                              if Edit4.Text='' then Edit4.Text:='10';
                              //Timer3.Enabled:=true;
                              Edit4.Enabled:=true;
                              Timer5.Enabled:=true;
                              //if Edit1.Text<>'' then Timer3.Interval:=strtoint(Edit1.Text)*1000;
                              if Edit1.Text<>'' then Timer5.Interval:=strtoint(Edit4.Text);
                           end
                           else
                           begin
                           //Edit4.Enabled:=false;
                           Timer5.Enabled:=false;
                           //Timer3.Enabled:=false;
                           //if Edit1.Text<>'' then Timer3.Interval:=strtoint(Edit1.Text)*1000;
                           if Edit1.Text<>'' then Timer5.Interval:=strtoint(Edit4.Text);
                           end;
  end
  else
  begin
     if CheckBox7.Checked then begin
                              if Edit4.Text='' then Edit4.Text:='10';
                              Edit4.Enabled:=true;
                              Timer5.Enabled:=true;
                              if Edit1.Text<>'' then Timer5.Interval:=strtoint(Edit1.Text)*1000;

                              label52.Caption:='911';
                              SpeedButton6.Click;

                           end
                           else
                           begin
                           //Edit4.Enabled:=false;
                           Timer5.Enabled:=false;
                           //Timer3.Enabled:=false;
                           //if Edit1.Text<>'' then Timer3.Interval:=strtoint(Edit1.Text)*1000;
                           if Edit1.Text<>'' then Timer5.Interval:=strtoint(Edit1.Text)*1000;
                           label52.Caption:='911';
                           end;
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
if Edit1.Text<>'' then Timer3.Interval:=strtoint(Edit1.Text)*1000;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',decimalseparator,#8]) then key:=#0;

end;

procedure TForm1.N4Click(Sender: TObject);
begin
 form10.DateTimePicker1.Date:=now;
 form10.DateTimePicker2.Date:=now;
 Form10.Edit1.Text:='';
 form10.showmodal;
end;

procedure TForm1.ComboBox11Change(Sender: TObject);
var


D1, D2:TDateTime;
    secres, secres1, s1, s2:int64;
    deltasec, deltasec1: Integer;
    vsego, wait1 ,vipoln, vprocesse, otkl_admin, otkl_user, ball, vrem:integer;
    mi1,hh1,dd1,mo1, y1, ss: integer;
    i,j,k, IDF:integer;
    time1, time2: string;
begin
 // Начинаем выборку:
 if ComboBox1.Text<>'' then
    begin
      IBQuery7.SQL.Clear;
      if ComboBox11.Text='Фирма не выбрана' then IBQuery7.SQL.Append('select * from ZAPROZ ORDER BY ID')
        else
        begin
         // По названию ищем идентификатор фирмы
          IBQuery8.SQL.Clear;
          IBQuery8.SQL.Append('select * from FIRM WHERE NAME=:NAME');
          IBQuery8.ParamByName('NAME').AsString:=ComboBox11.text;
          IBQuery8.Close;
          IBQuery8.Open;
          IBQuery8.First;
          IDF:=IBQuery8ID.asInteger;
          IBQuery7.SQL.Append('select * from ZAPROZ WHERE ID_FROM_FIRM=:NAME ORDER BY ID');
          IBQuery7.ParamByName('NAME').AsInteger:=IDF;

        end;
      IBQuery7.Close;
      IBQuery7.Open;
      IBQuery7.First;
      secres:=0;
      secres1:=0;
      vsego:=0;
      wait1:=0;
      vprocesse:=0;
      vipoln:=0;
      otkl_user:=0;
      otkl_admin:=0;
      ball:=0;
      While not IBQuery7.Eof do
        begin
         vsego:=vsego+1;
         if IBQuery7STATUS.AsInteger=1 then wait1:=wait1+1;
         if IBQuery7STATUS.AsInteger=2 then vprocesse:=vprocesse+1;
         if IBQuery7STATUS.AsInteger>=2 then
                                         begin
                                          D2:=IBQuery7DATE_GET.asDateTime;
                                          D1:=IBQuery7DATE_RAB.asDateTime;
                                          deltasec1:=SecondsBetween (D1, D2);
                                          if (deltasec1)>0 then
                                          secres1:=secres1+Deltasec1;
                                         end;
         
         if IBQuery7STATUS.AsInteger=3 then begin
                                                vipoln:=vipoln+1;
                                                D2:=IBQuery7DATE_GET.asDateTime;
                                                D1:=IBQuery7DATE_END.asDateTime;
                                                deltasec:=SecondsBetween (D1, D2);
                                                secres:=secres+Deltasec;
                                            end;
         if IBQuery7STATUS.AsInteger=4 then otkl_user:=otkl_user+1;
         if IBQuery7STATUS.AsInteger=5 then otkl_admin:=otkl_admin+1;
         ball:=ball+IBQuery7OCENKA.AsInteger;
         IBQuery7.Next;
        end;

       if ((vipoln<>0)) then
                     begin
                        s1:=secres div vipoln;
                        s2:=secres1 div (vipoln+vprocesse);

       mi1:=s1 div 60;
       ss:=s1 mod 60; // Остаток по секундам
       hh1:=mi1 div 60;
       mi1:=mi1 mod 60; // Остаток по минутам
       dd1:=hh1 div 24; // Остаток по дням
       hh1:= hh1 mod 24; //Остаток по часам
       time1:='';
       if dd1>0 then time1:=time1+' Дней: '+inttostr(dd1);
       if hh1>0 then time1:=time1+' Часов: '+inttostr(hh1);
       if mi1>0 then time1:=time1+' Минут: '+inttostr(mi1);
       if ss>0 then time1:=time1+' Секунд: '+inttostr(ss);




       mi1:=s2 div 60;
       ss:=s2 mod 60; // Остаток по секундам
       hh1:=mi1 div 60;
       mi1:=mi1 mod 60; // Остаток по минутам
       dd1:=hh1 div 24; // Остаток по дням
       hh1:= hh1 mod 24; //Остаток по часам
       time2:='';
       if dd1>0 then time2:=time2+' Дней: '+inttostr(dd1);
       if hh1>0 then time2:=time2+' Часов: '+inttostr(hh1);
       if mi1>0 then time2:=time2+' Минут: '+inttostr(mi1);
       if ss>0 then time2:=time2+' Секунд: '+inttostr(ss);
       end else begin
                 time1:='';
                 time2:='';
                end;

        label42.Caption:=time1;
        label44.Caption:=time2;
        if vipoln<>0 then label46.Caption:=floattostr(ball/vipoln)
                     else label46.Caption:='';

        Label26.Caption:=datetimetostr(now);
        Label24.Caption:=ComboBox11.Text;
        Label28.Caption:=inttostr(vsego);
        Label30.Caption:=inttostr(vipoln);
        Label32.Caption:=inttostr(vprocesse);
        Label40.Caption:=inttostr(wait1);
        Label34.Caption:=inttostr(otkl_admin);
        Label36.Caption:=inttostr(otkl_user);

    end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var   secres, secres1, vsego, wait1, vprocesse, vipoln, otkl_user, otkl_admin, ball: integer;
      D1, D2: TDateTime;
      maxfio:integer;
      i, j, deltasec1, deltasec, vs1, vsego1: integer;
      z1,z2,z3,z4,z5,z6,z7:integer;
      s1, s2, mi1, ss, hh1,  dd1, vs2 : integer;
      itogo:real;
      time1, time2 : string;

begin
    stringGrid1.CleanupInstance;
    // Заполняем шапочку
    stringGrid1.Cells[0,0]:='ФИО Оператора';
    stringGrid1.Cells[1,0]:='Заявок выполнено';
    stringgrid1.ColWidths[1]:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[1,0])+5;
    stringGrid1.Cells[2,0]:='Заявок в обработке';
    stringgrid1.ColWidths[2]:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[2,0])+5;
    stringGrid1.Cells[3,0]:='Заявок отклонил';
    stringgrid1.ColWidths[3]:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[3,0])+5;
    stringGrid1.Cells[4,0]:='Средний балл';
    stringgrid1.ColWidths[4]:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[4,0])+5;
    stringGrid1.Cells[5,0]:='Время выполнения';
    stringgrid1.ColWidths[5]:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[5,0])+5;
    stringGrid1.Cells[6,0]:='Время реакции';
    stringgrid1.ColWidths[6]:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[6,0])+5;


    IBQuery9.SQL.Clear;
    IBQuery9.SQL.Append('select DISTINCT ID_ISP from ZAPROZ ORDER BY ID_ISP');
    IBQuery9.Close;
    IBQuery9.Open;
    IBQuery9.First;
    i:=1;
    j:=1;
    maxfio:=0;
    While not IBQuery9.Eof do
      begin

        vsego1:=0;
        IBQuery10.SQL.Clear;
        IBQuery10.SQL.Append('select * from ZAPROZ WHERE ID_ISP=:ID_ISP');
        if CheckBox8.Checked then
       // IBQuery10.SQL.Append(' AND DATE_RAB>=:DATE1 AND DATE_RAB<:DATE2');
       IBQuery10.SQL.Append(' AND (DATE_GET>=:DATE1 AND DATE_GET<:DATE2)');
        IBQuery10.ParamByName('ID_ISP').AsInteger:=IBQuery9ID_ISP.AsInteger;
        if CheckBox8.Checked then
             begin
              IBQuery10.ParamByName('DATE1').AsDateTime:=TRUNC(DateTimePicker7.DateTime);
              IBQuery10.ParamByName('DATE2').AsDateTime:=TRUNC(DateTimePicker8.DateTime)+1;
             end;

        IBQuery10.Close;
        IBQuery10.Open;
        IBQuery10.First;
        While not IBQuery10.Eof do
         begin
          vsego1:=vsego1+1;
          IBQuery10.Next;
         end;


        IBQuery10.SQL.Clear;
        IBQuery10.SQL.Append('select * from ZAPROZ WHERE ID_ISP=:ID_ISP');
        if CheckBox8.Checked then
       // IBQuery10.SQL.Append(' AND DATE_RAB>=:DATE1 AND DATE_RAB<:DATE2');
       IBQuery10.SQL.Append(' AND ((DATE_GET>=:DATE1 AND DATE_GET<:DATE2)OR(DATE_RAB>=:DATE1 AND DATE_RAB<:DATE2)OR(DATE_END>=:DATE1 AND DATE_END<:DATE2))');
        IBQuery10.ParamByName('ID_ISP').AsInteger:=IBQuery9ID_ISP.AsInteger;
        if CheckBox8.Checked then
             begin
              IBQuery10.ParamByName('DATE1').AsDateTime:=TRUNC(DateTimePicker7.DateTime);
              IBQuery10.ParamByName('DATE2').AsDateTime:=TRUNC(DateTimePicker8.DateTime)+1;
             end;

        IBQuery10.Close;
        IBQuery10.Open;
        IBQuery10.First;
        // Обнуляем переменные
          secres:=0;
          secres1:=0;

      vsego:=0;
      wait1:=0;
      vprocesse:=0;
      vipoln:=0;
      otkl_user:=0;
      otkl_admin:=0;
      ball:=0;
      vs1:=0;
      vs2:=0;
      deltasec1:=0;
      deltasec:=0;
      secres1:=0;
      secres:=0;

        While not IBQuery10.Eof do
         begin
           // Здесь начинаем подсчеты
                vsego:=vsego+1;
                //deltasec1:=0;
                //deltasec:=0;
         if IBQuery10STATUS.AsInteger=1 then wait1:=wait1+1;
         if IBQuery10STATUS.AsInteger=2 then vprocesse:=vprocesse+1;
         if IBQuery10STATUS.AsInteger>=2 then
                                         begin
                                          D2:=IBQuery10DATE_GET.asDateTime;
                                          D1:=IBQuery10DATE_RAB.asDateTime;
                                          if IBQuery10DATE_RAB.AsString='' then D1:=D2;
                                          if D2>D1 then D1:=D2;
                                          
                                          deltasec1:=SecondsBetween (D1, D2);
                                          secres1:=secres1+Deltasec1;
                                          vs1:=vs1+1;
                                         end;
         if IBQuery10STATUS.AsInteger=3 then begin
                                                vipoln:=vipoln+1;
                                                D2:=IBQuery10DATE_GET.asDateTime;
                                                D1:=IBQuery10DATE_END.asDateTime;
                                                if IBQuery10DATE_END.AsString='' then D1:=D2;
                                                if D2>D1 then D1:=D2;

                                                deltasec:=SecondsBetween (D1, D2);
                                                secres:=secres+Deltasec;
                                            end;
         if IBQuery10STATUS.AsInteger=4 then otkl_user:=otkl_user+1;
         if IBQuery10STATUS.AsInteger=5 then otkl_admin:=otkl_admin+1;

         if IBQuery10OCENKA.AsString<>'' then begin
                                                 ball:=ball+IBQuery10OCENKA.AsInteger;
                                                 vs2:=vs2+1;
                                              end;

          IBQuery10.Next;
         end;

      // Выводим в грид полученные данные

      // Вытаскиваем по идентификатору имя юзера
      if IBQuery9ID_ISP.AsInteger<>0 then
      begin
      IBQuery11.SQL.Clear;
      IBQuery11.SQL.Append ('select * from USERS WHERE ID=:ID');
      IBQuery11.ParamByName('ID').asInteger:=IBQuery9ID_ISP.asInteger;
      IBQuery11.Close;
      IBQuery11.Open;
      IBQuery11.First;


      stringGrid1.Cells[0,i]:=IBQuery11FAMILY.asString+' '+IBQuery11NAME.AsString+' '+IBQuery11SECOND_NAME.asString;
      if maxfio<StringGrid1.Canvas.TextWidth(StringGrid1.cells[0, i]) then maxfio:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[0,i])+5;
      stringgrid1.ColWidths[0]:=maxfio;


      StringGrid1.Cells[1,i]:=inttostr(vipoln);


      StringGrid1.Cells[2,i]:=inttostr(vprocesse);



      StringGrid1.Cells[3,i]:=inttostr(otkl_admin);

       if vs2<>0 then itogo:=ball/vs2
                 else itogo:=0;

      if vipoln<>0 then StringGrid1.Cells[4,i]:=FloatToStrF(itogo,ffFixed,8,2);



       label47.Caption:=inttostr(vprocesse);

       if ((vipoln<>0)) then
                     begin

                        s1:=secres div vipoln;                // Среднее время выполнения для исполненных заявок
                        s2:=secres1 div vs1;
                        //s2:=secres1 div (vipoln+vprocesse);   // Среднее время ожидания заявки

                        mi1:=s1 div 60;
                        ss:=s1 mod 60; // Остаток по секундам
                        hh1:=mi1 div 60;
                        mi1:=mi1 mod 60; // Остаток по минутам
                        dd1:=hh1 div 24; // Остаток по дням
                        hh1:= hh1 mod 24; //Остаток по часам

                      time1:='';
                      if dd1>0 then time1:=time1+' Дней: '+inttostr(dd1)+'; ';
                      if hh1>0 then time1:=time1+' Часов: '+inttostr(hh1)+'; ';
                      if mi1>0  then time1:=time1+' Минут: '+inttostr(mi1)+'; ';
                      if ss>0 then time1:=time1+' Секунд: '+inttostr(ss)+'; ';
                      if secres=0 then time1:='        0       ';





      StringGrid1.Cells[5,i]:=time1;
      if z5<StringGrid1.Canvas.TextWidth(StringGrid1.cells[5, i]) then z5:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[5,i])+5;
       stringgrid1.ColWidths[5]:=z5;


                       // s2:= s2 div vsego;
                        mi1:=s2 div 60;
                        ss:=s2 mod 60; // Остаток по секундам
                        hh1:=mi1 div 60;
                        mi1:=mi1 mod 60; // Остаток по минутам
                        dd1:=hh1 div 24; // Остаток по дням
                        hh1:= hh1 mod 24; //Остаток по часам
                       time2:='';
                      if dd1>0 then time2:=time2+' Дней: '+inttostr(dd1)+'; ';
                      if hh1>0 then time2:=time2+' Часов: '+inttostr(hh1)+'; ';
                      if mi1>0  then time2:=time2+' Минут: '+inttostr(mi1)+'; ';
                      if ss>0 then time2:=time2+' Секунд: '+inttostr(ss)+'; ';


      StringGrid1.Cells[6,i]:=time2;

      if z6<StringGrid1.Canvas.TextWidth(StringGrid1.cells[6, i]) then z6:=StringGrid1.Canvas.TextWidth(StringGrid1.cells[6,i])+5;
       stringgrid1.ColWidths[6]:=z6;

                 end;


      i:=i+1;
      if stringgrid1.RowCount-1<i then stringgrid1.RowCount:=stringgrid1.RowCount+1;
      end;

      IBQuery9.Next;
      end;






end;

procedure TForm1.N6Click(Sender: TObject);
begin
 form1.Close;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
 form11.showmodal;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var sql, bm:string;
    id_f, l1, speed, status, nutt, kkl:integer;
    IBBackQ:TIBBackGroundQuery;
begin
 if Unit1.variant=1 then
   begin



   if label52.Caption='911' then begin
   IBBackQ := TIBBackGroundQuery.Create(unit2.DataModule2.IBDatabase1.DatabaseName, unit2.DataModule2.IBDatabase1.Params, 'select g from alexis', DataSource4);
                                       label52.Caption:='0';
                                  end
                             else  label52.Caption:='0'





   end;
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=vk_return) then
 if not IBQuery1.Eof then
 begin
  // Чистим лейблы
  form7.Label1.Caption:='';
  form7.Label2.Caption:='';
  form7.Label3.Caption:='';
  form7.Label4.Caption:='';
  form7.Label5.Caption:='';
  form7.Label6.Caption:='';
  form7.Label7.Caption:='';
  form7.Label8.Caption:='';
  form7.Label9.Caption:='';
  form7.Label10.Caption:='';
  form7.Label11.Caption:='';
  form7.Label12.Caption:='';
  // Передаем в форму идентификатор шапки заявки
  form7.Label1.Caption:=inttostr(IBQuery1ID.AsInteger);
  form7.showmodal;
 end;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
var  Thread1:TSimple;
     Thread2:TSimple1;
     IBBackQ: TIBBackGroundQuery;
     nums1, flh1: integer;
begin
 // Прописываем работу симафора здесь
Timer5.Enabled:=false;
if unit1.variant<>1 then begin


 flh1:=0;
 case strtoint (label53.Caption) of
 0 : begin
            // В первом такте делаем выборку №1
            IBQuery15.SQL:=IBQuery1.SQL;
            IBQuery15.Params:=IBQuery1.Params;
            IBQuery15.Close;
            IBQuery15.Open;
            IBQuery15.First;
            nums1:=0;
            While not IBQuery15.Eof do
            begin
            nums1:=nums1+1;
            IBQuery15.Next;
            end;
            label48.Caption:=inttostr(nums1);
            label53.Caption:='1';
        end;
 1 : begin
            IBQuery16.SQL:=IBQuery15.SQL;
            IBQuery16.Params:=IBQuery15.Params;

            IBQuery16.Close;
            IBQuery16.Open;
            IBQuery16.First;
            nums1:=0;
            While not IBQuery16.Eof do
            begin
            nums1:=nums1+1;
            IBQuery16.Next;
            end;
            label49.Caption:=inttostr(nums1);
            label53.Caption:='2'
        end;
 2 : begin
            if (strtoint (Label49.Caption)=strtoint (Label48.Caption))and(strtoint (Label51.Caption)=strtoint (Label48.Caption))
               then
                 begin
                  // Сравниваем построчно
                  if (unit1.variant<>1) then begin
                  try
                  IBQuery15.First;
                  IBQuery16.First;
                  except
                  end;


                  While not IBQuery15.Eof do
                    begin

                      if IBQuery15STATUS.AsString<>IBQuery16STATUS.AsString then flh1:=1;
                      if IBQuery15SPEED.AsString<>IBQuery16SPEED.AsString then flh1:=1;
                      IBQuery15.Next;
                      IBQuery16.Next;
                    end;

                   end else begin
                              flh1:=0;
                              label53.Caption:='0';
                            end;


                 end
                 else flh1:=1; // Сигнал на обновление выдачи


                 if flh1=1 then
                    begin
                      // Обновляем выдачу
                      SpeedButton1.Click;
                      label50.Caption:='911';
                    end else label50.Caption:='0';


            label53.Caption:='0'
     end;


  end;

    
end else
     begin
       if label50.Caption='911' then begin
                                        SpeedButton1.Click;
                                        label50.Caption:='0';
                                     end;
     end;
Timer5.Enabled:=True;

end;


procedure TForm1.ComboBox2Change(Sender: TObject);
begin

speedbutton1.Click;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin

speedbutton1.Click;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Label52.Caption:='911';sleep (10);
 if MessageDlg('Завершить работу?',mtInformation,[mbYes,mbNo],0)=mrYes
  then canclose:=true
  else begin
          canclose:=false;
          label52.Caption:='911';
          Speedbutton6.Click;
          //Speedbutton6.Click;
       end;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
var f: textFile;
    z: string;
begin
 if CheckBox9.Checked=true then
                         begin
                                    // Сохраняем текущее состояние
                                    AssignFile (f,'opt.ini');
                                    Rewrite (f);
                                    Append (f);

                                    writeln(f,'1');
                                    writeln(f,'// 1 - Работаем в режими потока');
                                    writeln(f,'// 0 - Работаем в стандартном режиме');
                                    writeln(f,Edit4.text);
                                    CloseFile (f);

                                    // Останавливаем таймер
                                    Timer5.Enabled:=false;
                                    Label53.Caption:='0';
                                    Label48.Caption:='0';
                                    Label49.Caption:='0';
                                    Label51.Caption:='0';
                                    Label50.Caption:='0';
                                    Label52.Caption:='911';
                                        unit1.variant:=1;
                                    // Стартуем потоки
                                    sleep (50);
                                    Timer5.Enabled:=true;
                                    SpeedButton6.Click;

                         end
                         else
                        begin

                                        // Сохраняем текущее состояние
                                    AssignFile (f,'opt.ini');
                                    Rewrite (f);
                                    Append (f);

                                    writeln(f,'0');
                                    writeln(f,'// 1 - Работаем в режими потока');
                                    writeln(f,'// 0 - Работаем в стандартном режиме');
                                    writeln(f,Edit4.text);
                                    CloseFile (f);

                                    // Останавливаем таймер
                                    Timer5.Enabled:=false;
                                    Label53.Caption:='0';
                                    Label48.Caption:='0';
                                    Label49.Caption:='0';
                                    Label51.Caption:='0';
                                    Label50.Caption:='0';
                                    Label52.Caption:='911';
                                    unit1.variant:=0;
                                    Timer5.Enabled:=true;
                                    
                                    // Стартуем потоки
                                    sleep (50);
                                    

                                    Form1.SpeedButton1.Click;



                        end;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
var N: integer;
      secres, secres1, vsego, wait1, vprocesse, vipoln, otkl_user, otkl_admin, ball: integer;
      D1, D2: TDateTime;
      maxfio:integer;
      i, j, deltasec1, deltasec, vs1: integer;
      z1,z2,z3,z4,z5,z6,z7:integer;
      s1, s2, mi1, ss, hh1,  dd1, vsego1, bschet : integer;
      itogo: real;
      time1, time2 : string;
begin
  IBQuery18.SQL.Clear;
  if checkbox10.Checked= false then
  begin
  IBQuery18.SQL.Append('SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE USERS.FAMILY LIKE :FAMILY OR ');
  IBQuery18.SQL.Append('USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL ORDER BY USERS.FAMILY');
      IBQuery18.ParamByName('FAMILY').AsString:='%'+Edit5.Text+'%';
  IBQuery18.ParamByName('LOGIN').AsString:='%'+Edit5.Text+'%';
  IBQuery18.ParamByName('IPLOCAL').AsString:='%'+Edit5.Text+'%'

  end
    else
  begin
  IBQuery18.SQL.Append('SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE  (((ZAPROZ.DATE_GET>=:DATE_GET1) AND (ZAPROZ.DATE_GET<:DATE_GET2)))');
  IBQuery18.SQL.Append('AND (USERS.FAMILY LIKE :FAMILY OR USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL)ORDER BY USERS.FAMILY');

  IBQuery18.ParamByName('DATE_GET1').AsDateTime:=TRUNC(DateTimePicker9.DateTime);
  IBQuery18.ParamByName('DATE_GET2').AsDateTime:=TRUNC(DateTimePicker10.DateTime)+1;
    IBQuery18.ParamByName('FAMILY').AsString:='%'+Edit5.Text+'%';
  IBQuery18.ParamByName('LOGIN').AsString:='%'+Edit5.Text+'%';
  IBQuery18.ParamByName('IPLOCAL').AsString:='%'+Edit5.Text+'%'
  end;
  IBQuery18.Close;
  IBQuery18.Open;
  vsego1:=0;
  IBQuery18.First;
  While not IBQuery18.Eof do
    begin
    vsego1:=vsego1+1;
    IBQuery18.Next;
    end;
  





  IBQuery17.SQL.Clear;
  IBQuery18.SQL.Clear;
  if checkbox10.Checked= false then
  begin
  IBQuery17.SQL.Append('SELECT distinct USERS.USLOGIN,USERS.NAME, USERS.FAMILY, USERS.SECOND_NAME, ZAPROZ.IPLOCAL FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE USERS.FAMILY LIKE :FAMILY OR ');
  IBQuery17.SQL.Append('USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL ORDER BY USERS.FAMILY');
  //IBQuery17.SQL.Append('SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE USERS.FAMILY LIKE :FAMILY OR ');
  //IBQuery17.SQL.Append('USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL ORDER BY USERS.USLOGIN');
  IBQuery18.SQL.Append('SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE USERS.FAMILY LIKE :FAMILY OR ');
  IBQuery18.SQL.Append('USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL ORDER BY USERS.FAMILY');

  end
  else
  begin
  IBQuery17.SQL.Append('SELECT distinct USERS.USLOGIN,USERS.NAME, USERS.FAMILY, USERS.SECOND_NAME, ZAPROZ.IPLOCAL FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE  (((ZAPROZ.DATE_GET>=:DATE_GET1) AND (ZAPROZ.DATE_GET<:DATE_GET2))OR');
  IBQuery17.SQL.Append('((ZAPROZ.DATE_RAB>=:DATE_GET1) AND (ZAPROZ.DATE_RAB<:DATE_GET2)) OR ((ZAPROZ.DATE_END>=:DATE_GET1) AND (ZAPROZ.DATE_END<:DATE_GET2)))');
  IBQuery17.SQL.Append('AND (USERS.FAMILY LIKE :FAMILY OR USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL)ORDER BY USERS.FAMILY');
  IBQuery17.ParamByName('DATE_GET1').AsDateTime:=TRUNC(DateTimePicker9.DateTime);
  IBQuery17.ParamByName('DATE_GET2').AsDateTime:=TRUNC(DateTimePicker10.DateTime)+1;

//  IBQuery18.SQL.Append('SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE  (ZAPROZ.DATE_GET>=:DATE_GET1 ');
//  IBQuery18.SQL.Append('AND ((ZAPROZ.DATE_GET BETWEEN :DATE_GET1 AND :DATE_GET2)OR(ZAPROZ.DATE_RAB BETWEEN :DATE_GET1 AND :DATE_GET2)OR(ZAPROZ.DATE_END BETWEEN :DATE_GET1 AND :DATE_GET2)))');

//  IBQuery18.SQL.Append('AND (USERS.FAMILY LIKE :FAMILY OR USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL)ORDER BY USERS.FAMILY');
  IBQuery18.SQL.Append('SELECT * FROM USERS INNER JOIN ZAPROZ ON ZAPROZ.ID_FROM_USER=USERS.ID WHERE  (((ZAPROZ.DATE_GET>=:DATE_GET1) AND (ZAPROZ.DATE_GET<:DATE_GET2))OR');
  IBQuery18.SQL.Append('((ZAPROZ.DATE_RAB>=:DATE_GET1) AND (ZAPROZ.DATE_RAB<:DATE_GET2)) OR ((ZAPROZ.DATE_END>=:DATE_GET1) AND (ZAPROZ.DATE_END<:DATE_GET2)))');
  IBQuery18.SQL.Append('AND (USERS.FAMILY LIKE :FAMILY OR USERS.USLOGIN LIKE :LOGIN OR ZAPROZ.IPLOCAL LIKE :IPLOCAL)ORDER BY USERS.FAMILY');

  IBQuery18.ParamByName('DATE_GET1').AsDateTime:=TRUNC(DateTimePicker9.DateTime);
  IBQuery18.ParamByName('DATE_GET2').AsDateTime:=TRUNC(DateTimePicker10.DateTime)+1;


  end;
  IBQuery17.ParamByName('FAMILY').AsString:='%'+Edit5.Text+'%';
  IBQuery17.ParamByName('LOGIN').AsString:='%'+Edit5.Text+'%';
  IBQuery17.ParamByName('IPLOCAL').AsString:='%'+Edit5.Text+'%';
  IBQuery17.Close;
  IBQuery17.Open;

  IBQuery18.ParamByName('FAMILY').AsString:='%'+Edit5.Text+'%';
  IBQuery18.ParamByName('LOGIN').AsString:='%'+Edit5.Text+'%';
  IBQuery18.ParamByName('IPLOCAL').AsString:='%'+Edit5.Text+'%';
  IBQuery18.Close;
  IBQuery18.Open;

      // Обнуляем переменные
      secres:=0;
      secres1:=0;

      vsego:=0;
      wait1:=0;
      vs1:=0;
      vprocesse:=0;
      vipoln:=0;
      otkl_user:=0;
      otkl_admin:=0;
      ball:=0;
      bschet:=0;
      itogo:=0;
            deltasec1:=0;
      deltasec:=0;
      secres1:=0;
      secres:=0;
      
  IBQuery18.First;
  While not IBQuery18.Eof do
    begin


               // Здесь начинаем подсчеты
         vsego:=vsego+1;
         //Deltasec1:=0;
         //Deltasec:=0;

         if IBQuery18STATUS.AsInteger=1 then wait1:=wait1+1;
         if IBQuery18STATUS.AsInteger=2 then vprocesse:=vprocesse+1;
         if IBQuery18STATUS.AsInteger>=2 then
                                         begin
                                          D2:=IBQuery18DATE_GET.asDateTime;
                                          D1:=IBQuery18DATE_RAB.asDateTime;
                                          if IBQuery18DATE_RAB.AsString='' then D1:=D2;
                                          if D2>D1 then D1:=D2;
                                          deltasec1:=SecondsBetween (D1, D2);
                                          secres1:=secres1+Deltasec1;
                                          vs1:=vs1+1;
                                         end;
         if IBQuery18STATUS.AsInteger=3 then begin
                                                vipoln:=vipoln+1;
                                                D2:=IBQuery18DATE_GET.asDateTime;
                                                D1:=IBQuery18DATE_END.asDateTime;
                                                if IBQuery18DATE_END.AsString='' then D1:=D2;
                                                if D2>D1 then D1:=D2;
                                                deltasec:=SecondsBetween (D1, D2);
                                                secres:=secres+Deltasec;
                                            end;
         if IBQuery18STATUS.AsInteger=4 then otkl_user:=otkl_user+1;
         if IBQuery18STATUS.AsInteger=5 then otkl_admin:=otkl_admin+1;
         if IBQuery18OCENKA.AsString<>'' then  begin
                                                    bschet:=bschet+1;
                                                     ball:=ball+IBQuery18OCENKA.AsInteger;
                                               end;



    IBQuery18.Next;
    end;



     if ((vipoln<>0)) then
                     begin
                        s1:=secres div vipoln;                // Среднее время выполнения для исполненных заявок
                        s2:=secres1 div vs1;
                        //s2:=secres1 div (vipoln+vprocesse);   // Среднее время ожидания заявки

                        mi1:=s1 div 60;
                        ss:=s1 mod 60; // Остаток по секундам
                        hh1:=mi1 div 60;
                        mi1:=mi1 mod 60; // Остаток по минутам
                        dd1:=hh1 div 24; // Остаток по дням
                        hh1:= hh1 mod 24; //Остаток по часам
                      time1:='';
                      if dd1>0 then time1:=time1+' Дней: '+inttostr(dd1)+'; ';
                      if hh1>0 then time1:=time1+' Часов: '+inttostr(hh1)+'; ';
                      if mi1>0  then time1:=time1+' Минут: '+inttostr(mi1)+'; ';
                      if ss>0 then time1:=time1+' Секунд: '+inttostr(ss)+'; ';
                       //if vipoln<vsego then s2:= s2 div vsego;
                        mi1:=s2 div 60;
                        ss:=s2 mod 60; // Остаток по секундам
                        hh1:=mi1 div 60;
                        mi1:=mi1 mod 60; // Остаток по минутам
                        dd1:=hh1 div 24; // Остаток по дням
                        hh1:= hh1 mod 24; //Остаток по часам
                     
                      if dd1>0 then time2:=time2+' Дней: '+inttostr(dd1)+'; ';
                      if hh1>0 then time2:=time2+' Часов: '+inttostr(hh1)+'; ';
                      if mi1>0  then time2:=time2+' Минут: '+inttostr(mi1)+'; ';
                      if ss>0 then time2:=time2+' Секунд: '+inttostr(ss)+'; ';
         
         label56.Caption:='Среднее время выполнения: '+time1;
         label57.Caption:='Среднее время ожидания:   '+time2;

                if bschet<>0 then itogo:=ball/bschet
                 else itogo:=0;

        label64.Caption:='Средний балл: '+ FloatToStrF(itogo,ffFixed,8,2);


          label58.Caption:='Заявок зарегистрировано: '+inttostr(vsego1);
          label59.Caption:='Исполнено:  '+inttostr(vipoln);
          label60.Caption:='В процессе: '+inttostr(vprocesse);
          label61.Caption:='В ожидании: '+inttostr(wait1);

          label62.Caption:='Отклонено администратором: '+inttostr(otkl_admin);
          label63.Caption:='Снято пользователем:       '+inttostr(otkl_user);
          end
          else
          begin

               // Обнуляем переменные
      secres:=0;
      secres1:=0;

      vsego:=0;
      wait1:=0;
      vs1:=0;
      vprocesse:=0;
      vipoln:=0;
      otkl_user:=0;
      otkl_admin:=0;
      ball:=0;

         label56.Caption:='Среднее время выполнения: '+time1;
         label57.Caption:='Среднее время ожидания:   '+time2;
         label64.Caption:='Средний балл: 0';


          label58.Caption:='Заявок зарегистрировано: '+inttostr(vsego1);
          label59.Caption:='Исполнено:  '+inttostr(vipoln);
          label60.Caption:='В процессе: '+inttostr(vprocesse);
          label61.Caption:='В ожидании: '+inttostr(wait1);

          label62.Caption:='Отклонено администратором: '+inttostr(otkl_admin);
          label63.Caption:='Снято пользователем:       '+inttostr(otkl_user);

          end;

  end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
 SpeedButton7.Click;
 frxReport1.Variables.Clear;

// frxReport1.Variables[' ' + 'My Category 1'] := Null;
 if CheckBox10.Checked then
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+datetostr(DateTimePicker9.Date)+'''';
  frxReport1.Variables['DAT_END']:= ''''+datetostr(DateTimePicker10.Date)+'''';
 end
 else
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+' '+'''';
  frxReport1.Variables['DAT_END']:= ''''+' '+'''';
 end;

 frxReport1.Variables['SEARCH_STR']:= ''''+Edit5.Text+'''';

 frxReport1.Variables['L58']:= ''''+Label58.Caption+'''';
 frxReport1.Variables['L59']:= ''''+Label59.Caption+'''';
 frxReport1.Variables['L60']:= ''''+Label60.Caption+'''';
 frxReport1.Variables['L61']:= ''''+Label61.Caption+'''';
 frxReport1.Variables['L62']:= ''''+Label62.Caption+'''';
 frxReport1.Variables['L63']:= ''''+Label63.Caption+'''';
 frxReport1.Variables['L56']:= ''''+Label56.Caption+'''';
 frxReport1.Variables['L57']:= ''''+Label57.Caption+'''';
 frxReport1.Variables['L64']:= ''''+Label64.Caption+'''';


 frxreport1.PrepareReport();
 
 frxreport1.ShowPreparedReport;
end;



procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
                 begin
                   Key:=#0;
                   SpeedButton7.Click;
                 end;
end;

procedure TForm1.JPG1Click(Sender: TObject);
begin

 frxReport1.Variables.Clear;

// frxReport1.Variables[' ' + 'My Category 1'] := Null;
 if CheckBox10.Checked then
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+datetostr(DateTimePicker9.Date)+'''';
  frxReport1.Variables['DAT_END']:= ''''+datetostr(DateTimePicker10.Date)+'''';
 end
 else
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+' '+'''';
  frxReport1.Variables['DAT_END']:= ''''+' '+'''';
 end;

 frxReport1.Variables['SEARCH_STR']:= ''''+Edit5.Text+'''';

 frxReport1.Variables['L58']:= ''''+Label58.Caption+'''';
 frxReport1.Variables['L59']:= ''''+Label59.Caption+'''';
 frxReport1.Variables['L60']:= ''''+Label60.Caption+'''';
 frxReport1.Variables['L61']:= ''''+Label61.Caption+'''';
 frxReport1.Variables['L62']:= ''''+Label62.Caption+'''';
 frxReport1.Variables['L63']:= ''''+Label63.Caption+'''';
 frxReport1.Variables['L56']:= ''''+Label56.Caption+'''';
 frxReport1.Variables['L57']:= ''''+Label57.Caption+'''';
 frxReport1.Variables['L64']:= ''''+Label64.Caption+'''';

frxReport1.PrepareReport;
frxReport1.Export(frxJPEGExport1);
end;

procedure TForm1.IF1Click(Sender: TObject);
begin

 frxReport1.Variables.Clear;

// frxReport1.Variables[' ' + 'My Category 1'] := Null;
 if CheckBox10.Checked then
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+datetostr(DateTimePicker9.Date)+'''';
  frxReport1.Variables['DAT_END']:= ''''+datetostr(DateTimePicker10.Date)+'''';
 end
 else
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+' '+'''';
  frxReport1.Variables['DAT_END']:= ''''+' '+'''';
 end;

 frxReport1.Variables['SEARCH_STR']:= ''''+Edit5.Text+'''';

 frxReport1.Variables['L58']:= ''''+Label58.Caption+'''';
 frxReport1.Variables['L59']:= ''''+Label59.Caption+'''';
 frxReport1.Variables['L60']:= ''''+Label60.Caption+'''';
 frxReport1.Variables['L61']:= ''''+Label61.Caption+'''';
 frxReport1.Variables['L62']:= ''''+Label62.Caption+'''';
 frxReport1.Variables['L63']:= ''''+Label63.Caption+'''';
 frxReport1.Variables['L56']:= ''''+Label56.Caption+'''';
 frxReport1.Variables['L57']:= ''''+Label57.Caption+'''';
 frxReport1.Variables['L64']:= ''''+Label64.Caption+'''';

frxReport1.PrepareReport;
frxReport1.Export(frxTIFFExport1);
end;



procedure TForm1.XLS1Click(Sender: TObject);
begin
 frxReport1.Variables.Clear;

// frxReport1.Variables[' ' + 'My Category 1'] := Null;
 if CheckBox10.Checked then
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+datetostr(DateTimePicker9.Date)+'''';
  frxReport1.Variables['DAT_END']:= ''''+datetostr(DateTimePicker10.Date)+'''';
 end
 else
 begin
  frxReport1.Variables['DAT_BEG']:= ''''+' '+'''';
  frxReport1.Variables['DAT_END']:= ''''+' '+'''';
 end;

 frxReport1.Variables['SEARCH_STR']:= ''''+Edit5.Text+'''';

 frxReport1.Variables['L58']:= ''''+Label58.Caption+'''';
 frxReport1.Variables['L59']:= ''''+Label59.Caption+'''';
 frxReport1.Variables['L60']:= ''''+Label60.Caption+'''';
 frxReport1.Variables['L61']:= ''''+Label61.Caption+'''';
 frxReport1.Variables['L62']:= ''''+Label62.Caption+'''';
 frxReport1.Variables['L63']:= ''''+Label63.Caption+'''';
 frxReport1.Variables['L56']:= ''''+Label56.Caption+'''';
 frxReport1.Variables['L57']:= ''''+Label57.Caption+'''';
 frxReport1.Variables['L64']:= ''''+Label64.Caption+'''';

 frxReport1.PrepareReport;
frxReport1.Export(frxXLSExport1);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
SpeedButton8.Click;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
                 begin
                   Key:=#0;
                   SpeedButton1.Click;
                 end;
end;

end.



