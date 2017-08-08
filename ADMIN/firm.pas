unit firm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unit2, DB, IBCustomDataSet, IBQuery, Buttons, StdCtrls, users;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    IBQuery1: TIBQuery;
    Label6: TLabel;
    IBQuery2: TIBQuery;
    Label7: TLabel;
    Memo1: TMemo;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
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
if Label6.Caption='1' then
begin

if length(Edit1.Text)>0 then
begin

 IBQuery1.SQL.Clear;
 IBQuery1.SQL.Append('INSERT INTO FIRM (NAME, OTHER, PHONE, ACT) VALUES (:NAME, :OTHER, :PHONE, :ACT)');
 IBQuery1.ParamByName('NAME').AsString:=Edit1.Text;
 IBQuery1.ParamByName('OTHER').AsString:=Memo1.Text;
 IBQuery1.ParamByName('PHONE').AsString:=Edit2.Text;
 if ComboBox1.Text='Неактивна' then IBQuery1.ParamByName('ACT').AsInteger:=1;
 if ComboBox1.Text='Активна' then IBQuery1.ParamByName('ACT').AsInteger:=2;
 IBQuery1.Close;
 IBQuery1.Open;
 unit2.DataModule2.IBTransaction1.CommitRetaining;
 users.Form4.IBQuery1.SQL.Clear;
 users.Form4.IBQuery1.SQL.Append('select * from FIRM ORDER BY NAME');
 users.Form4.IBQuery1.Close;
 users.Form4.IBQuery1.Open;
 users.Form4.IBQuery1.First;

 if NOT users.Form4.IBQuery1.Eof then
    begin
      users.Form4.IBQuery4.SQL.Clear;
      users.Form4.IBQuery4.SQL.Append('select * from USERS WHERE ID_FIRM=:ID_FIRM');
      users.Form4.IBQuery4.ParamByName('ID_FIRM').AsInteger:=users.Form4.IBQuery1ID.AsInteger;
      users.Form4.IBQuery4.Close;
      users.Form4.IBQuery4.Open;
    end;


 Form5.Close;
end //if length(Edit1.Text)>0 then
else showmessage('Необходимо заполнить название фирмы'); 
end;


if Label6.Caption='2' then
   begin
     IBQuery2.SQL.Clear;
     IBQuery2.SQL.Append('UPDATE FIRM SET ACT=:ACT, ADRESS=:ADRESS, NAME=:NAME, OTHER=:OTHER, PHONE=:PHONE WHERE ID=:ID');
     IBQuery2.ParamByName('NAME').AsString:=Edit1.Text;
     IBQuery2.ParamByName('OTHER').AsString:=Memo1.Text;
     IBQuery2.ParamByName('ADRESS').AsString:=Edit2.Text;
     IBQuery2.ParamByName('PHONE').AsString:=Edit3.Text;
     if ComboBox1.SelText='Неактивна' then IBQuery2.ParamByName('ACT').AsInteger:=1;
     if ComboBox1.SelText='Активна' then IBQuery2.ParamByName('ACT').AsInteger:=2;
     IBQuery2.ParamByName('ID').AsInteger:=strtoint(label7.caption);
     IBQuery2.Close;
     IBQuery2.Open;
     unit2.DataModule2.IBTransaction1.CommitRetaining;
     users.Form4.IBQuery1.SQL.Clear;
     users.Form4.IBQuery1.SQL.Append('select * from FIRM ORDER BY NAME');
     users.Form4.IBQuery1.Close;
     users.Form4.IBQuery1.Open;
     users.Form4.IBQuery1.First;
      users.Form4.IBQuery4.SQL.Clear;
      users.Form4.IBQuery4.SQL.Append('select * from USERS WHERE ID_FIRM=:ID_FIRM');
      users.Form4.IBQuery4.ParamByName('ID_FIRM').AsInteger:=strtoint(label7.caption);
      users.Form4.IBQuery4.Close;
      users.Form4.IBQuery4.Open;



     Form5.Close;

   end;


end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
begin
 Form5.Close;
end;

end.
