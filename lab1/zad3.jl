# Mikołaj Janusz 261758

# Obliczenia są wykonywane w arytmetyce double (Float64).

# Funkcja checkDistance:
# Wymaganiem poprawnego działania funkcji jest podanie prawidłowego argumentu x.

function checkDistance(x)
    return abs(x-nextfloat(x))
end

# Funkcja zad3:
# startNumber - 

function zad3(startNumber, stopNumber, stepNumber)
    i = Int(0)
    while(startNumber!=stopNumber)
        println(i,startNumber)
        startNumber = nextfloat(startNumber)
        if(checkDistance(startNumber)!=stepNumber)
            return false
        end
        i = i+1
    end
    return true
end

function zad3standard(startNumber, stopNumber, stepNumber)
    stopNumber = prevfloat(stopNumber)
    startNumberExponent = SubString(bitstring(startNumber),2:12)
    stopNumberExponent = SubString(bitstring(stopNumber),2:12)
    if(startNumberExponent!=stopNumberExponent)
        return false
    else
        return ((2.0^(parse(Int, startNumberExponent, base = 2) - 1023))*2.0^(-52) == stepNumber)
    end
end

println("Wartość funkcji dla przedziału [0.5,1) z prawidłowym krokiem 1.1102230246251565e-16 : ",zad3standard(0.5,1.0,1.1102230246251565e-16))
println("Wartość funkcji dla nieprawidłowo określonego przedziału [0.5,1.1) z krokiem 1.1102230246251565e-16 : ",zad3standard(0.5,1.0,1.1202230246251565e-16))
println("Wartość funkcji dla przedziału [0.6,0.9) z prawidłowym krokiem 1.1102230246251565e-16 : ",zad3standard(0.6,0.9,2.220446049250313e-16))
println("Wartość funkcji dla przedziału [0.5,1) z nieprawidłowym krokiem 1.1105230246251565e-16 : ",zad3standard(0.5,1.0,2.220446049250313e-16))
println("Wartość funkcji dla przedziału [1,2) z prawidłowym krokiem 2.220446049250313e-16 : ",zad3standard(1.0,2.0,2.220446049250313e-16))
println("Wartość funkcji dla przedziału [2,4) z prawidłowym krokiem 4.440892098500626e-16 : ",zad3standard(2.0,4.0,4.440892098500626e-16))

zad3(0.5,1,1.1102230246251565e-16)
