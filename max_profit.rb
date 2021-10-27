def max_profit(prices)
    min = 1000000000
    result = 0
    prices.each do |p|
        if p < min
            min = p
        else
            result = [result, p - min].max
        end
    end
    return result
end