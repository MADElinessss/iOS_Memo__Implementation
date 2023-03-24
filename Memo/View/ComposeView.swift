//
//  ComposeView.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import SwiftUI

struct ComposeView: View {
    
    @EnvironmentObject var store : MemoStore
    @Environment(\.dismiss) var dismiss
    //state variable
    @State private var content : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //2way binding
                //content <-> texteditor
                TextEditor(text: $content)
                    .padding()//여백
            }
            .navigationTitle("New Memo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                //left button
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label:{
                        Text("Cancel")
                    }
                }
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button{
                        store.insert(memo: content)
                        dismiss()
                    } label:{
                        Text("Save")
                    }
                }
            }
        }
    }
}

struct ComposeView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeView()
            .environmentObject(MemoStore())
    }
}
