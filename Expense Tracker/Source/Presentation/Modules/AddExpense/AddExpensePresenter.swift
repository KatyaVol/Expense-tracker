//
//  Presenter.swift
//  Expense Tracker
//
//  Created by Ekaterina Volobueva on 17.04.2023.
//
import Foundation

protocol AddExpensePresenterProtocol: AnyObject {
    func categoryImageTapped()
    func dateLabelTapped(cell: DateTableViewCell)
}

final class AddExpensePresenter: AddExpensePresenterProtocol {
    
    // MARK: - Properties
    
    weak var view: AddExpenseViewControllerProtocol?
    var coordinator: AddExpenseCoordinatorProtocol?
    
    // MARK: - Internal methods
    
    func categoryImageTapped() {
        coordinator?.pushCategory(coordinator: coordinator!)
    }
    
    func dateLabelTapped(cell: DateTableViewCell) {
        coordinator?.showCalendarPopover(coordinator: coordinator!, cell: cell)
    }
}
