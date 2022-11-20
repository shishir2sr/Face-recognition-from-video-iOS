//
//  ViewController.swift
//  Smart Video Player with face reconition feature
//
//  Created by Yeasir Arefin Tusher on 20/11/22.
//
import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
        playVideo()
       }
    
    
    private func playVideo(){
        guard let path = Bundle.main.path(forResource: "20210629_010524", ofType:"mp4") else {
                    debugPrint("videoNotFound")
                    return
                }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
            let playerController = AVPlayerViewController()
            playerController.player=player
            present(playerController, animated: true) {
            player.play()
            }
        }
        
        
   
    }
   
    




