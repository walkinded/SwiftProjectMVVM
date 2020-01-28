//
//  ViewModel.swift
//  ProjectMVVM
//
//  Created by Роман Лабунский on 28.01.2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "StringN1", lastName: "StringLN1", age: 11),
        Profile(name: "StringN2", lastName: "StringLN2", age: 12),
        Profile(name: "StringN3", lastName: "StringLN3", age: 13)
    ]
    
    // передача ячеек
    func cellViewModel(forIndexPath IndexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[IndexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    // вывод доп инфо в новом экране
    func viewModelForSelectionRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
      }
      
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
