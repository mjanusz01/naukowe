function zad4exp()
    z = Float64(1.01)
    while(z*(1.0/z))==1.0
        z = prevfloat(z)
    end
    return z
end

println("Eksperymentalnie wyznaczona dodatnia wartość x: ",zad4exp())
println("Wartość wyrażenia dla tej wartości x:", Float64(1.0099999999999634*((1/(1.0099999999999634)))))

function zad4smallest()
    z = Float64(1.0)
    while(z!=1.1)
        if(z*(1.0/z)!=1)
            return z
        end
        z = nextfloat(z)
    end
end

println("Najmniejsza wyznaczona dodatnia wartość x: ",zad4smallest())
println("Wartość wyrażenia dla tej wartości z: ", Float64(1.000000057228997*((1/(1.000000057228997)))))
