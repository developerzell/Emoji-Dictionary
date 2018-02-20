//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Zell Zeller on 2/19/18.
//  Copyright © 2018 Zell Zeller. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji:Emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Birth Year: \(emoji.releaseYear)"
        categoryLabel.text = "Category: \(emoji.category)"
    }
    
    
}
