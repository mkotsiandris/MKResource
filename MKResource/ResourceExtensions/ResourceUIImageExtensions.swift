//
//  Resource+UIImage.swift
//  MKResource
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public extension Resource where T == UIImage {
    init(fileName: String, fileExtension: String = "png") {
        self.fileName = fileName
        self.fileExtension = fileExtension
    }
}

public extension Resourcable where ResourceType == UIImage {
    func load(bundle: Bundle = Bundle.main) -> UIImage? {
        if let image = UIImage(named: fileName) {
            return image
        } else if let image = UIImage(named: "\(fileName).\(fileExtension)", in: bundle, compatibleWith: nil) {
            return image
        }
        return nil
    }
}
