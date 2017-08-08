program desk_client;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  login in 'login.pas' {Form3},
  new_zapros in 'new_zapros.pas' {Form4},
  mess in 'mess.pas' {Form5},
  zapros1 in 'zapros1.pas' {Form6},
  zapdel in 'zapdel.pas' {Form7},
  options in 'options.pas' {Form8},
  Unit3 in 'Unit3.pas',
  Unit9 in 'Unit9.pas' {Form9},
  Unit10 in 'Unit10.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Help_DESK - клиент';
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
