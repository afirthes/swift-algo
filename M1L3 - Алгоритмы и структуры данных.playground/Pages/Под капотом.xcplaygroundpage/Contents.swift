//: [Previous](@previous)
//:
//: # Под капотом
//:
//: Задумывались ли вы, что внутри Swift использует для реализации алгоритма поиска:
//:
//: - Если менее, чем 20 элементов, то применяется **сортировка вставками** ([insertion sort](https://en.wikipedia.org/wiki/Insertion_sort)). Именно этот тип лучше подходит для данных небольшого размера;
//: - Если более 20 элементов, применяется **Интроспективная сортировка** ([Introsort](http://www.cs.rpi.edu/~musser/gp/introsort.ps)), включающая в себя **быструю сортировку** до определённой глубины рекурсии `2*floor(log(N))`;
//: - И переключается на **сортировку кучей** ([heapsort](https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D1%80%D0%B0%D0%BC%D0%B8%D0%B4%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D0%BE%D1%80%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%BA%D0%B0)), она же пирамидальная сортировка.

/*
func _introSort<C>(
	_ elements: inout C,
	subRange range: Range<C.Index>
	${", by areInIncreasingOrder: (C.Element, C.Element) throws -> Bool" if p else ""}
) ${rethrows_}
where
C : MutableCollection & RandomAccessCollection
${"" if p else ", C.Element : Comparable"} {
	
	
	let count =
	elements.distance(from: range.lowerBound, to: range.upperBound)
	if count < 2 {
		return
	}
	// Set max recursion depth to 2*floor(log(N)), as suggested in the introsort
	// paper: http://www.cs.rpi.edu/~musser/gp/introsort.ps
	let depthLimit = 2 * _floorLog2(Int64(count))
	${try_} _introSortImpl(
		&elements,
		subRange: range,
		${"by: areInIncreasingOrder," if p else ""}
		depthLimit: depthLimit)
}


@_inlineable
@_versioned
func _introSortImpl<C>(
	_ elements: inout C,
	subRange range: Range<C.Index>
	${", by areInIncreasingOrder: (C.Element, C.Element) throws -> Bool" if p else ""},
	depthLimit: Int
) ${rethrows_}
where
C : MutableCollection & RandomAccessCollection
${"" if p else ", C.Element : Comparable"} {
	
	
	// Insertion sort is better at handling smaller regions.
	if elements.distance(from: range.lowerBound, to: range.upperBound) < 20 {
		${try_} _insertionSort(
			&elements,
			subRange: range
			${", by: areInIncreasingOrder" if p else ""})
		return
	}
	if depthLimit == 0 {
		${try_} _heapSort(
			&elements,
			subRange: range
			${", by: areInIncreasingOrder" if p else ""})
		return
	}
	
	
	// Partition and sort.
	// We don't check the depthLimit variable for underflow because this variable
	// is always greater than zero (see check above).
	let partIdx: C.Index = ${try_} _partition(
		&elements,
		subRange: range
		${", by: areInIncreasingOrder" if p else ""})
	${try_} _introSortImpl(
		&elements,
		subRange: range.lowerBound..<partIdx,
		${"by: areInIncreasingOrder, " if p else ""}
		depthLimit: depthLimit &- 1)
	${try_} _introSortImpl(
		&elements,
		subRange: partIdx..<range.upperBound,
		${"by: areInIncreasingOrder, " if p else ""}
		depthLimit: depthLimit &- 1)
}
*/
//: [Next](@next)
