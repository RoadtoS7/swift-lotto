//
//  MoneyParserTest.swift
//  LottoTest
//
//  Created by nylah.j on 2022/05/10.
//

import XCTest
@testable import Lotto

class MoneyParserTest: XCTestCase {
    func test_parse_양의정수가_입력되면_해당값을_갖는_Money인스턴스를_반환한다() {
        // given
        let number = "0"

        // when
        let money = try! MoneyParser.parse(money: number)
        
        // then
        XCTAssertEqual(Int(number), money.value)
g    }

    func test_parse_nil이_입력되면_에러를_발생시킨다() {
        // given
        let nilInput: String? = nil

        // when
        // then
        XCTAssertThrowsError(try MoneyParser.parse(money: nilInput), "nil이_입력되면_에러를_발생시킨다") { error in
            XCTAssert(error is MoneyParser.Error)
            XCTAssert(error.localizedDescription ==  MoneyParser.Error.invalidInput(nilInput).errorDescription)
        }
    }
    
    func test_parse_음의_정수가_입력되면_에러를_발생시킨다() {
        // given
        let negativeNumber = "-1"

        // when
        // then
        XCTAssertThrowsError(try MoneyParser.parse(money: negativeNumber), "음의정수가_입력되면_에러를_발생시킨다") { error in
            XCTAssert(error is MoneyParser.Error)
            XCTAssert(error.localizedDescription ==  MoneyParser.Error.invalidInput(negativeNumber).errorDescription)
        }
    }
    
    func test_parse_숫자가_아닌값이_입력되면_에러를_발생시킨다() {
        // given
        let nonNumber = "*"

        // when
        // then
        XCTAssertThrowsError(try MoneyParser.parse(money: nonNumber), "음의정수가_입력되면_에러를_발생시킨다") { error in
            XCTAssert(error is MoneyParser.Error)
            XCTAssert(error.localizedDescription ==  MoneyParser.Error.invalidInput(nonNumber).errorDescription)
        }
    }
}
