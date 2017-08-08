unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
  TDataModule2 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    procedure IBDatabase1BeforeConnect(Sender: TObject);
    procedure IBDatabase1AfterConnect(Sender: TObject);
    procedure IBDatabase1AfterDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;
  FLAG_DB_CONNECT: integer;
implementation

{$R *.dfm}

procedure TDataModule2.IBDatabase1BeforeConnect(Sender: TObject);
var f: textFile;
    s: string;
begin
 AssignFile (f,'dbconnect.ini');
 Reset(f);
 Readln(f,s);
 IBDataBase1.DatabaseName:=s;
 CloseFile (f);

end;

procedure TDataModule2.IBDatabase1AfterConnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=1; // Подключились к БД
end;

procedure TDataModule2.IBDatabase1AfterDisconnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=0; // Отключились от БД
end;

end.
