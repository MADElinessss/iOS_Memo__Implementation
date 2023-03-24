//
//  MemoCell.swift
//  Memo
//
//  Created by 신정연 on 2023/03/24.
//

import SwiftUI


struct MemoCell: View {
    @ObservedObject var memo : MemoMemory
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)//memo content 1줄
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider{
    static var previews: some View {
        MemoCell(memo: MemoMemory(content: "TEST"))
    }
}
