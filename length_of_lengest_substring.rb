def length_of_longest_substring(s)
    max = 0
    index = 0
    hash = Hash.new
    str_arr = s.split("")
    str_arr.each_with_index do |v, idx|
        if hash.key?(v)
            index = [index, hash[v] + 1].max
        end
        hash[v] = idx
        max = [max, idx - index + 1].max
    end
    return max
end