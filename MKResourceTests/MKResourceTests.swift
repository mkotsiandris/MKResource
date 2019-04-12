//
//  MKResourceTests.swift
//  MKResourceTests
//
//  Created by Marios Kotsiandris on 11/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import XCTest
@testable import MKResource

final class MKResourceTests: XCTestCase {
    
    func testLoadImage() {
        let bundle = Bundle(for: MKResourceTests.self)
        let image: UIImage? = Resource(fileName: "index").load(bundle: bundle)
        XCTAssertNotNil(image)
    }
    
    func testLoadJSON() {
        let bundle = Bundle(for: MKResourceTests.self)
        let people: People? = Resource(fileName: "Person", fileExtension: "json").load(bundle: bundle)
        XCTAssertNotNil(people)
    }
    
    func testFoo() {}
}

fileprivate extension MKResourceTests {
    struct People: Codable, SupportedResourceType {
        let person:[PersonCodable]
    }

    struct PersonCodable:Codable {
        let name:String
        let age:String
        let employed:String
    }
}
