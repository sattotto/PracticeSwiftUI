//
//  ContentView.swift
//  AlertSample
//
//  Created by 佐藤秀輔 on 2020/09/19.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // アラート表示をする際にアラートが表示されているのかどうかを保持する状態変数
    // 一つの画面で2つ以上のアラートを作成する場合はアラートの個数に応じた状態変数を作成
    @State var showingAlert = false
    @State var showingAlert2 = false
    
    @State var answerMessage = ""
    
    
    var body: some View {
        // alertのボタンを押したときの動作
        let onButtonClickCat = {
            self.answerMessage = "あなたは猫を選びました"
        }
        
        let onButtonClickDog = {
            self.answerMessage = "あなたは犬を選びました"
        }
         return VStack {
            Spacer()
            // ボタンを押した際にアラートを表示
            Button(action: {
                self.showingAlert = true
            }) {
                Text("アラートを表示1")
            }
            .alert(isPresented: $showingAlert) { // ボタン一つのアラート作成の場合
                Alert(title: Text("警告"),
                      message: Text("今日は紫外線が強いので日焼け止めが必須です"),
                      dismissButton: .default(Text("OK"))
                )
            }
            
            Spacer()

            Button(action: {
                self.showingAlert2 = true
            }) {
                Text("アラートを表示2")
            }
            .alert(isPresented: $showingAlert2) { // ボタン2つのアラート作成の場合
                Alert(title: Text("質問"),
                      message: Text("あなたはどちらの動物に近いですか？"),
                      // actionがなくても使用はできる
                      primaryButton: .destructive(Text("ネコ"), action: onButtonClickCat),
                      secondaryButton: .cancel(Text("イヌ"), action: onButtonClickDog)
                )
            }
            Spacer()
            Text(answerMessage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
