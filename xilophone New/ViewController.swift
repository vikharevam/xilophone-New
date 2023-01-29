//
//  ViewController.swift
//  xilophone New
//
//  Created by Александр Вихарев on 25.01.2023.
//

import UIKit
import Foundation
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer?
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func PressButton(_ sender: UIButton) {
        playSound(nameSound: sender.currentTitle)
        
    }
    
    func playSound(nameSound: String?) {
        guard let path = Bundle.main.path(forResource: nameSound, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
       }
        
    }
    
    
    
}

