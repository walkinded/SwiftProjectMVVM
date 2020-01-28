//
//  TableViewCellViewModelType.swift
//  ProjectMVVM
//
//  Created by Роман Лабунский on 28.01.2020.
//  Copyright © 2020 Роман Лабунский. All rights reserved.
//

import Foundation


protocol TableViewCellViewModelType: class {
    
    var fullName: String { get }
    var age: String { get }
}
