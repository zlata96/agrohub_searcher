// ItemView.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class ItemView: UIView {
    private var itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private var starButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "starIcon"), for: .normal)
        button.contentMode = .center
        button.tintColor = .subTitleTextColor
        return button
    }()

    private var itemLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .mainTitleTextColor
        label.numberOfLines = 0
        return label
    }()

    private var itemDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .subTitleTextColor
        label.numberOfLines = 0
        return label
    }()

    private var findLocationButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "locationIcon"), for: .normal)
        button.setTitle(" ГДЕ КУПИТЬ ", for: .normal)
        button.setTitleColor(.mainTitleTextColor, for: .normal)
        button.tintColor = .navigationBackground
        button.contentMode = .center
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.subTitleTextColor?.cgColor
        button.layer.cornerRadius = 4
        return button
    }()

    private var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
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
        setupStyle()
        addSubviews()
        makeConstraints()
    }

    private func setupStyle() {
        backgroundColor = .mainBackground
    }

    private func addSubviews() {
        addSubview(itemImageView)
        addSubview(starButton)
        addSubview(itemLabel)
        addSubview(itemDescriptionLabel)
        addSubview(findLocationButton)
        addSubview(iconImageView)
    }

    private func makeConstraints() {
        itemImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(80)
            make.height.equalTo(183)
            make.width.equalTo(117)
        }

        starButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(36)
            make.top.equalToSuperview().offset(80)
            make.size.equalTo(28)
        }

        iconImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(80)
            make.size.equalTo(30)
        }

        itemLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(14)
            make.top.equalTo(itemImageView.snp.bottom).offset(32)
        }

        itemDescriptionLabel.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(14)
            make.top.equalTo(itemLabel.snp.bottom).offset(8)
        }

        findLocationButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(14)
            make.top.equalTo(itemDescriptionLabel.snp.bottom).offset(16)
            make.height.equalTo(26)
        }
    }
}

extension ItemView: Configurable {
    func configure(with model: Product) {
        let imageURL = "http://shans.d2.i-partner.ru" + model.image
        itemImageView.kf.setImage(with: URL(string: imageURL.preparedStringForURL))
        itemLabel.text = model.name
        itemDescriptionLabel.text = model.description
    }
}
