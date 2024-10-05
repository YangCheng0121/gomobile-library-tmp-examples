//
//  ViewController.swift
//  goMobileDemo01
//
//  Created by Bin on 2022/7/20.
//

import GoMobileDemoApp
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // 在视图加载后进行任何其他设置
        // Do any additional setup after loading the view.

        let su = SupportNewSupport()
        su?.echo()

        let ob = SwiftSupportObserve()
        su?.setObserve(ob)

        su?.call("杨程")
    }

    // 把 SupportNewSupport 的初始化和调用逻辑提取到一个独立的函数
    private func setupSupport() {
        if let su = SupportNewSupport() {
            su.echo()
        } else {
            // 处理 SupportNewSupport 初始化失败的情况
            print("Failed to initialize SupportNewSupport.")
        }
    }
}
