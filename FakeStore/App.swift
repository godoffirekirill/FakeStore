//
//  App.swift
//  FakeStore
//
//  Created by Кирилл Курочкин on 06.06.2024.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
