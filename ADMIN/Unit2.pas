unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDataModule2 = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBDatabase2: TIBDatabase;
    IBTransaction2: TIBTransaction;
    IBQuery4: TIBQuery;
    IBQuery5: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure IBDatabase1AfterDisconnect(Sender: TObject);
    procedure IBDatabase1AfterConnect(Sender: TObject);
    procedure IBDatabase2AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  DataModule2: TDataModule2;
  FLAG_DB_CONNECT: integer;

implementation
 uses unit1, login;
{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
var f: textFile;
    z, z1: string;
begin
 // Читаем из файла настройки системы
 AssignFile (f,'dbconnect.ini');
 Reset (f);
 Readln(f,z);
 IBDataBase1.DatabaseName:=z;
 IBDataBase2.DatabaseName:=z;
 CloseFile (f);

   try
      IBDataBase2.Connected:=True;
    except
    //  Login.Form3.StatusBar1.Panels[0].Text:='Ошибка соединения с БД';
   //   Showmessage('Ошибка соединения с БД');

    end; // try


  // Читаем из файла настройки системы
 AssignFile (f,'opt.ini');
 Reset (f);
 Readln(f,z);
 Readln(f,z1);
  Readln(f,z1);
 Readln(f,z1);
 Unit1.speedtime:=z1;
 unit1.variant:=strtoint (z); // Если 1 - по таймеру
                              // Если 0 - потоковый вариант
 CloseFile (f);


end;

procedure TDataModule2.IBDatabase1AfterDisconnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=0;
end;

procedure TDataModule2.IBDatabase1AfterConnect(Sender: TObject);
begin
FLAG_DB_CONNECT:=1;
end;

procedure TDataModule2.IBDatabase2AfterConnect(Sender: TObject);
var IP_NEWSTRING1:string;
begin

    // Проверяем базу на наличие таблицы

    IBQuery4.SQL.Clear;
    IBQuery4.SQL.Append('SELECT * FROM USERSGRAY');
    try
     IBQuery4.Close;
     IBQuery4.Open;
      except
         on E:Exception do
         begin
                 IBQuery5.SQL.Clear;
                 IBQuery5.SQL.Text:='CREATE TABLE USERSGRAY (ID INTEGER, NAME_LOGIN VARCHAR(40) CHARACTER SET WIN1251, DET INTEGER) ';
                   try
                   IBQuery5.Close;
                   IBQuery5.Open;
                    DataModule2.IBTransaction2.CommitRetaining;
                    unit1.Form1.CloseQuery;
                     except
                     on e:exception do
                       //ShowMessage(e.Message);
                                    end;
                    end;
      end;
      // Нужные таблицы созданы!!!



     // В данном месте начинаем проверку БД на наличие нужных полей

 IBQuery4.SQL.Clear;
 IBQuery4.SQL.Append('SELECT USLOGIN FROM USERS');
try
 IBQuery4.Close;
 IBQuery4.Open;
except
on E:Exception do
    begin

     IP_NEWSTRING1:='USLOGIN';

     IBQuery5.SQL.Clear;
     IBQuery5.SQL.Add(format('alter table USERS add %s varchar (45);', [IP_NEWSTRING1]));
     try
     IBQuery5.Close;
     IBQuery5.Open;
     DataModule2.IBTransaction2.CommitRetaining;
      except
     on e:exception do
     //ShowMessage(e.Message);
     end;

     end;
end;



 IBQuery4.SQL.Clear;
 IBQuery4.SQL.Append('SELECT IPLOCAL FROM ZAPROZ');
try
 IBQuery4.Close;
 IBQuery4.Open;
except
on E:Exception do
    begin

     IP_NEWSTRING1:='IPLOCAL';

     IBQuery5.SQL.Clear;
     IBQuery5.SQL.Add(format('alter table ZAPROZ add %s varchar (17);', [IP_NEWSTRING1]));
     try
     IBQuery5.Close;
     IBQuery5.Open;
     DataModule2.IBTransaction2.CommitRetaining;
      except
     on e:exception do
     //ShowMessage(e.Message);
     end;

     end;
end;



IBQuery4.SQL.Clear;
 IBQuery4.SQL.Append('SELECT IPPC FROM ZAPROZ');
try
 IBQuery4.Close;
 IBQuery4.Open;
except
on E:Exception do
    begin

     IP_NEWSTRING1:='IPPC';

     IBQuery5.SQL.Clear;
     IBQuery5.SQL.Add(format('alter table ZAPROZ add %s varchar (17);', [IP_NEWSTRING1]));
     try
     IBQuery5.Close;
     IBQuery5.Open;
     DataModule2.IBTransaction2.CommitRetaining;
      except
     on e:exception do
     //ShowMessage(e.Message);
     end;

     end;
end;

   try
      IBDataBase1.Connected:=True;
    except
    //  Login.Form3.StatusBar1.Panels[0].Text:='Ошибка соединения с БД';
   //   Showmessage('Ошибка соединения с БД');

    end; // try
    IBDataBase2.Connected:=false;

  //Проверка БД на наличие нужных полей заканчивается


end;

end.
