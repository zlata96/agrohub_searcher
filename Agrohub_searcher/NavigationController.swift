// NavigationController.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class NavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStyle()
    }

    private func setupStyle() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .navigationBackground
        navigationBar.standardAppearance = appearance
        view.backgroundColor = .mainBackground
    }
}
