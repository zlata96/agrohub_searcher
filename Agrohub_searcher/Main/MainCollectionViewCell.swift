// MainCollectionViewCell.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import SnapKit
import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    var itemInageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .red
        imageView.layer.cornerRadius = 8
        return imageView
    }()

    var itemNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.mainTitleTextColor
        label.text = "itemNameLabel"
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()

    var itemDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = UIColor.subTitleTextColor
        label.numberOfLines = 0
        label.text = "itemDescriptionLabel"
        label.textAlignment = .left
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
//        contentView.addSubview(itemInageView)
//        contentView.addSubview(itemNameLabel)
//        contentView.addSubview(itemDescriptionLabel)
        addSubview(itemInageView)
        addSubview(itemNameLabel)
        addSubview(itemDescriptionLabel)
    }

    private func makeConstraints() {
//        contentView.snp.makeConstraints { make in
//            make.top.bottom.equalToSuperview()
//            make.trailing.leading.equalToSuperview()
//            make.leading.equalToSuperview().offset(8)
//        }

        itemInageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.top.equalToSuperview().offset(12)
            make.height.equalTo(82)
            make.width.equalTo(140)
        }

        itemNameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.top.equalTo(itemInageView.snp.bottom).offset(12)
        }

        itemDescriptionLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(12)
            make.top.equalTo(itemNameLabel.snp.bottom).offset(6)
        }
    }
}
