//
//  Resource.swift
//  MKResource
//
//  Created by Marios Kotsiandris on 11/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import UIKit

protocol SupportedResourceType {}
extension Data: SupportedResourceType {}

protocol Resourcable {
    associatedtype ResourceType: SupportedResourceType
    var fileName: String {get}
    var fileExtension: String {get}
}

extension Resourcable where ResourceType == UIImage {
    func load(bundle: Bundle = Bundle.main) -> UIImage? {
        if let image = UIImage(named: fileName) {
            return image
        } else if let image = UIImage(named: "\(fileName).\(fileExtension)", in: bundle, compatibleWith: nil) {
            return image
        }
        return nil
    }
}

extension Resourcable where ResourceType == Data {
    func load(bundle: Bundle = Bundle.main) -> Data {
        guard let path = Bundle.main.url(forResource: fileName, withExtension: fileExtension) else { return Data() }
        return try! Data(contentsOf: path)
    }
}

extension Resourcable where ResourceType: Codable, ResourceType: SupportedResourceType {
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

struct Resource<T: SupportedResourceType>: Resourcable {
    typealias ResourceType = T
    var fileName: String
    var fileExtension: String
}
