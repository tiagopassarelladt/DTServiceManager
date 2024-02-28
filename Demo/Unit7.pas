unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DTServiceManager;

type
  TForm7 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTServiceManager1: TDTServiceManager;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
    DTServiceManager1.StatusServico('iCloudPassarellaSistemas');
    Memo1.Lines.Text := DTServiceManager1.Retorno.Mensagem;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
    DTServiceManager1.FinalizaServico('iCloudPassarellaSistemas');
    Memo1.Lines.Text := DTServiceManager1.Retorno.Mensagem;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
    DTServiceManager1.InicializaServico('iCloudPassarellaSistemas','icloudPassarella.exe');
    Memo1.Lines.Text := DTServiceManager1.Retorno.Mensagem;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
  DTServiceManager1.CaminhoDLL := 'D:\Dropbox\Componentes\DTServiceManagerDLL\Win32\Debug\DTServiceManager.dll';
end;

end.