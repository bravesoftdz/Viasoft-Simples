program QS6;
{$APPTYPE CONSOLE}
uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas',
  SysUtils;

{$R *.RES}

Const Texto: String = 'O rato roeu a roupa do rei de roma';

Var
  Substitui: TSubstitui;

begin
  Substitui := TSubstitui.Create;
  Try
    WriteLn('Texto antigo - ' + Texto);
    Texto := Substitui.Substituir(Texto, 'ro', 'teste');
    WriteLn('Novo texto - ' + Texto);
    readln;
  Finally
    Substitui.Free;
  End;

end.

