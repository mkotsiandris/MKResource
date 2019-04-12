//
//  ResourceSecCertificateExtensions.swift
//  ResourceKit
//
//  Created by Marios Kotsiandris on 12/04/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation

public extension Resourcable where ResourceType == SecCertificate {
    func load(bundle: Bundle = Bundle.main) -> SecCertificate? {
        guard let path = bundle.path(forResource: fileName, ofType: fileExtension),
            let certData = try? Data(contentsOf: URL(fileURLWithPath: path)) else { return nil }
        return SecCertificateCreateWithData(nil, certData as CFData)
    }
}
