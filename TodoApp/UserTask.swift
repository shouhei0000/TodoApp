//
//  UserTask.swift
//  TodoApp
//
//  Created by 井手翔平 on 2024/01/06.
//

import SwiftUI

struct Task: Identifiable,Equatable {
    let id = UUID()
    var title:String
    var checked: Bool
    
    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
