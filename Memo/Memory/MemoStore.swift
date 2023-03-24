//
//  MemoStore.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import Foundation

//메모 목록 저장하는 클래스

class MemoStore : ObservedObject{
    @Published var list : [MemoMemory] // auto update
    init(){
        list = [
            MemoMemory(content: "Hi Hello", insertDate: Date.now)
            MemoMemory(content: "So good to see you", insertDate: Date.now)
            MemoMemory(content: "And bye", insertDate: Date.now)
        
        ]
    }
    func insert(memo : String){
        //at:index
        list.insert(MemoMemory(content: memo), at: 0)
    }
    
    func update(memo : MemoMemory?, content : String){
        //binding
        guard let memo = memo else{
            return
        }
        memo.content = content
    }
    
    func delete(memo: MemoMemory){
        list.removeAll{
            $0.id == memo.id
        }
    }
    
    func delete(set: IndexSet){
        for index in set{
            list.remove(at: index)
        }
    }
    
    
}
