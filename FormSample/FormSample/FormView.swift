//
//  FormView.swift
//  FormSample
//
//  Created by 佐藤秀輔 on 2020/06/06.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct FormView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var showText = false
    @State var name = ""
    var game = ["BBTAG", "BBCF", "GGXrd", "GBVS"]
    @State var selected = 0
    @State var playDate = Date()
    
    var body: some View {
        NavigationView {
            // List, Formで表示が違う
            // Formのほうがよりコンパクトで表示が見やすい
            Form {
                // section でくくると入力場所を見やすくできる
                Section(header: Text("Player情報入力")) {
                    TextField("プレイヤー名を入力してください", text: $name)
                    Text("こんにちは，\(name)")
                    DatePicker(selection: $playDate,
                    label: {Text("年月日")} )
                }
                Section(header: Text("ゲーム選択")) {
                    Picker(selection: $selected,
                           label: Text("ゲーム名を選択"))
                    {
                        ForEach(0..<game.count) {
                            Text(self.game[$0])
                        }
                    }
                }
                Button(action: {}) {
                    Text("確定")
                }
            }
        .navigationBarTitle("入力")
                //Modalからの戻るボタン
        .navigationBarItems(trailing: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("close")
        })
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
