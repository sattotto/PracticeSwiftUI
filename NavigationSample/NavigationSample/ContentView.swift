//
//  ContentView.swift
//  NavigationSample
//
//  Created by 佐藤秀輔 on 2020/03/30.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            // Navigationとして作成される
            Text("Hello, World!")
                .navigationBarTitle("Swift UI small Navigation", displayMode: .inline)
            // 通常のViewのような形でNavigationの下にViewとして存在
            Text("メニュー表示するには右へスワイプします")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
