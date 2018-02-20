//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Zell Zeller on 2/20/18.
//  Copyright © 2018 Zell Zeller. All rights reserved.
//

import Foundation

class Emoji {
    var theEmoji:String = ""
    var def:String = ""
    var releaseYear:Int = 0
    var category:String = ""
    
    init() {}
    
    init(theEmoji: String, def: String, releaseYear: Int, category: String)
    {
        self.theEmoji = theEmoji
        self.def = def
        self.releaseYear = releaseYear
        self.category = category
    }
    
}
