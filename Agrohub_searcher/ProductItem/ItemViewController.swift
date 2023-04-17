// ItemViewController.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class ItemViewController: UINavigationController {
    var itemView = ItemView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = itemView
    }
}
