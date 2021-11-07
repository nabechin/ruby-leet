class Diameter
    
    def initialize
        @max = 0
    end
    
    def diameter(root)
        max_depth(root)
        return @max
    end
    
    def max_depth(root)
        if root.nil?
            return 0
        end
        left = max_depth(root.left)
        right = max_depth(root.right)
        @max = [@max, left + right].max
        return [left, right].max + 1
    end
end

def diameter_of_binary_tree(root)
    return Diameter.new.diameter(root)
end