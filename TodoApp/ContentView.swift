//
//  ContentView.swift
//  TodoApp
//
//  Created by 井手翔平 on 2024/01/06.
//

import SwiftUI



struct ContentView: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    Button(action: {
                        //firstindexofでtaskの要素番号があれば要素番号を、なければnilを返す
                        guard let index = self.userData.tasks.firstIndex(of: task)
                        else {
                            return
                        }
                        self.userData.tasks[index].checked.toggle()
                        print (index)
                    })
                    {
                        ListRow(task: task.title, isCheck: task.checked)
                    }
                }
               // userdataファイルのisEditingの状態でdraftを呼び出しテキスト入力
                if self.userData.iseEditing {
                    Draft()
                } else {
                    Button(action:{ self.userData.iseEditing = true})
                    {
                        Text("+")
                            .font(.title)
                    }
                }

            }
            .navigationBarTitle(Text("Tasks"))
            .navigationBarItems(trailing: Button(action: {
                DeleteTask()
            })
            {
                Text("Delete")
            }
            )
        }
    }
    func DeleteTask() {
        //checkdがfalseのみをfilterする$0は第一引数の意味
        let necessaryTask = self.userData.tasks.filter({!$0.checked})
        print(necessaryTask)
        self.userData.tasks = necessaryTask
    }
}

#Preview {
    ContentView()
        .environmentObject(UserData())
}
