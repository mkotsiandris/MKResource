//
//  PartyList.swift
//  ResourceKitSampleApp
//
//  Created by Marios Kotsiandris on 22/05/2019.
//  Copyright © 2019 Marios Kotsiandris. All rights reserved.
//

import Foundation
import ResourceKit

struct PartyList: Codable, SupportedResourceType {
    var people: [PartyGuest]
}
