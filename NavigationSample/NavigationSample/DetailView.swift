//
//  DetailView.swift
//  NavigationSample
//
//  Created by 佐藤秀輔 on 2020/05/27.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    // ここにアクセスできるようにしておかないとボタンで戻るのアクションができない
    @Environment(\.presentationMode) var presentationMode
    
    var name: String = "Hello World"
    
    var body: some View {
        VStack {
            Text(name).font(.system(size: 30))
            Button(action: {
                // ボタンで戻る場合
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Return")
            }
        }
        // ボタンのみで遷移元に戻りたい場合ナビゲーションバーを隠す．
        //.navigationBarBackButtonHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
