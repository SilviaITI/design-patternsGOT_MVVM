//
//  HomeViewModel.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import Foundation

// MARK: - PROTOCOL
protocol HomeViewModelProtocol {
    var dataCount: Int { get }
  func onViewsLoaded()
    func data(at index:Int) -> Character?
    func onItemSelected(at index: Int)
  
}
// MARK: - CLASS
final class HomeViewModel {
    // MARK: PROPERTIES
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData:[Character] = []
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    // MARK: PRIVATE FUNCTIONS
    private func loadData(){
        viewData = characters
        viewDelegate?.updateViews()
    }
}
// MARK: - EXTENSION
extension HomeViewModel: HomeViewModelProtocol {
    
    // navigate to detail with data of a character
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else {return}
        viewDelegate?.navigateToDetail(with: data)
    }
    // data of character
    func data(at index: Int) -> Character? {
        guard  index < dataCount else { return nil}
        return viewData[index]
    }
    // count items of array
    var dataCount: Int {
        viewData.count
    }
    // the view is loaded 
    func onViewsLoaded() {
        loadData()
    }
    
 
    
    
    
}
