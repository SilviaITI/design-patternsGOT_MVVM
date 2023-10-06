//
//  HomeTableViewController.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit

// MARK: - PROTOCOL
protocol HomeViewProtocol: AnyObject {
    func navigateToDetail()
}

// MARK: - CLASS

class HomeTableViewController: UITableViewController {
    var viewModel: HomeViewModelProtocol?
    
    @IBOutlet var homeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        viewModel?.onViewsLoaded()
        
    }
    private func registerCell() {
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    // MARK:  Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return viewModel?.dataCount ?? 0
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
    }
        if let data =  viewModel?.data(at: indexPath.row) {
            cell.updateViews(data: data)
       
        }
        return cell
    }
  
}

// MARK: - EXTENSION
extension HomeTableViewController: HomeViewProtocol {
    
}
