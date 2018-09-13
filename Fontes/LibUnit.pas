unit LibUnit;

interface

function TiraPontos(varTexto: string): string;

implementation

function TiraPontos(varTexto: string): string;
var
  I: Integer;
  varResultado: string;
begin
  varResultado := '';
  for I := 1 to length(varTexto) do
  begin
    if not (varTexto[I] in ['!','?','.','-',',',';','/','\','|','@','$','&','%','(',')','[',']','{','}','=','+','_','*']) then
    begin
      varResultado := varResultado + varTexto[I];
    end;
  end;
  Result := varResultado;
end;

end.
 