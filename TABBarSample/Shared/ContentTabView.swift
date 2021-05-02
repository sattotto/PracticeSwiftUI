//
//  ContentTabView.swift
//  TABBarSample
//
//  Created by 佐藤秀輔 on 2021/05/02.
//

import SwiftUI

struct ContentTabView: View {
    var content: String
    var color: Color
    
    var body: some View {
        ZStack {
            Rectangle().fill(color)
            Text(content).font(.largeTitle)
        }
    }
}

//struct ContentTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentTabView()
//    }
//}
