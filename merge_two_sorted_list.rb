def merge_two_lists(l1, l2)
    if l1 == nil
        return l2
    end
    if l2 == nil
        return l1
    end
    if l1.val > l2.val
        l2.next = merge_two_lists(l1, l2.next)
        return l2
    else
        l1.next = merge_two_lists(l1.next, l2)
        return l1
    end
    return l2
end