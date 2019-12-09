//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 佐藤秀輔 on 2019/11/26.
//  Copyright © 2019 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 縦方向にまとめるUI
        VStack(alignment: .center) {
            Text("Hello, World!")
                .font(.title)
                .padding()
            Text("This space is vertical stack")
            // 横方向にまとめるUI
            HStack {
                Text("Practice SwiftUI Project")
                Spacer()
                Text("by satoto")
                    .foregroundColor(.gray)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
