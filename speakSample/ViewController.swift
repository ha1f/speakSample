//
//  ViewController.swift
//  speakSample
//
//  Created by はるふ on 2017/03/01.
//  Copyright © 2017年 はるふ. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDelegate {
    
    var talker = AVSpeechSynthesizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        speakJapanese("ゆっこちゃん")
        speakJapanese("寿司食べたい")
        
        speakEnglish("Why don't you change the world")
    }
    
    @IBAction func up() {
    }
    
    func speakJapanese(_ text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        self.talker.speak(utterance)
    }
    
    func speakEnglish(_ text: String) {
        let utterance2 = AVSpeechUtterance(string: text)
        utterance2.voice = AVSpeechSynthesisVoice(language: "en-US")
        self.talker.speak(utterance2)
    }

}


