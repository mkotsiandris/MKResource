//
//  File.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 13/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

extension String {
    private var url: URL? {
        return URL(string: self)
    }

    var pathExtension: String? {
        return url?.pathExtension
    }

    func removePathExtension() -> String? {
        return url?.deletingPathExtension().lastPathComponent
    }
}
