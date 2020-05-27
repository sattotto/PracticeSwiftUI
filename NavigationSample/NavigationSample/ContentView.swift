//
//  ContentView.swift
//  NavigationSample
//
//  Created by 佐藤秀輔 on 2020/03/30.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = "NavigationBarボタンをタップしてください"
    @State var fightingGames = ["BBTAG", "BBCF", "GGXrd", "ストV"]
    
    var body: some View {
        NavigationView {
            // Navigationとして作成される
            // 縦向き画面では前面，横向き画面ではスワイプで呼び出し
            // Navigation内のアイテムを複数置きたい場合はVStackやHStackで複数配置できる
            VStack {
                Text(message).font(.largeTitle)
                    .padding()
                // 次の画面への遷移
                NavigationLink(destination: SecondView()){
                    Text("次のビューを表示").font(.system(size: 30))
                }.padding()
                // TableViewの作成
                List {
                    // ForEach参考
                    // https://capibara1969.com/1650/
                    ForEach(fightingGames, id: \.self) { game in
                        // セルタップ時の動作を追加
                        NavigationLink(destination: DetailView(name: game)) {
                            // 各Cellの名前
                            Text(game)
                        }
                    }
                }
            }
            // Stack内のアイテムに付いていても表示されるが外にあったほうがわかりやすい...??
            .navigationBarTitle("Welcome")
            // navigation Itemの下にTitleが表示される
            .navigationBarItems(
                leading: // 左寄せ
                Button(action: {
                    self.message = "Closed tapped!"
                }) {
                    Text("Close")
                },
                trailing: // 右寄せ
                HStack {
                    Button(action: {
                        self.message = "Help tapped"
                    }) {
                        Text("Help")
                    }
                    Button(action: {
                        self.message = "Info tapped"
                    }) {
                        Image(systemName: "info.circle")
                    }
                }
            )
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
