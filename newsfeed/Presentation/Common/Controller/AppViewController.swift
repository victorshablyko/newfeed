//
//  AppViewController.swift
//  newsfeed
//
//  Created by Виктор Шаблыко on 05.08.2023.
//

import UIKit

/// Start View controller for app flow
final class AppViewController: ViewController {
    
    // MARK: - Private properties
    
    private let rootViewController = NavigationController(rootViewController: FeedViewController())
    
    // MARK: - Initializers
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // showSplash()
        mainFlow()
    }
    
    // MARK: - Public Methods
    
    // MARK: - Actions
    
    // MARK: - Private Methods
    
    private func mainFlow() {
        addChild(controller: rootViewController, rootView: view)
    }
    
    private func showSplash() {
        // TODO: - Add splash
    }
}
