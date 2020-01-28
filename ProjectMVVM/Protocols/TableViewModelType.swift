//
//  TableViewModelType.swift
//  ProjectMVVM
//
//  Created by Роман Лабунский on 28.01.2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation


//(переиспользование) набор требований для ViewController
protocol TableViewViewModelType {
    func numberOfRows() -> Int 
    func cellViewModel (forIndexPath IndexPath: IndexPath) -> TableViewCellViewModelType?
    
    // вывод информацию в новом окне
    func viewModelForSelectionRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath) 
}
