//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Zell Zeller on 2/19/18.
//  Copyright © 2018 Zell Zeller. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        if emoji == "🥑" {
            emojiDefinitionLabel.text = "A nice ripe Avacado"
        } else if emoji == "⛪️" {
            emojiDefinitionLabel.text = "A church with stained glass"
        } else if emoji == "😀" {
            emojiDefinitionLabel.text = "A happy smiling face"
        }
    }
    
    
}
