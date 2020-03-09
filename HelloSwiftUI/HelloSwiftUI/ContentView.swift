//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 佐藤秀輔 on 2019/11/26.
//  Copyright © 2019 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello World!"
    
    var body: some View {
        // 縦方向にまとめるUI
        VStack(alignment: .center) {
            Text(labelText)
                .font(.title)
                .padding()
            Text("This space is vertical stack")
            
            // Label Text change button
            Button(action: {
                self.labelText = "Hello SwiftUI"
            }) {
                Text("Tap!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray)
            }.padding()
            
            // 横方向にまとめるUI
            HStack {
                Text("Practice SwiftUI Project")
                Spacer()
                Text("by satoto")
                    .foregroundColor(.gray)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
