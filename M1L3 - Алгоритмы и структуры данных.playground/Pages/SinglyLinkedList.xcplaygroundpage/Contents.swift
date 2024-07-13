//: [Previous](@previous)

import Foundation

class Node<T> {
	var value: T
	var next: Node<T>?
	
	init(_ value: T, next: Node<T>? = nil) {
		self.value = value
		self.next = next
	}
}

struct LinkedList<T> {
	var head: Node<T>?
	var tail: Node<T>?
	
	var isEmpty: Bool { head == nil }
	
	var count: Int {
		var count: Int = 0
		var current = head
		
		while current != nil {
			count += 1
			current = current?.next
		}
		
		return count
	}
	
	mutating func push(_ value: T) {
		head = Node(value, next: head)
		
		if tail == nil {
			tail = head
		}
	}
	
	mutating func append(_ value: T) {
		let node = Node(value)
		
		tail?.next = node
		tail = node
	}
	
	
	func insert(_ value: T, after index: Int) {
		guard let node = node(at: index) else { return }
		node.next = Node(value, next: node.next)
	}
	
	func node(at index: Int) -> Node<T>? {
		return nil
	}
}


//: [Next](@next)
