//
//  ViewController.swift
//  MyXylo
//
//  Created by Alibek Kozhambekov on 03.11.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let soundURL = Bundle.main.url(forResource: sender.currentTitle, withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: soundURL)
            player.play()
        }
    }
    
}

