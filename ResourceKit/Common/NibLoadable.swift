//
//  NibLoadable.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 14/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public protocol NibLoadable {
    static var nibName: String {get}
}

public extension NibLoadable where Self: UIViewController {
    var nibName: String {
        return "\(self)"
    }
}
