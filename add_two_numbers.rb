def add_two_numbers(l1, l2)

    return advance(l1, l2, false)
end

def advance(l1, l2, is_advance)
    if l1.nil? && l2.nil?
        if is_advance
            return ListNode.new(1)
        else
            return
        end
    end
    val1 = 0
    val2 = 0
    if l1
        val1 = l1.val
    end
    if l2
        val2 = l2.val
    end
    total = val1 + val2
    temp = is_advance
    if temp
        total = total + 1
    end
    if total >= 10
        total = total % 10
        temp = true
    else
        temp = false
    end
    node = ListNode.new(total)
    node.next = advance(l1 ? l1.next : nil, l2 ? l2.next : nil, temp)
    return node
end
