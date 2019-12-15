//
//  CodableTests.swift
//  ResourceKitTests
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import XCTest
@testable import Rsrc

final class CodableTests: XCTestCase {
    func testLoadJSON() {
        let bundle = CodableTests.resourceBundle()
        let people: People? = Resource(fileName: "Person", fileExtension: "json").load(bundle: bundle!)
        XCTAssertNotNil(people)
    }
    
    static var allTests = [
        ("testLoadJSON", testLoadJSON),
    ]
}

private extension CodableTests {
    struct People: Codable, SupportedResourceType {
        let person: [PersonCodable]
    }

    struct PersonCodable: Codable {
        let name: String
        let age: String
        let employed: String
    }
}

private extension CodableTests {
    static func resourceBundle() -> Bundle? {
        let thisSourceFile = URL(fileURLWithPath: #file)
        let thisDirectory = thisSourceFile.deletingLastPathComponent()
        let resourceDirectory = thisDirectory.appendingPathComponent("Resources")
        return Bundle(url: resourceDirectory)
    }
}
