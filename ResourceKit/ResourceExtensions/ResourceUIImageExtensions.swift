//
//  Resource+UIImage.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import UIKit

public extension Resource where T == UIImage {
    init(fileName: String) {
        self.init(fileName: fileName, fileExtension: nil)
    }
}

public extension Resourcable where ResourceType == UIImage {
    func load(bundle: Bundle = Bundle.main) -> UIImage? {
        if let image = UIImage(named: fileName) {
            return image
        }

        if let fileExtension = fileExtension {
            return UIImage(named: "\(fileName).\(fileExtension)", in: bundle, compatibleWith: nil)
        }

        if let fileExtension = fileName.pathExtension, let fileName = fileName.removePathExtension() {
            return UIImage(named: "\(fileName).\(fileExtension)", in: bundle, compatibleWith: nil)
        }

        return nil
    }
}
