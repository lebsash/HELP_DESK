unit thrd2;

interface

uses
  Classes, Windows, Messages, SysUtils,DB, IB;

type
  TSimpleThread = class (TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure Thrd2.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ Thrd2 }
uses unit2, unit1, login;

procedure TSimpleThread.Execute;
begin


 try

    unit2.DataModule2.IBDatabase1.Connected := True; // Пробуем подключиться
  except
  {$I+}
      // Если возникает ошибка - обрабатываем ее и снова пробуем подключиться


  on   EIBInterBaseError do
  begin
         unit1.Form1.StatusBar1.Panels[0].Text:='Ошибка при соединении с БД';
   end;


  end;
   // Подключились, выставляем флаги
   if unit2
   sc.FLAG_DB_CONNECT=1 then begin

                                  sc.Form1.LogMemo.Lines.Append('Подключились к БД FireBird');


                             end
                             else begin
                                    sc.Form1.LogMemo.Lines.Append('Проблемы с БД');

                                  end;
   sc.Flag_WORK_thrd:=0;


end;

end.
