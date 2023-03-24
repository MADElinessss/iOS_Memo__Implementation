//
//  MemoMemory.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import Foundation
import SwiftUI

//identifiable: data -> list binding
//obser: memo edit, auto update
class MemoMemory : Identifiable, ObservedObject{
    let id : UUID
    @Published var content : String
    //Published : 새로운 메모 추가할때마다 binding ui update
    let insertDate : Date
    
    init(content : String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
//identifiable: data -> list binding
//obser: memo edit, auto update


