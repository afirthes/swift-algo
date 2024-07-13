//: [Previous](@previous)
//:
//: # Bubble Sort
//:
//: Это простой алгоритм сортировки, в котором циклом многократно проходим через список для сортировки, сравниваем каждую пару соседних элементов и меняем их местами, если они находятся в неправильном порядке. Таким образом получается, будто самые большие элементы поднимаются постепенно с самого дна массива, что напоминает поведение пузырьков, отсюда и название метода. Проход по списку повторяется до тех пор, пока перестановки не понадобятся. Хотя алгоритм прост, он слишком медленный и непрактичный для большинства задач.
//:
//: Он имеет сложность `O(n^2)`, но считается медленнее, чем сортировка вставками.

extension Array where Element: Comparable {
	
	func bubbleSort() -> Array<Element> {
		guard self.count > 1 else { return self }
		
		var output: Array<Element> = self
		
		for primaryIndex in 0..<self.count {
			let passes = (output.count - 1) - primaryIndex
			for secondaryIndex in 0..<passes {
				let key = output[secondaryIndex]
				if (key > output[secondaryIndex + 1]) {
					output.swapAt(secondaryIndex, secondaryIndex + 1)
				}
			}
		}
		return output
	}
}

//: [Next](@next)
