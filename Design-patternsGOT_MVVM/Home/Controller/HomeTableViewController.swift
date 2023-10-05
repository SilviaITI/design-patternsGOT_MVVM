//
//  HomeTableViewController.swift
//  Design-patternsGOT_MVVM
//
//  Created by Silvia Casanova Martinez on 4/10/23.
//

import UIKit
// MARK: - PROTOCOL
protocol HomeViewProtocol: AnyObject {
    
}

// MARK: - CLASS

class HomeTableViewController: UITableViewController {
    var viewModel: HomeViewModelProtocol?
    
    @IBOutlet var homeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
    }
    private func registerCell() {
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        viewModel?.data
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
    }
        if(indexPath.count < characetr)
        //FALTA CONFIGURAR LA CELDA CON LOS DATOS
        return cell
    }
  
}

// MARK: - EXTENSION
extension HomeTableViewController: HomeViewProtocol {
    
}
