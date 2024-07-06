//
//  Selection.swift
//  FakeStore
//
//  Created by Кирилл Курочкин on 06.06.2024.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
