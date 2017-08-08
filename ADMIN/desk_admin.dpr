program desk_admin;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {DataModule2: TDataModule},
  login in 'login.pas' {Form3},
  users in 'users.pas' {Form4},
  firm in 'firm.pas' {Form5},
  user_add in 'user_add.pas' {Form6},
  zapros in 'zapros.pas' {Form7},
  getop in 'getop.pas' {Form8},
  otklon in 'otklon.pas' {Form9},
  loglist in 'loglist.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11},
  Unit12 in 'Unit12.pas' {Form12},
  error in 'error.pas' {Form13},
  Unit3 in 'Unit3.pas',
  opt2 in 'opt2.pas' {Form14},
  Unit4 in 'Unit4.pas',
  th1 in 'th1.pas',
  Unit15 in 'Unit15.pas' {Form15};

{$R *.res}

begin
  Application.Initialize;
//  Application.CreateForm(TDataModule2, DataModule2);
 // Application.CreateForm(TForm1, Form1);
  Application.Title := 'Help_DESK';
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.Run;
 end.
