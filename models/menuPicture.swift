//
//  menuCard.swift
//  Loula's Taverna
//
//  Created by GUW06 on 2023-07-27.
//

import Foundation
import SwiftUI

struct menuPicture: Identifiable, Hashable, Equatable{
    var id: UUID = .init()
    var image: String
    var previousOffset: CGFloat = 0
}
