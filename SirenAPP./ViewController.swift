//
//  ViewController.swift
//  SirenAPP.
//
//  Created by Süleyman Arslan on 27.11.2022.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playBtn(_ sender: Any) {
        
        let url = Bundle.main.url(forResource: "siren", withExtension: "mp4")
        let avPlayer = AVPlayer(url: url!)
        let avController = AVPlayerViewController()
        avController.player = avPlayer
        present(avController, animated: true){
            avPlayer.play()
            
        }
        
        
           
    }
}

