//
//  Draft.swift
//  TodoApp
//
//  Created by 井手翔平 on 2024/01/07.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    var body: some View {
        TextField("タスクを入力してください", text: $taskTitle)
        .onSubmit {
                self.createTask()
                self.userData.iseEditing = false
        }
    }
    
    func createTask() {
        let newTask = Task(title: self.taskTitle, checked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}



#Preview {
    Draft()
}
