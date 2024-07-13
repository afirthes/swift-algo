//: [Previous](@previous)
//:
//: # Сортировка в Swift
//:
//: Понимание алгоритмов сортировки и умение их писать важно, но может и не пригодиться в реальной разработке, так как в Swift из коробки доступна сортировка.
//:
//: Для сортировки массива применяется метод sort:

var numbers: [Int] = [10, 4, 12, 1, 3]
numbers.sort()
print(numbers) // [1, 3, 4, 10, 12]

//: Если метод sort сортирует оригинальный массив, то метод sorted() возвращает новый отсортированный массив, никак не изменяя старый:

var sortedNumbers = numbers.sorted()
print(sortedNumbers) // [1, 3, 4, 10, 12]

//: Обе функции принимают параметр `by`, который задает принцип сортировки в виде функции, которая принимает два параметра. Оба параметра представляют тип элементов массива. На выходе функция возвращает объект Bool. Если это значение равно true, то первое значение ставится до второго, если false - то после.

var numbers2: [Int] = [10, 4, 12, 1, 3]
numbers2.sort(by: {$0 > $1})
print(numbers2) // [12, 10, 4, 3, 1]

var sortedNumbers2 = numbers2.sorted(by: <)
print(sortedNumbers2) // [1, 3, 4, 10, 12]

//: Выражение `{$0 > $1}` представляет анонимную функцию, которая возвращает true, если значение первого параметра меньше второго, то есть в данном случае сортировка в обратном порядке. Мы можем задать более сложную логику, но в данном случае мы просто сравниваем два значения, поэтому мы можем упростить данный вызов: `numbers.sort(by: >)` и Swift опять же будет применять операцию > к обоим параметрам.
//:
//: Но что делать, если в массивы лежат не базовые типы, а свои собственные структуры? Как сделать доступной сортировку в таком случае? Все просто можно прямо внутри функции сортировки указать условия по которому нужно сортировать ваши структуры `{ $0.name < $1.name }`:

struct Person {
	let name: String
	let age: Int
}

var persons: [Person] = [
	Person(name: "W.S.", age: 20),
	Person(name: "S.A.", age: 32),
	Person(name: "V.E.", age: 46),
	Person(name: "A.K.", age: 15),
	Person(name: "K.L.", age: 33)
]

persons.sort(by: { $0.name < $1.name })
print(persons) // [Person(name: "A.K.", age: 15), Person(name: "K.L.", age: 33), Person(name: "S.A.", age: 32), Person(name: "V.E.", age: 46), Person(name: "W.S.", age: 20)]

//: Если структуру подписать под протокол `Comparable` и дать таким образом ей возможность быть сравниваемой, то можно использовать сокращенную запись функции сортировки `sort(by: >)` :
extension Person: Comparable {
	static func < (lhs: Person, rhs: Person) -> Bool {
		lhs.name < rhs.name
	}
}

var persons2: [Person] = [
	Person(name: "W.S.", age: 20),
	Person(name: "S.A.", age: 32),
	Person(name: "V.E.", age: 46),
	Person(name: "A.K.", age: 15),
	Person(name: "K.L.", age: 33)
]

persons2.sort(by: >)
print(persons2) // [Person(name: "W.S.", age: 20), Person(name: "V.E.", age: 46), Person(name: "S.A.", age: 32), Person(name: "K.L.", age: 33), Person(name: "A.K.", age: 15)]

//: [Next](@next)
