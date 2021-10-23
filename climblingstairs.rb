def climb_stairs(n)
    point = n + 1
    if point == 2
        return 1
    end
    first = 1
    second = 1
    result = 0
    (3).upto(point) do |v|
        result = first + second
        first = second
        second = result
    end
    return result
end