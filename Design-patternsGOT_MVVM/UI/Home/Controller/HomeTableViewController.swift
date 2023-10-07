//
//  HomeTableViewController.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit

// MARK: - PROTOCOL
protocol HomeViewProtocol: AnyObject {
    func navigateToDetail(with data: Character?)
    func updateViews()
}

// MARK: - CLASS
class HomeTableViewController: UITableViewController {
    // MARK: PROPERTIES
    var viewModel: HomeViewModelProtocol?
    // MARK: OUTLETS
    @IBOutlet var homeTableView: UITableView!
    // MARK: LYFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Game of Thrones"
        registerCell()
        viewModel?.onViewsLoaded()
    }
    private func registerCell() {
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    //MARK: TABLE VIEW FUNCTIONS
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
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.onItemSelected(at: indexPath.row)
    }
  
}

// MARK: - EXTENSION
extension HomeTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
  // Navigation to detail with data and delegate as parameters
    func navigateToDetail(with data: Character?) {
        let detailViewController = DetailViewController()
        detailViewController.viewModel = DetailViewModel(viewData: data, viewDelegate: detailViewController )
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
   
    
    
}
