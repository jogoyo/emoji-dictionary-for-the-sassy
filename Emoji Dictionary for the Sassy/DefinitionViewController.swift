//
//  DefinitionViewController.swift
//  Emoji Dictionary for the Sassy
//
//  Created by Joseph Di Pasquale on 2017-06-15.
//  Copyright © 2017 SiteWiz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var releaseyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji.stringEmoji
        releaseyearLabel.text = "Release Year: \(emoji.releaseYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        definitionLabel.text = "\(emoji.definition)"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
