//
//  FeaturedCell.swift
//  FakeStore
//
//  Created by Кирилл Курочкин on 06.06.2024.
//

import UIKit
import SwiftUI
class FeaturedCell: UICollectionViewCell,SelfConfiguringCell {
    static var reuseIdentifier: String = "FeaturedCell" // идентификатор повторного использования этой ячейки
    
    let tagline = UILabel()
    let name = UILabel()
    let subtitle = UILabel()
    let imageView = UIImageView()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        let separator = UIView(frame: .zero)
        separator.translatesAutoresizingMaskIntoConstraints = false
        separator.backgroundColor = .quaternaryLabel

        tagline.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 12, weight: .bold))
        tagline.textColor = .systemBlue

        name.font = UIFont.preferredFont(forTextStyle: .title2)
        name.textColor = .label

        subtitle.font = UIFont.preferredFont(forTextStyle: .title2)
        subtitle.textColor = .secondaryLabel

        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true // обрезка по границам
        imageView.contentMode = .scaleAspectFit

        let stackView = UIStackView(arrangedSubviews: [separator, tagline, name, subtitle, imageView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical //ось стэка вертикальна
        contentView.addSubview(stackView)

        NSLayoutConstraint.activate([
            separator.heightAnchor.constraint(equalToConstant: 1),

            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])

        stackView.setCustomSpacing(10, after: separator)
        stackView.setCustomSpacing(10, after: subtitle)
    }

    func configure(with app: App) {
        tagline.text = app.tagline.uppercased()
        name.text = app.name
        subtitle.text = app.subheading
        imageView.image = UIImage(named: app.image)
    }

    required init?(coder: NSCoder) {
        fatalError("Not happening")
    }
}

struct FeaturedCellRepresentable: UIViewRepresentable {
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
    func makeUIView(context: Context) -> UIView {
        let cell = FeaturedCell(frame: .zero)
        let app = App(id: 1, tagline: "Featured", name: "Strokey", subheading: "You'll never stroke the same way again.", image: "Heading1", iap: true)
        
        cell.configure(with: app)
        return cell.contentView
    }
    
  
}
#Preview {
    FeaturedCellRepresentable()
}
