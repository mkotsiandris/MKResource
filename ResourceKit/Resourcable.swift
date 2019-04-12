//
//  UIImageResourceTypeExtensions.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public protocol Resourcable {
    associatedtype ResourceType: SupportedResourceType
    var fileName: String {get}
    var fileExtension: String {get}
}
