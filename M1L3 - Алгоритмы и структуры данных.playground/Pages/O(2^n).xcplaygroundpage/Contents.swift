//: [Previous](@previous)
//:
//: # O(2^n)
//:
//: Алгоритмы с экспоненциальным временем выполнения `O(2^n)` часто являются рекурсивными алгоритмами, которые решают задачу размера n путем рекурсивного решения двух меньших задач размера n-1.
//:
//: Ханойская башня является одной из популярных головоломок XIX века. Даны три стержня, на один из которых нанизаны восемь колец, причём кольца отличаются размером и лежат меньшее на большем. Задача состоит в том, чтобы перенести пирамиду из восьми колец за наименьшее число ходов на другой стержень. За один раз разрешается переносить только одно кольцо, причём нельзя класть большее кольцо на меньшее.
//:
//: В следующем примере выводятся все ходы, необходимые для решения знаменитой задачи «Ханойские башни» для n дисков с помощью рекурсии.

/// Решение Ханойской башни.
/// - Parameters:
///   - n: Количество колец.
///   - from: Исходный стержень.
///   - to: Стержень на который надо переместить кольца.
///   - spare: Промежуточный стержень.
func solveHanoi(n: Int, from: String, to: String, spare: String) {
	if n != 0 {
		solveHanoi(n: n - 1, from: from, to: spare, spare: to)
		print("\(from) -> \(to)")
		solveHanoi(n: n - 1, from: spare, to: to, spare: from)
	}
}

//: Или вычисление чисел Фибоначчи.
//:
//: Чи́сла Фибона́ччи — элементы числовой последовательности.
//:
//: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, …
//:
//: Последовательность, в которой первые два числа равны 0 и 1, а каждое последующее число равно сумме двух предыдущих чисел. Названы в честь средневекового математика Леонардо Пизанского (известного как Фибоначчи).

func fibs(_ n: Int) -> Int {
	if n < 2 { return n }
	return fibs(n - 1) + fibs(n - 2)
}

//: [Next](@next)
