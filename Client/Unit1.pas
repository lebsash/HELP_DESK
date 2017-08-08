unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Login_Flag: integer;
  NAME_USER, FAMILY_USER:string;
  ID_USER:Integer;
  ROLE_USER:string;
implementation

uses login, users;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Login_Flag:=1;
  
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  if Login_Flag=1 then form3.showmodal;

end;

procedure TForm1.N3Click(Sender: TObject);
begin
 form4.showmodal;
end;

end.
 