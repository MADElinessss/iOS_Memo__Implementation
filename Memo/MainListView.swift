//
//  MainListView.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import SwiftUI

struct MainListView: View {
    
    //하나의 데이터를 여러 뷰에서 공유하고 싶을 때
    @EnvironmentObject var store : MemoStore
    
    var body: some View {
        NavigationView{
            List(store.list){ memo in
                //(alignment: .leading : 왼쪽으로 정렬
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1)//memo content 1줄
                    Text(memo.insertDate, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }//modifier <= method
            .navigationTitle("My Memo")
            .listStyle(.plain)//라운드 효과x
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
