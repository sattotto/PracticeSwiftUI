//
//  LoadingView.swift
//  HostingViewControllerSample
//
//  Created by 佐藤秀輔 on 2021/11/03.
//

import SwiftUI

struct LoadingView<Content>: View where Content: View {
    @Binding var title: String
    @Binding var isShowing: Bool
    var content: () -> Content
    
    var body: some View {
        ZStack{
            content()
                .blur(radius: isShowing ? 3 : 0)
                .animation(.easeIn, value: self.isShowing)
            ZStack{
                VStack {
                    Text(title)
                        .multilineTextAlignment(.center)
                    ActiviryIndicator(style: .large, animating: .constant(true))
                }.frame(width: 200, height: 200)
                    .compositingGroup()
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(UIColor.systemBackground)))
                    .shadow(radius: 6)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .background(.gray.opacity(0.5))
                .opacity(self.isShowing ? 1 : 0)
                .animation(.easeIn, value: self.isShowing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(title: .constant("Loading"), isShowing: .constant(true)) {
            VStack(alignment: .leading) {
                NavigationView {
                    List {
                        ForEach(0...100, id: \.self) { _ in
                            Text("Content Example ")
                        }
                    }.navigationBarTitle("Loading View Demo")
                }
            }
        }
    }
}
