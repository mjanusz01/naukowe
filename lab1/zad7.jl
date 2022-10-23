# Mikołaj Janusz 261758

# Funkcje df(x), f(x), aproxdf(x,h) zadziałają prawidłowo dla dowolnych typów numerycznych, jednak
# na potrzeby zadań laboratoryjnych były testowane na typie Float64.
# x, h, a, b - argument, dla którego ma zostać obliczona wartość odpowiedniej funkcji matematycznej

using Plots

function df(x)
    return Float64(cos(x)-3*(sin(3*x)))
end

function f(x)
    return sin(x) + cos(3*x)
end

function aproxdf(x,h)
    return Float64((f(x+h)-f(x))/h)
end

function error(a,b)
    return Float64(abs(a-b));
end

# Funkcja zad7 przy prawidłowym jej wywołaniu zawsze zadziała.
# n - iterator po wartościach 2^{-n}.
# derValue - obliczona dokładna wartość pochodnej funkcji f w punkcie 1.0
# valuesToSave - lista pomocnicza służąca do zapisania wyznaczonych wartości w celu wygenerowania wykresu
# approxValue - aproksymacja pochodnej za pomocą funkcji aproxdf dla x = 1.0 oraz h = 2^{-n} 

function zad7()
    n = Int(0);
    derValue = df(1.0)
    valuesToSave = [];
    while n>=-54
        approxValue = aproxdf(Float64(1.0),2.0^(n));
        println("h=2^{",n,"}, aprox = ",approxValue," err = ",error(approxValue,derValue)," h+1 = & ",Float64((2.0^n)+1));
        push!(valuesToSave, error(approxValue,derValue));
        n = n-1;
    end
    return valuesToSave
end

function getPlot()
    x = 0:54
    yt = [1,0.1,0.01,0.001,0.0001,0.00001,0.000001,0.0000001, 0.00000001, 0.000000001, 0.0000000001] 
    bar(x, zad7(), yaxis=:log, yticks = yt, label = ["Błąd przybliżenia pochodnej" "Line 2"], xlabel = "Wartości wykładnika n", ylabel = "Błąd przybliżenia pochodnej funkcji")
    savefig("plot7.svg")
end

zad7()
