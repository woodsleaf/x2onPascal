var a :Real;
var b :Real;
var c :Real;
var d :Real;
var x1 :Real;
var x2 :Real;

begin
    a := -4; 
    b := -4; 
    c := 4;
    writeln('Пожалуйста введите коэффициент а');
    //readln(a);
    writeln('Пожалуйста введите коэффициент b');
    //readln(b);
    writeln('Пожалуйста введите коэффициент c');
    //readln(c);

    writeln('a=', a:0:2, ' b=', b:0:2, ' c=', c:0:2);
    (*
    ax^2+bx+c=0 d=b^2-4ac  else if
    if d>0 then xReal1 xReal2
    else if d=0 then x=(-b)/2a
    x1,2=(-b(+-)sqrt(d))/2a
    *)

    writeln('Решение:');

    if a = 0 then 
        writeln('Коэфициент a равен нулю.');

    d := sqr(b) - 4 * a * c;
    writeln('Дискриминант равен ', d:0:2);

    if d > 0
        then 
            begin
                x1 := (-b + sqrt(d)) / 2 * a;
                x2 := (-b - sqrt(d)) / 2 * a;
                writeln('Дискриминант больше нуля.');
                writeln('x1=', x1:0:2, ' x2=', x2:0:2);
            end
    else
        if d = 0
            then
                begin  
                    x1 := (-b) / 2 * a;
                    x2 := x1;
                    writeln('Дискриминант равен нулю.');
                    writeln('x1=', x1:0:2, ' x2=', x2:0:2);
                end
            else
                    writeln('Уравнение решений не имеет');

end.
