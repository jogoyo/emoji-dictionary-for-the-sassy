//
//  ViewController.swift
//  Emoji Dictionary for the Sassy
//
//  Created by Joseph Di Pasquale on 2017-06-15.
//  Copyright © 2017 SiteWiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😂"
        emoji1.releaseYear = 2007
        emoji1.category = "Smileys"
        emoji1.definition = "LMAO. This app is a funny waste of my time!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤗"
        emoji2.releaseYear = 2006
        emoji2.category = "Smileys"
        emoji2.definition = "It's not my fault you downloaded this app..."
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😌"
        emoji3.releaseYear = 2009
        emoji3.category = "Smileys"
        emoji3.definition = "This app is too good."
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💁‍♂️"
        emoji4.releaseYear = 2017
        emoji4.category = "People"
        emoji4.definition = "Can you not assume my gender plz, thx."
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤑"
        emoji5.releaseYear = 2016
        emoji5.category = "Smileys"
        emoji5.definition = "This app will make me sooooo richhhhh."
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤦‍♂️"
        emoji6.releaseYear = 2017
        emoji6.category = "People"
        emoji6.definition = "Is Trump actually president? #MAGA"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😎"
        emoji7.releaseYear = 2008
        emoji7.category = "Smileys"
        emoji7.definition = "What's up? Wanna chill later...?"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

