//
//  TableViewCellViewModel.swift
//  ProjectMVVM
//
//  Created by Роман Лабунский on 28.01.2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.lastName
    }
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
