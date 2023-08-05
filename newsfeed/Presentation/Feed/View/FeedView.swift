// 
//  FeedView.swift
//  newsfeed
//
//  Created by Виктор Шаблыко on 05.08.2023.
//
//  email: victorshablyko@yahoo.com
//  telegram: @victorshablyko

import UIKit

protocol FeedViewDelegate: AnyObject {
    
}

/// Main view for FeedViewController
final class FeedView: UIView {
    
    // MARK: - Private Properties
    
    private weak var delegate: FeedViewDelegate?
    
    // MARK: - Initializers
    
    init(delegate: FeedViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setup() {
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        
        subviews.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    // MARK: - Life Cycle
    
    // MARK: - Public Methods
    
    // MARK: - Actions
    
    // MARK: - Private Methods
}
