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
    
    @State private var showComposer : Bool = false
    /*
     View 는 가능한 잘게 쪼개는 것이 좋다 !
     shift + commmand + A
     */
    var body: some View {
        NavigationView{
            List(store.list){ memo in
                NavigationLink{
                    DetailView(memo: memo)
                } label: {
                    //(alignment: .leading : 왼쪽으로 정렬
                    MemoCell(memo: memo)
                }
            }//modifier <= method
            .navigationTitle("My Memo")
            .listStyle(.plain)//라운드 효과x
            .toolbar{
                Button{//default : right side
                    showComposer = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            // $ => binding
//            .sheet(isPresented: $showComposer){
//                //showComposer가 true 일 때 실행됨
//                ComposeView() // Modal
//            }
            //탭 -> 푸시 방식으로 표시
            
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
