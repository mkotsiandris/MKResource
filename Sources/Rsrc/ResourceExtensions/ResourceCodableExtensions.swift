//
//  ResourceCodableExtensions.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public extension Resourcable where ResourceType: Codable, ResourceType: SupportedResourceType {
    func load(bundle: Bundle = Bundle.main) -> ResourceType? {
        guard let path = bundle.path(forResource: fileName, ofType: fileExtension) else { return nil }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            let jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: [])
            return try JSONDecoder().decode(ResourceType.self, from: jsonData)
        } catch {
            return nil
        }
    }
}
