function g(x)
    return Float64((x*x)/(sqrt((x*x)+1)+1))
end

function f(x)
    return Float64(sqrt((x*x)+1)-1)
end

#Funkcja wypisująca potrzebne do zadania wartości funkcji f i g. k - ograniczenie liczby iteracji

function zad6(k)
    y = Float64(0.125)
    i = Int(1)
    while i<k
        print("i = -",i,", f = ")
        print(f(y))
        print(", g = ")
        println(g(y))
        y = (0.125 * y)
        i = i + 1;
    end
end

zad6(300)