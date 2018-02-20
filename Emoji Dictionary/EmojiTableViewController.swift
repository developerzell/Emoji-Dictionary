//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Zell Zeller on 2/11/18.
//  Copyright © 2018 Zell Zeller. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    //var emojis = ["😀","💩","🏎", "💒", "🍎", "🥑", "⛪️", "🕍"]
    var emojis:[Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis().sorted(by: { (a:Emoji, b:Emoji) -> Bool in
            //return a.category < b.category
            return a.releaseYear < b.releaseYear
        })
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji = emojis[indexPath.row]
        
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.category) - \(emoji.releaseYear)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiViewController = segue.destination as! EmojiViewController
        emojiViewController.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji]
    {
        return [Emoji(theEmoji: "😀", def: "A happy smiling face", releaseYear: 2010, category: "Faces"),
                Emoji(theEmoji: "💩", def: "A poo poo face", releaseYear: 2011, category: "Faces"),
                Emoji(theEmoji: "🏎", def: "A racecar", releaseYear: 2003, category: "Automobiles"),
                Emoji(theEmoji: "💒", def: "A wedding at the church", releaseYear: 2013, category: "Building"),
                Emoji(theEmoji: "🍎", def: "A red delicious apple", releaseYear: 2018, category: "Food"),
                Emoji(theEmoji: "🥑", def: "A nice green avocado", releaseYear: 2018, category: "Food"),
                Emoji(theEmoji: "⛪️", def: "A stained-glass-windowed church", releaseYear: 1595, category: "Building"),
                Emoji(theEmoji: "🕍", def: "A grand mosque for worship", releaseYear: 947, category: "Building")]
    }

}
