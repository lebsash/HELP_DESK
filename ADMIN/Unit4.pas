unit Unit4;

interface

uses
  Classes, unit2, Windows, Messages, SysUtils, DB, IB;
type
  TSimpleThread = class(TThread)
  procedure UpdateNUM;
  procedure UpdateNUM1;
  procedure UpdateFA;
  procedure UpdateVID;
  procedure CopyQuery;
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;


implementation
 uses unit1;


{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TSimpleThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TSimpleThread }
procedure TSimpleThread.UpdateNUM;
begin

end;

procedure TSimpleThread.UpdateNUM1;
begin

end;

 procedure TSimpleThread.UpdateFA;
begin
   //form1.IBQuery14.DisableControls;

   unit1.Form1.IBQuery12.FetchAll;

   //unit1.Form1.IBQuery14.FetchAll;
   //form1.IBQuery14.EnableControls;
   end;

 procedure TSimpleThread.CopyQuery;
begin



end;
// !!!!!!!!!!!!! =================== !!!!!!!!!!!!!
procedure TSimpleThread.UpdateVID;

begin
  // Формируем строку запроса



end;


// !!!!!!!!!!!!! =================== !!!!!!!!!!!!!

procedure TSimpleThread.Execute;
  var sql, bm:string;
    id_f, l1, speed, status, nutt, kkl, tuz:integer;
begin
  { Place thread code here }

 try


  except
  {$I+}
      // Если возникает ошибка - обрабатываем ее и снова пробуем подключиться


  on   EIBInterBaseError do
  begin

   end;



  {
   // Подключились, выставляем флаги
   if unit2.FLAG_DB_CONNECT=1 then begin
                                     login.Form3.StatusBar1.Panels[0].Text:='Соединились с БД';


                             end
                             else begin
                                    login.Form3.StatusBar1.Panels[0].Text:=('Связь с БД отсутствует');

                                  end;

   login.Flag_WORK_thrd:=0;
   }
    //form1.IBQuery1.EnableControls;
    //Form1.IBQuery12.EnableControls;
    

   end;
end;

end.

