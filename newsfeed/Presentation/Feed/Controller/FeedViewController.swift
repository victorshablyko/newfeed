// 
//  FeedViewController.swift
//  newsfeed
//
//  Created by Виктор Шаблыко on 05.08.2023.
//
//  email: victorshablyko@yahoo.com
//  telegram: @victorshablyko

import UIKit

protocol FeedViewControllerDelegate: AnyObject {
    
}

///
final class FeedViewController: ViewController {
    
    // MARK: - Private Properties
    
    private lazy var feedView = FeedView(delegate: self)
    private weak var delegate: FeedViewControllerDelegate?
    
    // MARK: - Initializers
    
    init(delegate: FeedViewControllerDelegate? = nil) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func loadView() {
        self.view = feedView
    }
    
    // MARK: - Public Methods
    
    // MARK: - Actions
    
    // MARK: - Private Methods
}

// MARK: - FeedViewDelegate

extension FeedViewController: FeedViewDelegate {
    
}
