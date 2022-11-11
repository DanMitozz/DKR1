var x,y,a,b,h: real;
begin
  write('Введите диапозон [a, b]: ');
  read(a, b);
  write('Введите шаг h: ');
  read(h);
  x := a;
  while a <= b do
    begin
      if (x < -10) then
        y := ln(x)/power(e,x)-sqr(x)/(power(x,(0.1*x)))
      else 
        if (x < 0) then
          y := ln(x)+sqr(x)
        else 
          if x < 5 then y := sin(x)
        else  
          y:=(x*log10(x)+cos(x))/cos(2*x);
      a := a + h;
      x := a;
      writeln(a:2:2,': ', y:2:2);
    end;  
end.