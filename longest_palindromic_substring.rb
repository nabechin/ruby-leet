class Result
    attr_accessor :max
    def initialize
        @max = ""
    end
    
    def longest_palindrome(s)
        0.upto(s.length - 1) do |num|
            odd = get_result(s, num, num)
            if @max.length <= odd.length
                @max = odd
            end
            even = get_result(s, num, num + 1)
            if @max.length <= even.length
                @max = even
            end
        end
        return @max
    end

    def get_result(s, l, r)
        while l >= 0 && r <= s.length - 1 && s[l] == s[r]
            l = l - 1
            r = r + 1
        end
        return s[l + 1 .. r - 1]
    end
end

def longest_palindrome(s)
    return Result.new().longest_palindrome(s)
            
end
            
