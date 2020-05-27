//
//  SecondView.swift
//  NavigationSample
//
//  Created by 佐藤秀輔 on 2020/05/27.
//  Copyright © 2020 佐藤秀輔. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Rectangle().fill(Color.yellow)
            Text("2nd View").font(.system(size: 30))
        }
        .navigationBarTitle("SecondView")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
