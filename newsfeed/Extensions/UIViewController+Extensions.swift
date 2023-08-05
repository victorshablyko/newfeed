//
//  UIViewController+Extensions.swift
//  newsfeed
//
//  Created by Виктор Шаблыко on 05.08.2023.
//

import UIKit

extension UIViewController {
    
    /// Adds UIViewController as a child, layouts childs to edges of parrent view
    func addChild (controller: UIViewController, rootView: UIView) {
        addChild(controller)
        rootView.addSubview(controller.view)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            controller.view.topAnchor.constraint(equalTo: rootView.topAnchor),
            controller.view.leadingAnchor.constraint(equalTo: rootView.leadingAnchor),
            controller.view.trailingAnchor.constraint(equalTo: rootView.trailingAnchor),
            controller.view.bottomAnchor.constraint(equalTo: rootView.bottomAnchor)
        ])
        controller.didMove(toParent: self)
    }
}
