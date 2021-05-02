//
//  ContentView.swift
//  Shared
//
//  Created by 佐藤秀輔 on 2021/05/02.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            Text("First Content")
                .tabItem {
                    Image(systemName: "tornado")
                    Text("First")
                }.tag(0)
            Text("Second Content")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Second")
                }.tag(1)
            ContentTabView(content: "Third View", color: .green)
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Third")
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
