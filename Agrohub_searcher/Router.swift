// Router.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import UIKit

class Router {
    static let shared = Router()

    func loadInitialScreen() {
        let controller = UINavigationController(rootViewController: MainViewController())
        setRootViewController(controller: controller)
    }

    func setRootViewController(controller: UIViewController, animatedWithOptions: UIView.AnimationOptions? = nil) {
        guard let window = UIApplication.shared.keyWindow else {
            fatalError("No window in app")
        }
        if let animationOptions = animatedWithOptions, window.rootViewController != nil {
            window.rootViewController = controller
            UIView.transition(
                with: window,
                duration: 0.33,
                options: animationOptions,
                animations: {}
            )
        } else {
            window.rootViewController = controller
        }
    }
}
