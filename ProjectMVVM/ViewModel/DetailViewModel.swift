//
//  DetailViewModel.swift
//  ProjectMVVM
//
//  Created by Роман Лабунский on 28.01.2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.lastName) is \(profile.age) old")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
    
}
