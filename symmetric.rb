def is_symmetric(root)
    return test(root.left, root.right)
end

def is_mirror(node1, node2)
    if node1.nil? && node2.nil?
        return true
    end
    if node1.nil? || node2.nil?
        return false
    end
    if node1.val == node2.val
        return is_mirror(node1.left, node2.right) && is_mirror(node1.right, node2.left)
    else
        return false
    end
end