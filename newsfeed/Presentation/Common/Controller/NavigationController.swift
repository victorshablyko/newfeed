//
//  NavigationController.swift
//  newsfeed
//
//  Created by Виктор Шаблыко on 05.08.2023.
//

import UIKit

/// Custom Navigation bar to hide actual bar
final class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    // MARK: - Private Methods

    private func updateNavigationBar(for viewController: UIViewController, animated: Bool) {
        let hidden = (viewController as? ViewController)?.isNavigationBarHidden ?? false
        guard hidden != isNavigationBarHidden else { return }
        setNavigationBarHidden(hidden, animated: animated)
    }
}

// MARK: - UINavigationControllerDelegate

extension NavigationController: UINavigationControllerDelegate {

    public func navigationController(
        _ navigationController: UINavigationController,
        willShow viewController: UIViewController,
        animated: Bool
    ) {
        updateNavigationBar(for: viewController, animated: animated)
    }
}
