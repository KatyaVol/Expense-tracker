//
//  CategoryViewController.swift
//  Expense Tracker
//
//  Created by Ekaterina Volobueva on 17.05.2023.
//

import UIKit

protocol CategoryViewControllerProtocol: AnyObject {}

final class CategoryViewController: UIViewController, CategoryViewControllerProtocol {
    
    // MARK: - Private properties
    
    private let presenter: CategoryPresenterProtocol
    private lazy var categoryView = CategoryView(delegate: self)
    
    // MARK: - Init
    
    init(presenter: CategoryPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func loadView() {
        super.loadView()
        view = categoryView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemBackground
        navigationController?.navigationBar.tintColor = Colors.whiteAndBlack
    }
}

// MARK: - CategoryViewDelegate
extension CategoryViewController: CategoryViewDelegate {}
