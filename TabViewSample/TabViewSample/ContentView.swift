//
//  ContentView.swift
//  TabViewSample
//
//  Created by 佐藤秀輔 on 2020/09/19.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // 初期に選択されているタブのTag
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            // 直書きをするか，作成したSwiftUIを利用して画面を設定するか
            // 1つのファイルに全て書けるが画面ごとに作成したほうが可読性が高い
            Text("Hello, World")
            .tabItem{
                // タブの名前
                Text("Home")
                // タブのアイコン
                Image(systemName: "house.fill")
            }.tag(0) // どのタブ7日を判別するため
            SecondTabItem()
            .tabItem{
                Text("Second")
                Image(systemName: "list.bullet")
            }.tag(1)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
