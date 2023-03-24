//
//  DetailView.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import SwiftUI

//메모 보기
struct DetailView: View {
    
    @ObservedObject var memo : MemoMemory
    @EnvironmentObject var store : MemoStore
    
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    HStack {
                        Text(memo.content)
                            .padding()
                        Spacer(minLength: 0)
                        //이렇게 하면 수평 스택에서 젤 왼쪽
                    }
                    Text(memo.insertDate, style: .date)
                        .padding()
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationTitle("Content")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(memo: MemoMemory(content: "This is Dummy"))
            .environmentObject(MemoStore())
    }
}
