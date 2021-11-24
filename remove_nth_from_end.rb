def remove_nth_from_end(head, n)
    stack = []
    node = head
    while node
        stack.push(node)
        node = node.next
    end
    stack.delete_at(-n)
    n = nil
    while stack.length > 0
        node = stack.pop
        node.next = n
        n = node
    end
    return n
end