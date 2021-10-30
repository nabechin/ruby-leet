def hasCycle(head)
    if head.nil?
        return false
    end
    one = head
    two = head.next
    while one && two do
        if (one.equal?(two))
            return true
        end
        if two.next.nil?
            return false
        end
        one = one.next
        two = two.next.next
    end
    return false
end