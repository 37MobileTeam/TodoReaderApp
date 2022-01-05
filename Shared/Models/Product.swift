//
//  Product.swift
//  TodoApp
//
//  Created by lory on 2022/1/5.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var title: String
    var isFavorited: Bool
}
