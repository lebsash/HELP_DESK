unit loglist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, ComCtrls, Buttons,
  StdCtrls, ExtCtrls, unit2, Menus, unit1;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    SpeedButton1: TSpeedButton;
    StatusBar1: TStatusBar;
    IBQuery1: TIBQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    IBQuery2: TIBQuery;
    IBQuery2ACT_TYPE: TIBStringField;
    IBQuery1ID: TIntegerField;
    IBQuery1DATE_GET: TDateTimeField;
    IBQuery1ID_USER: TIntegerField;
    IBQuery1TEXT: TIBStringField;
    IBQuery1ID_SHAP: TIntegerField;
    IBQuery1ACT_TYPE: TIBStringField;
    IBQuery1FIO: TIBStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SaveDialog1: TSaveDialog;
    N2: TMenuItem;
    IBQuery3: TIBQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',decimalseparator,#8]) then key:=#0;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
 IBQuery2.SQL.Clear;
 IBQuery2.SQL.Append('select DISTINCT ACT_TYPE from ACTIONS ORDER BY ACT_TYPE');
 IBQuery2.Close;
 IBQuery2.Open;
 IBQuery2.First;
 ComboBox1.Clear;
 ComboBox1.Items.Append('Не имеет значения');
 While not IBQuery2.Eof do
   begin
    ComboBox1.Items.Append(IBQuery2ACT_TYPE.AsString);
    IBQuery2.Next;
   end;
  ComboBox1.Text:='Не имеет значения';
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
var fl_and:integer;
begin
 // Начинаем выборку
 fl_and:=0;
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('select * from ACTIONS');
 if ((CheckBox1.Checked)or(Length(Edit1.Text)>0)or((ComboBox1.Text<>'Не имеет значения')AND(ComboBox1.Text<>''))or((ComboBox2.Text<>'Не имеет значения')AND(ComboBox2.Text<>'')))
  then begin
         IBQuery1.SQL.Append(' WHERE');
       end;


 if CheckBox1.Checked then begin
                             if fl_and>0 then IBQuery1.SQL.Append(' AND');
                             fl_and:=fl_and+1;
                             IBQuery1.SQL.Append(' DATE_GET>=:DATE1 AND DATE_GET<=:DATE2');
                           end;

 
 if Length(Edit1.Text)>0 then begin
                             if fl_and>0 then IBQuery1.SQL.Append(' AND');
                             fl_and:=fl_and+1;
                             IBQuery1.SQL.Append(' ID_SHAP=:ID_SHAP');
                           end;



 if ((ComboBox1.Text<>'')AND(ComboBox1.Text<>'Не имеет значения')) then begin
                             if fl_and>0 then IBQuery1.SQL.Append(' AND');
                             fl_and:=fl_and+1;
                             IBQuery1.SQL.Append(' ACT_TYPE=:ACT_TYPE');
                           end;
 if ((ComboBox2.Text<>'')AND(ComboBox2.Text<>'Не имеет значения')) then begin
                             if fl_and>0 then IBQuery1.SQL.Append(' AND');
                             fl_and:=fl_and+1;
                             IBQuery1.SQL.Append(' FIO=:FIO');
                           end;

  IBQuery1.SQL.Append('ORDER BY ID');

  if CheckBox1.Checked then begin

                             IBQuery1.ParamByName('DATE1').AsDate:=TRUNC(DateTimePicker1.Date);
                             IBQuery1.ParamByName('DATE2').AsDate:=TRUNC(DateTimePicker2.Date)+1;

                           end;

  if length(Edit1.Text)>0 then begin
                             IBQuery1.ParamByName('ID_SHAP').AsInteger:=strtoint(Edit1.Text)
                           end;
 if ((ComboBox1.Text<>'')AND(ComboBox1.Text<>'Не имеет значения')) then
                           begin
                             IBQuery1.ParamByName('ACT_TYPE').AsString:=ComboBox1.Text;
                           end;
 if ((ComboBox2.Text<>'')AND(ComboBox2.Text<>'Не имеет значения')) then
                           begin
                             IBQuery1.ParamByName('FIO').AsString:=ComboBox2.Text;
                           end;

  IBQuery1.Close;
  IBQuery1.Open;


end;

procedure TForm10.N1Click(Sender: TObject);
var f:textfile;
    s:string;
begin
if SaveDialog1.Execute then
 begin
  AssignFile(F,SaveDialog1.FileName);
  Rewrite(F);
  Append(F);
  IBQuery1.first;
  While not IBQuery1.Eof do
   begin
   s:=IBQuery1ID.AsString+' '+IBQuery1DATE_GET.AsString+' '+ IBQuery1ID_USER.AsString+' '+IBQuery1TEXT.AsString+' '+IBQuery1ACT_TYPE.AsString+' '+IBQuery1FIO.AsString;
   Writeln(f,s);
   IBQuery1.Next;
   end;
  CloseFile(F);
 end;
end;

procedure TForm10.N2Click(Sender: TObject);
begin
 // Чистим лог-файл
  if MessageDlg('Вы действительно хотите очистить таблицу событий?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
     if unit1.NAME_USER='admin' then begin
                                      IBQuery3.SQL.Clear;
                                      IBQuery3.SQL.Append('DELETE FROM ACTIONS');
                                      IBQuery3.Close;
                                      IBQuery3.Open;
                                      unit2.DataModule2.IBTransaction1.CommitRetaining;
                                      // Вносим запись об очистке лога
                                      SpeedButton1.Click;
                                      
                                     end;
    end;

end;

end.
