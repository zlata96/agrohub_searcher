// ItemViewController.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class ItemViewController: NavigationController {
    var itemView = ItemView()
    var product: Product

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    init(product: Product) {
        self.product = product
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        view = itemView
        itemView.configure(with: product)
    }
}
