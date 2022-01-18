unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, OleCtrls, SHDocVw, ActnList,
  ImgList, Menus, ComCtrls, WBFuncs, XPMan, MPlayer;

type
  TForm1 = class(TForm)
    Web: TWebBrowser;
    Panel1: TPanel;
    ImageList1: TImageList;
    ActionList1: TActionList;
    MainMenu1: TMainMenu;
    Ferramentas1: TMenuItem;
    Sair1: TMenuItem;
    BitBtn3: TBitBtn;
    MNovajanela: TMenuItem;
    MAbrir: TMenuItem;
    MSalvarcomo: TMenuItem;
    N1: TMenuItem;
    MSair: TMenuItem;
    MRecortar: TMenuItem;
    MCopiar: TMenuItem;
    MColar: TMenuItem;
    l3: TMenuItem;
    Sair2: TMenuItem;
    ComboBox1: TComboBox;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    N3: TMenuItem;
    Localizar1: TMenuItem;
    applicationTerminate1: TMenuItem;
    Panel3: TPanel;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    ProgressBar1: TProgressBar;
    N2: TMenuItem;
    Sair3: TMenuItem;
    BitBtn12: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    XPManifest1: TXPManifest;
    l1: TMenuItem;
    MediaPlayer1: TMediaPlayer;
    BitBtn13: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Verde1Click(Sender: TObject);
    procedure Preto1Click(Sender: TObject);
    procedure Azul1Click(Sender: TObject);
    procedure Vermelho1Click(Sender: TObject);
    procedure Verde2Click(Sender: TObject);
    procedure Azul2Click(Sender: TObject);
    procedure Marrom1Click(Sender: TObject);
    procedure Vermelho2Click(Sender: TObject);
    procedure Preto2Click(Sender: TObject);
    procedure Marrom2Click(Sender: TObject);
    procedure Amarelo2Click(Sender: TObject);
    procedure Amarelo1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure WebProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure WebCommandStateChange(Sender: TObject; Command: Integer;
      Enable: WordBool);
    procedure WebBeforeNavigate2(Sender: TObject; const pDisp: IDispatch;
      var URL, Flags, TargetFrameName, PostData, Headers: OleVariant;
      var Cancel: WordBool);
    procedure WebStatusTextChange(Sender: TObject; const Text: WideString);
    procedure WebTitleChange(Sender: TObject; const Text: WideString);
    procedure MNovajanelaClick(Sender: TObject);
    procedure MAbrirClick(Sender: TObject);
    procedure MSalvarcomoClick(Sender: TObject);
    procedure MRecortarClick(Sender: TObject);
    procedure MCopiarClick(Sender: TObject);
    procedure MColarClick(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure applicationTerminate1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Sair3Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Web.GoForward;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Web.GoBack;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Web.Refresh;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Web.Stop;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
Web.GoHome;
end;

procedure TForm1.Verde1Click(Sender: TObject);
begin
Panel1.Color := clGreen;
end;

procedure TForm1.Preto1Click(Sender: TObject);
begin
Panel1.Color := clblack;
end;

procedure TForm1.Azul1Click(Sender: TObject);
begin
Panel1.Color := clblue;
end;

procedure TForm1.Vermelho1Click(Sender: TObject);
begin
Panel1.Color := clred;
end;

procedure TForm1.Verde2Click(Sender: TObject);
begin
ComboBox1.Color := clgreen;
end;

procedure TForm1.Azul2Click(Sender: TObject);
begin
ComboBox1.Color := clblue;
end;

procedure TForm1.Marrom1Click(Sender: TObject);
begin
Panel1.Color := clwhite;
end;

procedure TForm1.Vermelho2Click(Sender: TObject);
begin
ComboBox1.Color := clred;
end;

procedure TForm1.Preto2Click(Sender: TObject);
begin
ComboBox1.Color := clblack;
end;

procedure TForm1.Marrom2Click(Sender: TObject);
begin
ComboBox1.Color := clwhite;
end;

procedure TForm1.Amarelo2Click(Sender: TObject);
begin
ComboBox1.Color := clyellow;
end;

procedure TForm1.Amarelo1Click(Sender: TObject);
begin
Panel1.Color := clyellow;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
Web.GoSearch;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
Web.Quit;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
Web.LocationURL;
end;

procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
//Se a tecla pressionada for Enter, então navegue até a //página tal.
    if (key=#13) then
      begin
        web.Navigate(combobox1.Text);
    end;
end;

procedure TForm1.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = (VK_RETURN) then
Web.Navigate(ComboBox1.text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Web.GoHome;
end;

procedure TForm1.FormResize(Sender: TObject);
var
r: TRect;
const
SB_GETRECT = WM_USER + 10;
begin
// Definindo onde ficará a progressbar, neste caso será
//Na barra de Status, no painel 1
Statusbar1.Perform(SB_GETRECT, 1, Integer(@R));
ProgressBar1.Parent := Statusbar1;
ProgressBar1.SetBounds(r.Left, r.Top,
r.Right - r.Left - 5, r.Bottom - r.Top);
end;

procedure TForm1.WebProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
{Ele faz um rotina para saber se o valor Maximo do
Progressbar é maior que 1 e o valor minimo tambem
se for, então ele faz a rotina}
If (Progress>=1) and (ProgressMax>1)
then
begin
//Ele tira uma valor percentual para colocar
//no Progressbar
ProgressBar1.Position := Round((Progress * 100)
Div ProgressMax);
ProgressBar1.Visible := True;
end
else
begin
ProgressBar1.Position := 1;
ProgressBar1.Visible := False;
end;
end;

procedure TForm1.WebCommandStateChange(Sender: TObject; Command: Integer;
  Enable: WordBool);
begin
case Command of
CSC_NAVIGATEBACK: begin
//Ativa e Desativa Automaticamente o Botão Voltar,
//Caso tenha alguma página para voltar
BitBtn1.Enabled := Enable;
end;
CSC_NAVIGATEFORWARD: begin
//Ativa e Desativa Automaticamente o Botão Avançar,
//Caso tenha alguma página para avançar
BitBtn2.Enabled := Enable;
end;
end;
end;

procedure TForm1.WebBeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
begin
{Ao Nevagar uma página, ele coloca automaticamente
o endereço dela no combobox, para sabermos que página
estamos entrando, o endereço da mesma}
combobox1.Text:=url;
end;

procedure TForm1.WebStatusTextChange(Sender: TObject;
  const Text: WideString);
begin
StatusBar1.Panels[0].Text:=text;
end;

procedure TForm1.WebTitleChange(Sender: TObject; const Text: WideString);
begin
{Colocar o nome da página + ' - WR', o nome pode ser alterado}
Form1.Caption:=text + ' - WR';
end;

procedure TForm1.MNovajanelaClick(Sender: TObject);
begin
{Colocar o nome da página + ' - WR', o nome pode ser alterado}
Form1.Caption:=text + ' - WR';
end;

procedure TForm1.MAbrirClick(Sender: TObject);
begin
if OpenDialog1.Execute then
web.Navigate(OpenDialog1.FileName) else
exit;
end;

procedure TForm1.MSalvarcomoClick(Sender: TObject);
begin
WB_Save(Web);
end;

procedure TForm1.MRecortarClick(Sender: TObject);
begin
WB_Cut(web);
end;

procedure TForm1.MCopiarClick(Sender: TObject);
begin
WB_Copy(web);
end;

procedure TForm1.MColarClick(Sender: TObject);
begin
WB_paste(web);
end;

procedure TForm1.Localizar1Click(Sender: TObject);
begin
WB_ShowFindDialog(web);
end;

procedure TForm1.applicationTerminate1Click(Sender: TObject);
begin
WB_ShowPropertiesDialog(Web);
end;

procedure TForm1.N1Click(Sender: TObject);
begin
WB_ShowPrintDialog(Web);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
WB_ShowPrintDialog(Web);
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
WB_Save(Web);
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
WinExec(Pchar(Application.exename),SW_MAXIMIZE);
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
WB_ShowFindDialog(Web);
end;

procedure TForm1.Sair3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Sair2Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
 If OpenDialog1.Execute Then
 Begin
  MediaPlayer1.FileName := OpenDialog1.FileName;
  MediaPlayer1.Open;
 end;
end;

end.
