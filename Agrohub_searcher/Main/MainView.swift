// MainView.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class MainView: UIView {
    var collectionView: UICollectionView = {
        let layout = LayoutManger.makeMenuViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(cellWithClass: MainCollectionViewCell.self)
        collectionView.backgroundColor = .clear
        // collectionView.showsVerticalScrollIndicator = false
        return collectionView
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
        addSubview(collectionView)
    }

    private func makeConstraints() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(16)
        }
    }
}
