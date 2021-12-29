class LLNode {
    var val: Int
    var next: LLNode?
    
    init(val: Int) {
        self.val = val
    }
}

class MyLinkedList {
    public typealias Node = LLNode
    
    private var head: Node?
    
    init() {
        
    }
    
    public var count: Int {
        guard var node = head else {return 0}
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    func get(_ index: Int) -> Int {
        guard index < count else {return -1}
        if index == 0 {
            return head?.val ?? -1
        }
        
        var curr = head
        for _ in 0..<index {
            curr = curr?.next
        }
        return curr!.val
    }
    
    func addAtHead(_ val: Int) {
        let node = Node(val: val)

        guard count > 0 else {
            head = node
            return
        }

        node.next = head
        head = node
    }
    
    func addAtTail(_ val: Int) {
        let node = Node(val: val)
        guard count > 0 else {
            head = node
            return
        }
        var curr = head
        for _ in 0..<count-1 {
            curr = curr?.next
        }
        curr?.next = node
    }
    
    func addAtIndex(_ index: Int, _ val: Int) {
        guard index <= count else {return}
        if index == count {
            addAtTail(val)
            return
        }
        if index == 0 {
            addAtHead(val)
            return
        }
        let node = Node(val: val)
        var curr = head
        var prev: LLNode? = nil
        
        for _ in 0..<index {
            prev = curr
            curr = curr?.next
        }

        node.next = curr
        prev?.next = node
    }
    
    func deleteAtIndex(_ index: Int) {
        guard index < count else {return}
        var curr = head
        var prev: LLNode? = nil
        
        if (index == 0) {
            head = curr?.next
            return
        }
        for _ in 0..<index {
            prev = curr
            curr = curr?.next
        }
        
        prev?.next = curr?.next
    }
}
