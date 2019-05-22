//
//  Resource.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 11/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import UIKit

public struct Resource<T: SupportedResourceType>: Resourcable {
    public typealias ResourceType = T
    public var fileName: String
    public var fileExtension: String?

    public init(fileName: String, fileExtension: String?) {
        self.fileName = fileName
        self.fileExtension = fileExtension
    }
}
