def invert_tree(root)
    if root.nil?
        return nil
    end
    node = TreeNode.new(root.val)
    node.left = invert_tree(root.right)
    node.right = invert_tree(root.left)
    return node
end