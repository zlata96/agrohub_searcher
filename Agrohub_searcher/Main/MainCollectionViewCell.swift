// MainCollectionViewCell.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Kingfisher
import SnapKit
import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    private var itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private var itemNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.mainTitleTextColor
        label.numberOfLines = 0
        return label
    }()

    private var itemDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.subTitleTextColor
        label.numberOfLines = 5
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func commonInit() {
        addSubviews()
        makeConstraints()
        setupStyle()
    }

    private func setupStyle() {
        backgroundColor = .white
        layer.borderColor = UIColor.subTitleTextColor?.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 8
    }

    private func addSubviews() {
        addSubview(itemImageView)
        addSubview(itemNameLabel)
        addSubview(itemDescriptionLabel)
    }

    private func makeConstraints() {
        itemImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.top.equalToSuperview().offset(12)
            make.height.equalTo(82)
            make.width.equalTo(140)
        }

        itemNameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.trailing.equalToSuperview().inset(16)
            make.top.equalTo(itemImageView.snp.bottom).offset(12)
        }

        itemDescriptionLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.trailing.equalToSuperview().inset(16)
            make.top.equalTo(itemNameLabel.snp.bottom).offset(6)
        }
    }
}

extension MainCollectionViewCell: Configurable {
    func configure(with model: Product) {
        let url1 = "http://shans.d2.i-partner.ru" + model.image
        itemImageView.kf.setImage(with: URL(string: url1.preparedStringForURL))
        itemNameLabel.text = model.name
        itemDescriptionLabel.text = model.description
    }
}
