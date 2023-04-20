unit AulaInterface.Model.Interfaces;

interface

type
  IPessoa = interface
    ['{1DED882A-4D34-4020-819B-0CA97B69242C}']
    function Nome( Value: String): IPessoa;
    function SobreNome( Value: String): IPessoa;
    function NomeCompleto: String;
  end;

implementation

end.
