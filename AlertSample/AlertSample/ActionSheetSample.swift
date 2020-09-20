//
//  ActionSheetSample.swift
//  AlertSample
//
//  Created by 佐藤秀輔 on 2020/09/20.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ActionSheetSample: View {
    // アクションシート表示用のフラグ
    @State var showingActionSheet1 = false
    @State var showingActionSheet2 = false
    
    @State var message = ""
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                self.showingActionSheet1 = true
            }) {
                Text("アクションシート表示")
            }.actionSheet(isPresented: $showingActionSheet1) { // アクションシートを表示
                ActionSheet(title: Text("質問"),
                            message: Text("絶対に失いたくないものは何？"),
                            buttons: [
                    .default(Text("お金")), // 普通のボタン
                    .default(Text("自由")),
                    .default(Text("家族")),
                    .default(Text("仲間")),
                    .cancel(Text("キャンセル")) // キャンセル用のボタン
                ])
            }
            Spacer()
            
            Button(action: {
                self.showingActionSheet2 = true
            }) {
                Text("アクションシート表示")
            }.actionSheet(isPresented: $showingActionSheet2) {
                ActionSheet(title: Text("Siri"),
                            message: Text("最高に面白いネタを思いつきました．"),
                            buttons: [
                                // アクションシートのボタンに応じた処理
                                .default(Text("言ってみて！")) {
                                    self.message = "私の言うことは支離滅裂ですよ"
                                                + "・・・Siriだけに．"
                                },
                                .cancel(Text("結構です")) {
                                    self.message = "はい，わかりました．"
                                }
                ])
            }
            Spacer()
            
            Text(message)
        }
    }
}

struct ActionSheetSample_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetSample()
    }
}
