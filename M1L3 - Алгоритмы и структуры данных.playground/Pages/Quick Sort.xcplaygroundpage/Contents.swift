//: [Previous](@previous)
//:
//: # Quick Sort
//:
//: Быстрая сортировка — один из продвинутых алгоритмов. Он имеет сложность `O(n log n)` и применяет стратегию "Разделяй и Властвуй" (Divide and Conquer). Эта комбинация приводит к улучшенной алгоритмической производительности. Быстрая сортировка сначала делит большой массив на два меньших подмассива: младшие элементы и старшие элементы. Затем `Quicksort` может рекурсивно сортировать подмассивы.
//:
//: Шаги:
//:
//: - Выберите из массива элемент, называемый `pivot` (опорной точкой).
//: - Переупорядочите массив так, чтобы все элементы со значениями меньше, чем `pivot`, располагались перед `pivot`, а все элементы со значениями, превышающими `pivot`, шли после него (равные значения могут идти в любом направлении). После этого разбиения `pivot` занимает свое конечное положение. Это называется операцией разделения.
//: - Рекурсивно примените вышеуказанные шаги к подмассиву элементов с меньшими значениями и отдельно к подмассиву элементов с большими значениями.

extension Array where Element: Comparable {
	
	mutating func quickSort() -> Array {
		func qSort(start startIndex: Int, _ pivot: Int) {
			if (startIndex < pivot) {
				let iPivot = qPartition(start: startIndex, pivot)
				qSort(start: startIndex, iPivot - 1)
				qSort(start: iPivot + 1, pivot)
			}
		}
		qSort(start: 0, self.endIndex - 1)
		return self
	}
	
	mutating private func qPartition(start startIndex: Int, _ pivot: Int) -> Int {
		var wallIndex: Int = startIndex
		for currentIndex in wallIndex..<pivot {
			if self[currentIndex] <= self[pivot] {
				if wallIndex != currentIndex {
					self.swapAt(currentIndex, wallIndex)
				}
				wallIndex += 1
			}
		}
		if wallIndex != pivot {
			self.swapAt(wallIndex, pivot)
		}
		return wallIndex
	}
}

//: [Next](@next)
