program ProjetoAulaInterface;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {Form3},
  AulaInterface.Model.Interfaces in 'AulaInterface.Model.Interfaces.pas',
  AulaInterface.Model.Pessoa in 'AulaInterface.Model.Pessoa.pas',
  AulaInterface.Model.PessoaJuridica in 'AulaInterface.Model.PessoaJuridica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
