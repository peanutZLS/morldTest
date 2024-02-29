//
//  VideoViewController.swift
//  tttt
//
//  Created by 郭家宇 on 2024/2/29.
//

import UIKit
import AVKit
class VideoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let videoURL = Bundle.main.url(forResource: "video1", withExtension: "mp4") {
            // 創建 AVPlayerViewController
            let playerViewController = AVPlayerViewController()
            let player = AVPlayer(url: videoURL)
            playerViewController.player = player
            
            // 將 AVPlayerViewController 添加到當前 ViewController 中
            addChild(playerViewController)
            view.addSubview(playerViewController.view)
            playerViewController.view.frame = view.bounds
            playerViewController.didMove(toParent: self)
            
            // 開始播放視頻
            player.play()
        } else {
            print("找不到影片文件")
        }
        
    }
}
