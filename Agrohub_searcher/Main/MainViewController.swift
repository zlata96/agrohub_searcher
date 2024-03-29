// MainViewController.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class MainViewController: UIViewController {
    private var mainView = MainView()
    private var router = Router.shared
    private let productsService = ProductsService()
    private var productsData: [Product] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        setupCollections()
        fetchData()
    }

    func setupCollections() {
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
    }

    func fetchData() {
        productsService.getIndex {
            self.productsData = $0
            self.mainView.collectionView.reloadData()
        }
    }
}

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        router.setRootViewController(controller: ItemViewController(product: productsData[indexPath.row]))
    }
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withClass: MainCollectionViewCell.self, for: indexPath)
        cell.configure(with: productsData[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        productsData.count
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
}
