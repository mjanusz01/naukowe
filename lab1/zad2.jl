function zad2(type)
    return type(type(3) * ((type(4)/type(3))-type(1))-type(1))
end

println("Wartość wyrażenia dla Float16 = ",zad2(Float16),", Float32 = ", zad2(Float32), ", Float64 = ", zad2(Float64))
println("Machepsy generowane przez funkcję eps: Float16 = ", eps(Float16), ", Float32 = ", eps(Float32), ", Float64", eps(Float64));