//
//  FruitModel.swift
//  Fruits
//
//  Created by enjykhaled on 13/02/2022.
//

import Foundation
import SwiftUI
//MARK: -Data Model
struct Fruit: Identifiable {
    var id  = UUID()
    var title: String
    var headline : String
    var image: String
    var gradientColors:[Color]
    var description: String
    var nutrition: [String]
}
