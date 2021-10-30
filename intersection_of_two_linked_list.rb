def getIntersectionNode(headA, headB)
    lenA = len(headA)
    lenB = len(headB)
    hA = headA
    hB = headB
    if lenA > lenB
        while lenA > lenB do
            hA = hA.next
            lenA -= 1
        end
    end  
    if lenA < lenB
        while lenA < lenB
            hB = hB.next
            lenB -= 1
        end
    end
    while hA != hB do
        hA = hA.next
        hB = hB.next
    end
    return hA
end

def len(head)
    len = 0
    temp = head
    while temp do
        len += 1
        temp = temp.next
    end
    return len
end