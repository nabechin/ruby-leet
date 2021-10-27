def max_depth(root)
    if root.nil?
        return 0
    end
    return [max_depth(root.right), max_depth(root.left)].max + 1
end