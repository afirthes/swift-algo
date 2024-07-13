//: [Previous](@previous)
//:
//: # Реализация стека с использованием массива

struct Stack<T> {
	
	private var elements = [T]()
	
	/// Возвращает логическое значение, определяющее, пуст ли стек.
	var isEmpty: Bool {
		elements.isEmpty
	}
	
	/// Возвращает количество элементов в стеке.
	var count: Int {
		elements.count
	}
	
	/// Возвращает последний элемент и удаляет его из стека.
	var peek: T? {
		elements.last
	}
	
	/// Добавляет элемент в конец стека.
	/// - Parameter element: элемент для добавления в стек.
	mutating func push(_ element: T) {
		elements.append(element)
	}
	
	/// Возвращает последний элемент и удаляет его из стека.
	/// - Returns: последний элемент стека.
	mutating func pop() -> T? {
		elements.popLast()
	}
}

//: [Next](@next)
