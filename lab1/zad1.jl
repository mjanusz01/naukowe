# zad 1.1 - wyznaczanie epsilona maszynowego - czyli najmniejszej takiej liczby, że 1 + e > 1.

function macheps(type)
    y = type(1);
    while type(1.0 + 0.5*y) > type(1.0)
        y = type(0.5 * y)
    end
    return y;
end

println("Machepsy wyznaczone: Float16 = ", macheps(Float16), ", Float32 = ", macheps(Float32), ", Float64", macheps(Float64));
println("Machepsy generowane przez funkcję eps: Float16 = ", eps(Float16), ", Float32 = ", eps(Float32), ", Float64", eps(Float64));
println(" ")

# zad 1.2 - wyznaczanie liczby eta.

function zeroeps(type)
    y = type(1.0);
    while type(y * 0.5) > 0
        y = type(y * 0.5)
    end
    return y
end

println("Eta wyznaczona: Float16 = ", zeroeps(Float16), ", Float32 = ", zeroeps(Float32), ", Float64", zeroeps(Float64));
println("Wartość funkcji nextfloat(0.0): Float16 = ", nextfloat(Float16(0.0)), ", Float32 = ", nextfloat(Float32(0.0)), ", Float64", nextfloat(Float64(0.0)));
println(" ")

# zad 1.3 - wyznaczanie liczby MAX

function maxnumber(type)
    y = type(1);
    prevfloat(type(Inf))
    while(isinf(y)==false)
        y = 2*y
    end
    println(prevfloat(y))
    print(y)
end

function myMAX(type)
    y = prevfloat(type(1.0))
    while(isinf(type(y*2))==false)
        y = type(2*y);
    end
    return y
end

println("Wartość funkcji myMAX: Float16 = ",myMAX(Float16),", Float32 = ", myMAX(Float32),", Float64 = ", myMAX(Float64))
println("Wartość funkcji floatmax: Float16 = ",floatmax(Float16),", Float32 = ", floatmax(Float32),", Float64 = ", floatmax(Float64))





