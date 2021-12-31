//
//  ActivityIndicator.swift
//  HostingViewControllerSample
//
//  Created by 佐藤秀輔 on 2021/11/03.
//

import Foundation
import SwiftUI

struct ActiviryIndicator: UIViewRepresentable {
    public var style = UIActivityIndicatorView.Style.medium
    @Binding var animating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
