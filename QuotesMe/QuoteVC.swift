//
//  QuoteVC.swift
//  QuotesMe
//
//  Created by Harry Ng on 01/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class QuoteVC: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var inpireMeButton: UIButton!
    
    var myQuotes = Quotes()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inpireMeButton.layer.cornerRadius = 5
        inpireMeButton.clipsToBounds = true
        
    }

    @IBAction func inpireMeButtonTapped(_ sender: Any) {
        updateQuotes()
    }
    
    
    
    func updateQuotes() {
        
        let quote = myQuotes.nextQuotes()
        let author = myQuotes.nextAuthor()
        let authorImg = myQuotes.nextAuthorImage()
        let image = UIImage(named: authorImg)
        
        quoteLabel.text = quote
        authorName.text = author
        authorImage.image = image
    }
}

