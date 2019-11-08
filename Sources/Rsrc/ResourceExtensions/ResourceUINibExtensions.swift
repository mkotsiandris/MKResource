//
//  ResourceUINibExtensions.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 14/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import UIKit

public extension Resource where T == UINib {
    init(fileName: String) {
        self.init(fileName: fileName, fileExtension: nil)
    }
}

public extension Resourcable where ResourceType == UINib {
    func load(bundle: Bundle = Bundle.main) -> UINib? {
        return UINib(nibName: fileName, bundle: bundle)
    }
}
