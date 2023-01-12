//
//  ViewController.swift
//  ShowNews
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    var homeViewModel: HomeViewModelProtocol?
    private(set) var newsResonseModel: NewListResponseModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setupData()
    }
    
    private func setupData() {
        homeViewModel = HomeViewModel()
        homeViewModel?.onDataLoad = { [weak self] result in
            DispatchQueue.main.async {
                self?.newsResonseModel = result
                self?.activityIndicator.stopAnimating()
                self?.tableView.reloadData()
            }
        }
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false
        homeViewModel?.viewDidLoad()
    }
    
    private func setupUI() {
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = .purple
        activityIndicator.isHidden = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(
            UINib(nibName: "ListTableViewCell", bundle: nil),
            forCellReuseIdentifier: "ListTableViewCell"
        )
    }

}

