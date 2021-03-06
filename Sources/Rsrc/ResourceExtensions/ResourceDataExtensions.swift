//
//  ResourceDataExtensions.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public extension Resourcable where ResourceType == Data {
    func load(bundle: Bundle = Bundle.main) -> Data? {
        guard let path = bundle.url(forResource: fileName, withExtension: fileExtension) else { return nil }
        return try? Data(contentsOf: path)
    }
}
