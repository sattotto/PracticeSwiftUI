//
//  LoadingViewExample.swift
//  HostingViewControllerSample
//
//  Created by 佐藤秀輔 on 2021/11/03.
//

import SwiftUI

struct LoadingViewExample: View {
    
    @State var isLoading = false
    @State var title = ""
    @State var example: [String] = []
    
    var body: some View {
        LoadingView(title: $title, isShowing: $isLoading) {
            NavigationView {
                VStack {
                    Button(action: {
                        self.isLoading = true
                        self.loadingDemo()
                    }){
                        Text("処理中画面を表示します")
                    }
                    
                    List {
                        ForEach(self.example, id: \.self) {
                            Text($0)
                        }
                    }.navigationBarTitle("Loading View Demo")
                }
            }
        }.onAppear() {
            self.addData()
        }
    }
    
    func loadingDemo() {
        self.title = "読み込み中"
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.processingDemo()
        }
    }
    
    func processingDemo() {
        self.title = "データ展開中"
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.isLoading = false
            self.addData()
        }
    }
    
    func addData() {
        let from = example.count
        let to = from + 3
        for i in from ..< to {
            self.example.append("Content example \(i)")
        }
    }
}

struct LoadingViewExample_Previews: PreviewProvider {
    static var previews: some View {
        LoadingViewExample()
    }
}
