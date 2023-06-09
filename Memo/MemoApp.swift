//
//  MemoApp.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import SwiftUI

@main
struct MemoApp: App {
    @StateObject var store = MemoStore()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
