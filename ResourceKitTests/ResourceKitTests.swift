//
//  ResourceKitTests.swift
//  ResourceKitTests
//
//  Created by Marios Kotsiandris on 11/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import XCTest
@testable import ResourceKit

final class ResourceKitTests: XCTestCase {
    
    func testLoadImage() {
        let bundle = Bundle(for: ResourceKitTests.self)
        let image: UIImage? = Resource(fileName: "index", fileExtension: "png").load(bundle: bundle)
        XCTAssertNotNil(image)
    }
    
    func testLoadJSON() {
        let bundle = Bundle(for: ResourceKitTests.self)
        let people: People? = Resource(fileName: "Person", fileExtension: "json").load(bundle: bundle)
        XCTAssertNotNil(people)
    }
    
    func testFoo() {}
}

fileprivate extension ResourceKitTests {
    struct People: Codable, SupportedResourceType {
        let person:[PersonCodable]
    }

    struct PersonCodable:Codable {
        let name:String
        let age:String
        let employed:String
    }
}
