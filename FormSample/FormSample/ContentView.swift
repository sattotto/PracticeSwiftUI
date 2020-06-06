//
//  ContentView.swift
//  FormSample
//
//  Created by 佐藤秀輔 on 2020/06/06.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showText = false
    @State var name = ""
    var game = ["BBTAG", "BBCF", "GGXrd", "GBVS"]
    @State var selected = 0
    @State var playDate = Date()
    
    var body: some View {
        NavigationView {
            // List, Formで表示が違う
            // Listのほうがよりコンパクトで表示が見やすい
            Form {
                TextField("プレイヤー名を入力してください", text: $name)
                Text("こんにちは，\(name)!")
                DatePicker(selection: $playDate,
                          label: {Text("年月日")} )
                Picker(selection: $selected,
                       label: Text("ゲーム名を選択"))
                {
                    ForEach(0..<game.count) {
                        Text(self.game[$0])
                    }
                }
                Button(action: {}) {
                    Text("確定")
                }
            }
        .navigationBarTitle("入力")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
