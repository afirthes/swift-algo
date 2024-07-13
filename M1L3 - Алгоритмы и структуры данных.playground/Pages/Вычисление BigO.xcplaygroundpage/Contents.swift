//: [Previous](@previous)
//:
//: # Вычисление BigO
//:
//: ## Сложение сложностей

func sum(arrayA: [Int], arrayB: [Int]) -> Int {
	var result = 0
	for item in arrayA { // k
		result += item // 1
	}
	for item in arrayB { // l
		result += item // 1
	}
	return result
}
//: Сложностью алгоритма будет: `O((k * 1) + (l * 1)) = O(k+l)`
//:
//: ## Умножение сложностей

func sum2(arrayA: [Int], arrayB: [Int]) -> Int {
	var result = 0
	for itemA in arrayA { // m
		for itemB in arrayB { // n
			result += itemB + itemA //1
		}
	}

	return result
}

//: Сложностью алгоритма будет: `O(m * (n * 1)) = O(mn)`
//:
//: [Next](@next)
