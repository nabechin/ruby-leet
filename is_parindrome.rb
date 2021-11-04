def is_palindrome(head)
    stack = []
    node = head
    while node do
        stack.push(node.val)
        node = node.next
    end
    length = stack.length
    if length % 2 == 0
        (length / 2).times do |i|
            if stack[i] != stack[stack.length - 1 - i]
                return false
            end
        end
    else
        (length / 2).floor.times do |i|
            if stack[i] != stack[stack.length - 1 - i]
                return false
            end
        end
    end
    return true
end