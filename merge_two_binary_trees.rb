def merge_trees(root1, root2)
    if root1.nil? && root2.nil?
        return
    end
    val1 = 0
    val2 = 0
    if root1
        val1 = root1.val
    end
    if root2
        val2 = root2.val
    end
    node = TreeNode.new(val1 + val2)
    node.right = merge_trees(root1 ? root1.right : nil, root2 ? root2.right : nil)
    node.left = merge_trees(root1 ? root1.left : nil, root2 ? root2.left : nil)
    return node
end