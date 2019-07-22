//
//  StringResourceTests.swift
//  ResourceKitTests
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import XCTest
@testable import ResourceKit

final class StringResourceTests: XCTestCase {

    func testLoad_loadsResourcesProperly() {
        let expectedString = "This is a text for test!"
        let bundle = Bundle(for: StringResourceTests.self)
        let actualString: String? = Resource(fileName: "StringTestsResourceFile", fileExtension: "")
            .load(bundle: bundle)
        XCTAssertNotNil(actualString)
        XCTAssertEqual(expectedString, actualString)
    }
}
