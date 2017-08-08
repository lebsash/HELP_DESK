unit mess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, unit2, unit1, DB,
  IBCustomDataSet, IBQuery;

type
  TForm5 = class(TForm)
    RichEdit1: TRichEdit;
    Splitter1: TSplitter;
    RichEdit2: TRichEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
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
    RichEdit3: TRichEdit;
    IBQuery1: TIBQuery;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RichEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('INSERT INTO ZAPROS_TELO (TEXT, STATUS, ID_SHAPKA, ID_FROM, DATE_GET)  VALUES (:TEXT, :STATUS, :ID_SHAPKA, :ID_FROM, :DATE_GET)');
 IBQuery1.ParamByName('TEXT').AsString:=RichEdit2.Lines.Text;
 IBQuery1.ParamByName('STATUS').AsInteger:=3;
 IBQuery1.ParamByName('ID_SHAPKA').AsInteger:=strtoint(Label2.Caption);
 IBQuery1.ParamByName('ID_FROM').AsInteger:=unit1.ID_USER;
 IBQuery1.ParamByName('DATE_GET').AsDateTime:=now;
 IBQuery1.Close;
 IBQuery1.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;


 // Обновляем выдачу сообщений
 RichEdit2.Clear;
 RichEdit1.Clear;



    // Выводим в ричедит информацию
   Form1.IBQuery5.SQL.Clear;
   Form1.IBQuery5.SQL.Append('select * from ZAPROS_TELO WHERE ID_SHAPKA=:ID_SHAPKA ORDER BY DATE_GET;');
   Form1.IBQuery5.ParamByName('ID_SHAPKA').AsInteger:=strtoint(label2.Caption);
   Form1.IBQuery5.Close;
   Form1.IBQuery5.Open;
   Form1.IBQuery5.First;

   While not Form1.IBQuery5.Eof do
     begin
      form5.RichEdit1.ReadOnly:=false;

     Form5.RichEdit1.SelAttributes.Color:=clMenuHighLight;
     Form5.RichEdit1.SelAttributes.Style := Form5.RichEdit1.SelAttributes.Style + [fsBold];
     case Form1.IBQuery5STATUS.AsInteger of
      1: form5.RichEdit1.Lines.Append(Form1.IBQuery5DATE_GET.AsString+' Администратор:');
      2: form5.RichEdit1.Lines.Append(Form1.IBQuery5DATE_GET.AsString+' Администратор:');
      3: form5.RichEdit1.Lines.Append(Form1.IBQuery5DATE_GET.AsString+ ' Ваши комментарии:');
      4: form5.RichEdit1.Lines.Append(Form1.IBQuery5DATE_GET.AsString+ 'Ваши комментарии:');
     end;
      Form5.RichEdit1.SelAttributes.Color:=clBlack;
      Form5.RichEdit1.SelAttributes.Style := Form5.RichEdit1.SelAttributes.Style - [fsBold];
      form5.RichEdit1.Lines.Append(Form1.IBQuery5TEXT.AsString);
      form5.RichEdit1.Lines.Append(' ');

     Form1.IBQuery5.Next;
     end;


end;

procedure TForm5.RichEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (ssCtrl in Shift) and (Key = VK_RETURN) then
if length(RichEdit2.Lines.Text)>1 then speedbutton1.Click;
end;

end.
