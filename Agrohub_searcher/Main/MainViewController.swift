// MainViewController.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class MainViewController: UIViewController {
    var mainView = MainView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        setupCollections()
        // Do any additional setup after loading the view.
    }

    func setupCollections() {
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
    }
}

extension MainViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {}
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withClass: MainCollectionViewCell.self, for: indexPath)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
}
