//
//  ResourceStringExtensions.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public extension Resourcable where ResourceType == String {
    func load(bundle: Bundle = Bundle.main) -> String? {
        guard let data: Data = Resource(fileName: fileName, fileExtension: fileExtension).load(bundle: bundle) else {return nil}
        return String(data: data, encoding: .utf8)
    }
}
