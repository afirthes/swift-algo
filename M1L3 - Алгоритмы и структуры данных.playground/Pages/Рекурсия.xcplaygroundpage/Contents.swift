//: [Previous](@previous)
//:
//: # Рекурсия
//:
//: Для одного рекурсивного вызова сложность - `O(n)`, т.к. foo будет вызвана N раз:

func foo(n: Int) -> Int {
	if n == 1 { return n }
	return foo(n: n-1)
}

//: Для двух рекурсивных вызовов сложность экспоненциальная - `O(2^n)`:

func bar(n: Int) -> Int {
	if n == 1 { return n }
	return bar(n: n-1) + bar(n: n-1)
}

//: [Next](@next)
