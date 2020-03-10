//
//  ContentView.swift
//  TextFieldSample
//
//  Created by 佐藤秀輔 on 2020/03/10.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var canInputText = false
    
    @State var tagName = ""
    @State var secure = ""
    
    @State var week = 1
    @State var segment = 1
    
    var body: some View {
        VStack {
            // Toggle
            Toggle(isOn: $canInputText) {
                Text("入力をする")
            }
            
            // Text Field
            if canInputText {
                TextField("入力してください", text: $tagName)
                    .padding(.leading)
                Text("現在の入力 {\(tagName)}")
                
                SecureField("秘密の入力", text: $secure)
                    .padding(.leading)
                Text("秘密の入力内容 \(secure)")
            }
            
            // Segmented Picker
            Picker(selection: $week,
                   label: Text("segment")) {
                    Text("Monday").tag(2)
                    Text("Tuesday").tag(3)
                    Text("Wednesday").tag(4)
                    Text("Thursday").tag(5)
                    Text("Friday").tag(6)
            }.pickerStyle(SegmentedPickerStyle())
            
            // Picker
            Picker(selection: $week,
                   label: Text("Day of week : \(week)")) {
                    Text("Sunday").tag(1)
                    Text("Monday").tag(2)
                    Text("Tuesday").tag(3)
                    Text("Wednesday").tag(4)
                    Text("Thursday").tag(5)
                    Text("Friday").tag(6)
                    Text("Saturday").tag(7)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
