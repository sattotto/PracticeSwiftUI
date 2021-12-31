//
//  ViewController.swift
//  HostingViewControllerSample
//
//  Created by 佐藤秀輔 on 2021/11/03.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func OpenSwiftUI(_ sender: Any) {
        // HostingControllerを利用してSwiftUiのコードを書く
        let nextView = UIHostingController(rootView:
            VStack {
                Text("Hello SwiftUI!")
                    .font(.system(size: 50))
            }
        )
        self.present(nextView, animated: true, completion: nil
        )
    }
    
    @IBAction func OpenIndicatorView(_ sender: Any) {
        // HostingControllerにSwiftUiのViewを渡して表示
        let nextView = UIHostingController(rootView: IndicatorExample_swift())
        self.present(nextView, animated: true, completion: nil)
    }
    
    @IBAction func OpenLoadingView(_ sender: Any) {
        let nextView = UIHostingController(rootView: LoadingViewExample())
        self.present(nextView, animated: true, completion: nil)
    }
    
}

