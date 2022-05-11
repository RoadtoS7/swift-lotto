//
//  MoneyParser.swift
//  Lotto
//
//  Created by nylah.j on 2022/05/10.
//

import Foundation

struct MoneyParser {
    enum Error: LocalizedError {
        case invalidInput(String?)
            
        var errorDescription: String? {
            switch self {
            case .invalidInput(let input):
                return "금액은 0이상의 양의 정수여야 합니다. 입력된 금액: \(String(describing:input))"
            }
        }
    }
    
    static func parse(money input: String?) throws -> Money {
        guard let input = input,
              let moneyValue = Int(input),
              let money = Money(value: moneyValue) else {
                  throw Error.invalidInput(input)
        }
        return money
    }
}
