//
//  NibLoadable.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 14/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

#if canImport(UIKit)
import UIKit

public protocol NibLoadable {
    static var nibName: String {get}
}

public extension NibLoadable where Self: UIViewController {
    var nibName: String {
        return "\(self)"
    }
}
#endif
