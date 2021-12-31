//
//  IndicatorExample.swift.swift
//  HostingViewControllerSample
//
//  Created by 佐藤秀輔 on 2021/11/03.
//

import SwiftUI

struct IndicatorExample_swift: View {
    @State var animating = false
    
    var body: some View {
        VStack {
            Text("UIActivityIndicatorView")
            ActiviryIndicator(animating: .constant(true))
            ActiviryIndicator(animating: $animating)
            ActiviryIndicator(style: .large, animating: $animating)
            Toggle(isOn: $animating) {
                Text("Indivatorの回転")
            }
        }
    }
}

struct IndicatorExample_swift_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorExample_swift()
    }
}
