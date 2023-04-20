unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  AulaInterface.Model.Pessoa, AulaInterface.Model.Interfaces,
  AulaInterface.Model.PessoaJuridica;

type
  TForm3 = class(TForm)
    Button1: TButton;
    editNome: TEdit;
    editSobreNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    Fpessoa: IPessoa;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation



{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  {Na minha classe o método retorna o próprio objeto por isso consigo
    acessar os métodos de varias formas}
  Memo1.lines.Add(
    FPessoa
      .Nome(editNome.Text)
      .SobreNome(editSobreNome.Text)
      .NomeCompleto);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  {Posso escolher o tipo de classe implementar sem alterar o restante do
    código desde que a interface seja a mesma da aplicada}
  FPessoa := TModelPessoaJuridica.New;
end;

end.
