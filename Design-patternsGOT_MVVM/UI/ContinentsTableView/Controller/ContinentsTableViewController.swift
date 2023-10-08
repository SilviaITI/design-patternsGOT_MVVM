//
//  ContinentsTableViewController.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 8/10/23.
//

import UIKit
// MARK: - PROTOCOL
protocol ContinentsViewProtocol: AnyObject {
    func updateViews()
    func showLoading()
    func hideLoading()
    
}
// MARK: - CLASS
class ContinentTableViewController: UITableViewController {
    // MARK: PROPERTIES
    var viewModel: ContinentViewModelProtocol?
    @IBOutlet var continentsTable: UITableView!
    // MARK: LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Continents"
        registerCell()
        viewModel?.onViewsLoaded()
        tableView.rowHeight = 440
        
    }
    // MARK: PRIVATE FUNCTIONS
    private func registerCell() {
        tableView.register(UINib(nibName: "ContinentTableViewCell",bundle: nil), forCellReuseIdentifier: "ContinentCell") 
    }
    
    // MARK: - TABLEVIEW FUNCTIONS
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.dataCount ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "ContinentCell", for: indexPath) as? ContinentTableViewCell else {
            return UITableViewCell()
        }
        if let data = viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
            
        }
        return cell
        
    }
    
}
// MARK: - EXTENSION
extension ContinentTableViewController: ContinentsViewProtocol{
    func updateViews() {
        
        tableView.reloadData()
    }
    // Function that shows custom spinner
    func showLoading() {
        DispatchQueue.main .async {
            self.manageSpinner(inside: self.view, action: .add)
        }
    }
    // Function that hides custom spinner
    func hideLoading() {
        DispatchQueue.main.async {
            self.manageSpinner(inside: self.view, action: .remove)
        }
    }
    
}
