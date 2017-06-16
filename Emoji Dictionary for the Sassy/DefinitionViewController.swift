//
//  DefinitionViewController.swift
//  Emoji Dictionary for the Sassy
//
//  Created by Joseph Di Pasquale on 2017-06-15.
//  Copyright © 2017 SiteWiz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "😂" {
            definitionLabel.text = "LMAO. This app is a funny waste of my time!"
        }
        if emoji == "🤗" {
            definitionLabel.text = "It's not my fault you downloaded this app..."
        }
        if emoji == "😌" {
            definitionLabel.text = "Developer: This app is too good."
        }
        if emoji == "💁‍♂️" {
            definitionLabel.text = "Can you not assume my gender plz, thx."
        }
        if emoji == "🤑" {
            definitionLabel.text = "This app will make me sooooo richhhhh."
        }
        if emoji == "🤦‍♂️" {
            definitionLabel.text = "Developer: What a waste of my time."
        }
        if emoji == "😎" {
            definitionLabel.text = "What's up? Wanna chill later...?"
        }


        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
