unit uSubstitui;

interface

uses
  uISubstitui;

type
  TSubstitui = class ( TInterfacedObject, ISubstitui)
  private
    //
  public
    function Substituir(Str, Velho, Novo: String): String;
  end;

implementation


{ TSubstitui }
function TSubstitui.Substituir(Str, Velho, Novo: String): String;
var
  Retorno: String;
  Posicao: Integer;
begin
  Retorno := Str;
  While Pos(Velho, Retorno)<>0 do
  Begin
    Posicao := Pos (Velho, Retorno);
    if Posicao <> 0 then
    begin
      Delete(Retorno, Posicao, Length (Velho));
      Insert(Novo, Retorno , Posicao);
    end;
  end;
  Result := Retorno;
end;

end.

