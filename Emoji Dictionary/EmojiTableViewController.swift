//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Zell Zeller on 2/11/18.
//  Copyright © 2018 Zell Zeller. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😀","💩","🏎", "💒", "🍎", "🥑", "⛪️", "🕍"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Tapped!")
        //shouldPerformSegue(withIdentifier: ourSegue, sender: Any?)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "ourSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiViewController = segue.destination as! EmojiViewController
        emojiViewController.emoji = sender as! String
    }

}
