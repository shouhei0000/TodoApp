//
//  UserData.swift
//  TodoApp
//
//  Created by 井手翔平 on 2024/01/06.
//

import SwiftUI

class UserData: ObservableObject {
   @Published var tasks = [
        Task(title: "散歩", checked: true),
        Task(title: "料理", checked: false),
        Task(title: "筋トレ", checked: true)
    ]
    
    @Published var iseEditing:Bool = false
}
