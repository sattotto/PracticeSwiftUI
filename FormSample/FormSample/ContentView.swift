//
//  ContentView.swift
//  FormSample
//
//  Created by 佐藤秀輔 on 2020/06/06.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showingDetail = false
    @State var message = ""
    
    var body: some View {
        VStack {
            Button(action: { self.showingDetail.toggle() }) {
                Text("モーダル表示")
            }.sheet(isPresented: $showingDetail,
                    onDismiss: {
                        // Modalを閉じたときの動作
                        self.message = "モーダル画面を閉じました"
            }) {
                FormView()
            }
            Text(message)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
