//
//  SplitterTest.swift
//  LottoTest
//
//  Created by nylah.j on 2022/05/07.
//

import XCTest
@testable import Lotto

class SplitterTest: XCTestCase {
    
    func test_split_Splitter가_가진_separator를_기준으로_나누어진다() {
        // given
        let separators = Separators(value: [Comma(), Colon()])
        let splitter = Splitter(separaters: separators)
        let input = "1,,2;;3,;4,5;6-7"
        let expectedResult = ["1","2","3","4","5","6-7"]
        
        // when
        let result = splitter.split(input)
        
        // then
        XCTAssertEqual(result, expectedResult)
    }
}