//
//  DetailViewController.swift
//  ProjectMVVM
//
//  Created by Роман Лабунский on 28.01.2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var viewModel: DetailViewModelType?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }

}
