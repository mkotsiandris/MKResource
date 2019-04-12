//
//  UIImageTests.swift
//  ResourceKitTests
//
//  Created by Marios Kotsiandris on 11/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import XCTest
@testable import ResourceKit

final class UIImageTests: XCTestCase {
    func testLoadImage() {
        let bundle = Bundle(for: UIImageTests.self)
        let expectedImage = UIImage(named: "index.png", in: bundle, compatibleWith: nil)
        let actualImage: UIImage? = Resource(fileName: "index", fileExtension: "png").load(bundle: bundle)
        XCTAssertNotNil(expectedImage)
        XCTAssertEqual(expectedImage, actualImage)
    }
}
