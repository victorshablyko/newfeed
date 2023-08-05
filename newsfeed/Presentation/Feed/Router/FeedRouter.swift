// 
//  FeedRouter.swift
//  newsfeed
//
//  Created by Виктор Шаблыко on 05.08.2023.
//
//  email: victorshablyko@yahoo.com
//  telegram: @victorshablyko

import UIKit

protocol FeedRouting {
    var viewController: FeedViewController? { get set }
}

/// Router for FeedViewController
final class FeedRouter: FeedRouting {
    
    // MARK: - Public Properties
    
    public weak var viewController: FeedViewController?
    
    // MARK: - Public Methods
    
    
}
