//
//  StringResourceTests.swift
//  ResourceKitTests
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import XCTest
@testable import Rsrc

final class StringResourceTests: XCTestCase {

    func testLoad_loadsResourcesProperly() {
        let expectedString = "This is a text for test!"
        let bundle = StringResourceTests.resourceBundle()
        let actualString: String? = Resource(fileName: "StringTestsResourceFile").load(bundle: bundle!)
        XCTAssertNotNil(actualString)
        XCTAssertEqual(expectedString, actualString)
    }
    
    static var allTests = [
        ("testLoad_loadsResourcesProperly", testLoad_loadsResourcesProperly),
    ]
}

private extension StringResourceTests {
    static func resourceBundle() -> Bundle? {
        let thisSourceFile = URL(fileURLWithPath: #file)
        let thisDirectory = thisSourceFile.deletingLastPathComponent()
        let resourceDirectory = thisDirectory.appendingPathComponent("Resources")
        return Bundle(url: resourceDirectory)
    }
}
