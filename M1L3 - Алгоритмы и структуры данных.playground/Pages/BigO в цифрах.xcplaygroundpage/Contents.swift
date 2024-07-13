//: [Previous](@previous)
//:
//: # BigO в цифрах
//:
//: Для закрепления материала, давайте посмотрим, насколько сильно отличаются Big-O в конкретных цифрах. Для этого представим, что мы обрабатываем массив размеров в n элементов и вычислим все Big-O значения.

import Foundation

final class CalcBigO {
	
	public func calc(n: Double) -> [Double] {
		var result: [Double] = []
		
		result.append(cacl_O_1(n: n))
		result.append(cacl_O_log_n(n: n))
		result.append(calc_O_n(n: n))
		result.append(cacl_O_n_log_n(n: n))
		result.append(calc_O_n_2(n: n))
		result.append(calc_O_exp(n: n))
		result.append(calc_O_fact(n: n))
		
		return result
	}
	
	public func printBigO(n: Double) {
		let result = calc(n: n)
		print("O(1) Константная\t\t\t\(result[0].toString())")
		print("O(log n) Логарифмическая\t\t\(result[1].toString())")
		print("O(n) Линейная\t\t\t\t\(result[2].toString())")
		print("O(n log n) n Логарифмическая\t\(result[3].toString())")
		print("O(n^2) Квадратичная\t\t\t\(result[4].toString())")
		print("O(2^n) Экспоненциальная\t\t\(result[5].toString())")
		print("O(n!) Факториальная\t\t\t\(result[6].toString())")
	}
	
	private func cacl_O_1(n: Double) -> Double {
		1
	}
	
	private func cacl_O_log_n(n: Double) -> Double {
		log(n)
	}
	
	private func calc_O_n(n: Double) -> Double {
		n
	}
	
	private func cacl_O_n_log_n(n: Double) -> Double {
		n*log(n)
	}
	
	private func calc_O_n_2(n: Double) -> Double {
		n*n
	}
	
	private func calc_O_exp(n: Double) -> Double {
		exp2(n)
	}
	
	private func calc_O_fact(n: Double) -> Double {
		var result = 1
		if(n > 0) {
			for i in 1...Int(n) {
				result *= i
			}
		}
		return Double(result)
	}
}

extension Double {
	func toString() -> String {
		return String(format: "%.2f",self)
	}
}

// max 20
CalcBigO().printBigO(n: 20)

//: [Next](@next)
