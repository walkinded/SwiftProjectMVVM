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
        Profile(name: "Roman", lastName: "Pirce", gender: "M", rating: 5),
        Profile(name: "Vova", lastName: "Sevos", gender: "M", rating: 5),
        Profile(name: "Vlad", lastName: "Levd", gender: "M", rating: 5),
        Profile(name: "Ivan", lastName: "Pepud", gender: "M", rating: 5),
        Profile(name: "Roza", lastName: "Luky", gender: "F", rating: 5),
        Profile(name: "Roman", lastName: "Mangub", gender: "M", rating: 5)
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
