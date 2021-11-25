class Resolve
    attr_accessor :array
    def initialize
        @array = []
    end
    def generate_parenthesis(parentheses, left, right)
        if left > 0
            generate_parenthesis("#{parentheses}(", left - 1, right)
        end
        if right > left
            generate_parenthesis("#{parentheses})", left, right - 1)
        end
        if right == 0
            @array.push(parentheses)
        end
        return
    end
    
    def generate(n)
        generate_parenthesis("", n, n)
        return @array
    end
end

def generate_parenthesis(n)
    resolve = Resolve.new()
    return resolve.generate(n)
end