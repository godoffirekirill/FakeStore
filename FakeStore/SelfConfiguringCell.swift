//
//  SelfConfiguringCell.swift
//  FakeStore
//
//  Created by Кирилл Курочкин on 06.06.2024.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get } // строка идентификатора повторного использования
    func configure(with app: App)
}
//протокол самонастраиваемая ячейка // будет спользоваться для всех ячеек представления коллекции
