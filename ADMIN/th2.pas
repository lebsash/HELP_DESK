unit th2;
 // Поток вычисления строки для поиска
 // IBQuery14 содержит тень 1

interface

uses
  Classes, unit2, Windows, Messages, SysUtils, DB, IB;
type
  TSimple1 = class(TThread)
  procedure UpdateNUM;
  procedure UpdateVID;
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;


implementation
 uses unit1;




{ TSimpleThread }
procedure TSimple1.UpdateNUM;
begin

   if (strtoint(unit1.Form1.Label53.Caption)<2) then unit1.Form1.Label53.Caption:=inttostr(strtoint(unit1.Form1.Label53.Caption)+1)
                                       else unit1.Form1.Label53.Caption:='0';

end;

procedure TSimple1.UpdateVID;
begin



end;

procedure TSimple1.Execute;
 var sql:string;
    id_f, l1, speed, status, yyy:integer;
    bm1:string;
begin

   if   (unit2.FLAG_DB_CONNECT=1)and(unit1.Form1.Active)and (unit1.Form1.Label53.Caption='1') then begin


   with Unit1.Form1 do
  begin
 try
   // Вычисляем строку
  {
   IBQuery14.close;
    IBQuery14.open;
   IBQuery14.First;
   yyy:=0;
   //unit1.form1.IBQuery14.FetchAll;
   While not IBQuery14.Eof do
   begin
   yyy:=yyy+1;
   IBQuery14.Next;
   end;
   }

  // IBQuery14.EnableControls;
   // Synchronize (UpdateVID);

  finally
    Synchronize (UpdateNUM);
  end;

  end; // with Unit1.Form1 do

 end; // if   (unit2.FLAG_DB_CONNECT=1)and(unit1.Form1.Active) then begin
end;

end.

