# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
                list3 = []
    while !list1.nil? || !list2.nil?
        if list1.nil?
                        list3 << list2
            list2 = list2.next
        elsif list2.nil?
            list3 << list1
            list1 = list1.next
        end
        
        if list1.val > list2.val
            list3 << list1
            list1 = list1.next
        elsif list2.val > list1.val
            list3 << list2
            list2 = list2.next
        elsif list1.val == list2.val
            list3 << list1
            list3 << list2
            list1 = list1.next
            list2 = list2.next
        end
    end

    return list3
end