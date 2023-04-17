// MainLayout.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

enum LayoutManger {
    static func makeMenuViewLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { sectionIndex, layoutEnviroment -> NSCollectionLayoutSection? in

            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 8, trailing: 8)

            let banerGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(0.3))
            let banerGroup = NSCollectionLayoutGroup.horizontal(layoutSize: banerGroupSize, repeatingSubitem: item, count: 2)

            let section = NSCollectionLayoutSection(group: banerGroup)
            section.interGroupSpacing = 8
            return section
        }
        return layout
    }
}
