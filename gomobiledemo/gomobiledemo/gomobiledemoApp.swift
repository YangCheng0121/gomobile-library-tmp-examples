//
//  gomobiledemoApp.swift
//  gomobiledemo
//
//  Created by yangcheng on 2024/10/5.
//

import SwiftUI
import GoMobileDemoApp
import UIKit

// Step 1: 包装 ViewController 为 SwiftUI 可用的 View
struct ViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()  // 初始化 ViewController
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // 这里可以根据需要更新 ViewController 的状态
    }
}

@main
struct gomobiledemoApp: App {
    
    var body: some Scene {
        WindowGroup {
            // Step 2: 在 SwiftUI 中使用 ViewControllerWrapper 来展示 UIKit 的 ViewController
            ViewControllerWrapper()
        }
    }
}
