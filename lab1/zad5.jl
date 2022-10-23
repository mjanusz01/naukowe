# Mikołaj Janusz 261758

function zad51(x,y,type)
    sum = type(0.0)
    for i in 1:length(x)
        sum = sum + type(x[i])*type(y[i])
    end
    return sum
end

function zad52(x,y,type)
    sum = type(0.0)
    i = Int(length(x))
    while i > 0
        sum = sum + type(x[i])*type(y[i])
        i = i - 1
    end
    return sum
end

function multiply(x,y,type)
    z = type[]
    for i in 1:length(x)
        push!(z,type(x[i])*type(y[i]))
    end
    return z
end

function zad5negincreasing(z,type)
    z = sort(z)
    sum = type(0.0)
    i = Int(1)
    while i < length(z)
        if z[i] < 0
            sum = sum + z[i]
        else
            return sum
        end
        i = i + 1
    end
    return sum
end

function zad5posdecreasing(z,type)
    z = sort(z)
    sum = type(0.0)
    i = Int(length(z))
    while i > 0
        if z[i] > 0
            sum = sum + z[i]
        else
            return sum
        end
        i = i - 1
    end
    return sum
end

function zad5negdecreasing(z,type)
    z = sort(z)
    sum = type(0.0)
    i = Int(length(z))
    while i > 0
        if z[i] < 0
            sum = sum + z[i]
        else
            return sum
        end
        i = i - 1
    end
    return sum
end

function zad5posincreasing(z,type)
    z = sort(z)
    sum = type(0.0)
    i = Int(0)
    while i < length(z)
        if z[i] > 0
            sum = sum + z[i]
        else
            return sum
        end
        i = i + 1
    end
    return sum
end

function zad54(x,y,type)
    z = multiply(x,y,type);
    return zad5negdecreasing(z,type) + zad5posincreasing(z,type) ;
end


function zad53(x,y,type)
    z = multiply(x,y,type);
    return zad5negincreasing(z,type) + zad5posdecreasing(z,type) ;
end


x = [2.718281828, -3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
y = [1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]

println("left-right fl32       ",zad51(x,y,Float32))
println("right-left fl32       ",zad52(x,y,Float32))
println("pos-decreasing fl32   ",zad53(x,y,Float32))
println("pos-increasing fl32   ",zad53(x,y,Float32))

println("right-left fl64       ",zad51(x,y,Float64))
println("right-left fl64       ",zad52(x,y,Float64))
println("pos-decreasing fl64   ",zad53(x,y,Float64))
println("pos-increasing fl64   ",zad53(x,y,Float64))

function forward(x, y, type)
    sum = type(0.0)
    for i in 1:length(x)
        sum += type(x[i]) * type(y[i])
    end 
    return sum
end

function backward(x, y, type)
    sum = type(0.0)
    for i in length(x):-1:1
        sum += type(x[i]) * type(y[i])
    end 
    return sum
end

println(forward(x,y,Float32))
println(backward(x,y,Float32))