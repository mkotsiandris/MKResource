//
//  ResourceUIImageExtensions.swift
//  MKResource
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

extension UIImage: SupportedResourceType {}

extension Resource where T == UIImage {
    init(fileName: String, fileExtension: String = "png") {
        self.fileName = fileName
        self.fileExtension = fileExtension
    }
}
