//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by 井手翔平 on 2024/01/06.
//

import SwiftUI

@main
struct TodoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
            
        }
    }
}
