# Reverse a singly linked list.

# Example:

# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL
# Follow up:

# A linked list can be reversed either iteratively or recursively. Could you implement both?

def reverse_list(head)
    return head if head == nil
    return head if head.next == nil
    output = reverse_list(head.next)
    (head.next).next = head
    head.next = nil
    return output
end

puts reverse_list([1,2,3,4,5])