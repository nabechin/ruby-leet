def reverse_list(head)
    node = head
    curr = nil
    while node do
        temp = node.clone
        temp.next = curr
        curr = temp
        node = node.next
    end
    return curr
end