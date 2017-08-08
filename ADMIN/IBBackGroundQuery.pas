unit IBBackGroundQuery;

interface

uses
 Classes, IBDataBase, IBQuery, SysUtils, Messages, Forms, DB, Windows;

type
 TIBBackGroundQuery = class(TThread)
 private
   { Private declarations }
   FDBName      : String;
   FSQLString   : String;
   FDBParams    : TStringList;

   FIBDB        : TIBDataBase;
   FIBT         : TIBTransaction;
   FIBQSequences1: TIBQuery;
   FIBQSequences2: TIBQuery;
   FDS          : TDataSource;
   FQueryException: Exception;


   procedure ShowQryError;
   procedure ConnectDataSource;
   procedure Show1;
   procedure Show2;
   procedure Show3;
   procedure Show4;
 protected
   procedure Execute; override;
 public
   constructor Create(ADBName: String; ADBParams: TStrings;
                      const ASQLString: String; const ADS: TDataSource); virtual;
   destructor Destroy; override;
 end;

implementation
uses unit1;

var  flh1, nums1: integer;
{ Important: Methods and properties of objects in VCL or CLX can only be used
 in a method called using Synchronize, for example,

     Synchronize(UpdateCaption);

 and UpdateCaption could look like,

   procedure TIBBackGroundQuery.UpdateCaption;
   begin
     Form1.Caption := "Updated in a thread";
   end; }

{ TIBBackGroundQuery }

constructor TIBBackGroundQuery.Create(ADBName: String; ADBParams: TStrings;
                                     const ASQLString: String; const ADS: TDataSource);
begin
 inherited Create(false);

 FDBName    := ADBName;
 FDBParams  := TStringList.Create;
 FDBParams.Assign(ADBParams);
 FSQLString := ASQLString;

 FDS := ADS;
 FreeOnTerminate := false;
end;

destructor TIBBackGroundQuery.Destroy;
begin
 inherited;
 FIBDB.Free;
 FIBT.Free;
 FIBQSequences2.Free;
 FIBQSequences1.Free;
end;

procedure TIBBackGroundQuery.ShowQryError;
begin
 Application.ShowException(FQueryException);
end;

procedure TIBBackGroundQuery.Show1;
begin
 unit1.Form1.Label48.Caption:=inttostr(nums1);
 unit1.Form1.label53.Caption:='1';
end;


procedure TIBBackGroundQuery.Show2;
begin
 unit1.Form1.Label49.Caption:=inttostr(nums1);
 unit1.Form1.label53.Caption:='2';
end;


procedure TIBBackGroundQuery.Show3;
begin
 unit1.Form1.SpeedButton1.Click;
 unit1.Form1.label50.Caption:='911';

end;


procedure TIBBackGroundQuery.Show4;
begin
 unit1.Form1.label50.Caption:='0'
end;

procedure TIBBackGroundQuery.ConnectDataSource;
begin
 FDS.DataSet := FIBQSequences1;
 FDS.DataSet := FIBQSequences2;
 FDS.DataSet.Active := false;
end;

procedure TIBBackGroundQuery.Execute;

begin
 { Place thread code here }
 try
 FIBDB:= TIBDataBase.Create(nil);
 FIBDB.LoginPrompt := false;
 FIBT := TIBTransaction.Create(nil);
 FIBDB.DatabaseName := FDBName;
 FIBDB.Params.Assign(FDBParams);
 FDBParams.Free;
 FIBT.Params.Clear;
 FIBT.Params.Add('read_committed');
 FIBT.Params.Add('rec_version');
 FIBT.Params.Add('nowait');
 FIBDB.DefaultTransaction := FIBT;
 FIBT.DefaultDatabase := FIBDB;

 //FIBQSequences:= TIBQuery.Create(nil);
 FIBQSequences1:= TIBQuery.Create(nil);
 FIBQSequences2:= TIBQuery.Create(nil);

 FIBQSequences1.Database := FIBDB;
 FIBQSequences1.Transaction := FIBT;
 FIBQSequences2.Database := FIBDB;
 FIBQSequences2.Transaction := FIBT;

 FIBQSequences1.SQL.Clear;
 FIBQSequences1.SQL.Add(FSQLString);
 FIBQSequences2.SQL.Clear;
 FIBQSequences2.SQL.Add(FSQLString);


 While unit1.Form1.Label52.Caption<>'911' do
   begin
   with unit1.Form1 do
   begin
     if Unit1.Form1.Edit4.Text='' then Unit1.Form1.Edit4.Text:='10';
    sleep (strtoint(Unit1.Form1.Edit4.Text));
   flh1:=0;

            // В первом такте делаем выборку №1
            FIBQSequences1.SQL:=IBQuery1.SQL;
            FIBQSequences1.Params:=IBQuery1.Params;


            FIBQSequences1.Close;
            FIBQSequences1.Open;
            FIBQSequences1.First;
            nums1:=0;
            While not FIBQSequences1.Eof do
            begin
            nums1:=nums1+1;
            FIBQSequences1.Next;
            end;
           Synchronize(Show1);
           sleep(20);

            FIBQSequences2.SQL:=FIBQSequences1.SQL;
            FIBQSequences2.Params:=FIBQSequences1.Params;

            FIBQSequences2.Close;
            FIBQSequences2.Open;
            FIBQSequences2.First;
            nums1:=0;
            While not FIBQSequences2.Eof do
            begin
            nums1:=nums1+1;
            FIBQSequences2.Next;
            end;
            Synchronize(Show2);
        sleep(20);

            if (strtoint (Label49.Caption)=strtoint (Label48.Caption))and(strtoint (Label51.Caption)=strtoint (Label48.Caption))
               then
                 begin
                  // Сравниваем построчно
                  FIBQSequences1.First;
                  FIBQSequences2.First;

                  While not FIBQSequences1.Eof do
                    begin

                      //if FIBQSequences1STATUS.AsString<>IBQuery16STATUS.AsString then flh1:=1;
                      //if IBQuery15SPEED.AsString<>IBQuery16SPEED.AsString then flh1:=1;

                      if FIBQSequences1.ParamByName('STATUS').AsInteger<>FIBQSequences2.ParamByName('STATUS').AsInteger then flh1:=1;
                      FIBQSequences1.Next;
                      FIBQSequences2.Next;
                    end;


                 end
                 else flh1:=1; // Сигнал на обновление выдачи


                 if flh1=1 then
                    begin
                      // Обновляем выдачу
                      //SpeedButton1.Click;
                      //label50.Caption:='911';
                      Synchronize(Show3);
                    end else Synchronize(Show4);//label50.Caption:='0';

             Synchronize(Show4);
           // label53.Caption:='0'



  //end;
   end;
 end;


 //FIBQSequences1.Open;
 // Synchronize(ConnectDataSource);
 except
   FQueryException := ExceptObject as Exception;
   Synchronize(ShowQryError);
 end;
end;

end.
