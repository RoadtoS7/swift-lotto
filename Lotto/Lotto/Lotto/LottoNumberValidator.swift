//
//  LottoNumberValidator.swift
//  Lotto
//
//  Created by nylah.j on 2022/05/17.
//

import Foundation

struct LottoNumberValidator {
    static func validate<LottoNumbers: Collection>(numbers: LottoNumbers) -> Bool where LottoNumbers.Element == Int {
        
        return numbers.reduce(true) { partialResult, number in
            partialResult && LottoConstant.numberRange.contains(number)
        }
    }
}