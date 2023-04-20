unit AulaInterface.Model.PessoaJuridica;

interface

uses
  AulaInterface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, IPessoa)
  private
    FNome: String;
    FSobreNome: String;

    function Nome( Value: String): IPessoa;
    function SobreNome( Value: String): IPessoa;
    function NomeCompleto: String;


  public
    constructor Creat;
    destructor Destroy; override;

    {Class Function s�o m�todos que podem ser chamados antes da cria��o da classe
      desde que n�o acessem nenhum atributo da classe}
    class function New: IPessoa;

  end;

implementation

{ TModelPessoa }

constructor TModelPessoaJuridica.Creat;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TModelPessoaJuridica.New: IPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): IPessoa;
begin
  FNome := Value;

  //M�todo retonando a pr�pria class
  Result := Self;
end;

function TModelPessoaJuridica.NomeCompleto: String;
begin
   Result := FNome + ' ' + FSobreNome + ' LTDA.';
end;

function TModelPessoaJuridica.SobreNome(Value: String): IPessoa;
begin
  FSobreNome := Value;
  Result := Self;
end;

end.
