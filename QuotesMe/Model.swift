//
//  Model.swift
//  QuotesMe
//
//  Created by Harry Ng on 01/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class Quotes {
    
    var quotesArray = [
        "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
        "No matter how small you start, start something that matters.",
        "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."
    ]
    
    var authorArray = ["Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"]
    
    var authorImageArray = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    
    var currentIndex = 0
    
    
    func nextQuotes() -> String {
        if  currentIndex == (quotesArray.count - 1) {
            currentIndex = 0
        } else  {
            currentIndex += 1
        }
        let quotes = quotesArray[currentIndex]
        return quotes
    }
    
    func nextAuthorImage() -> String {
        let authorImage = authorImageArray[currentIndex]
        return authorImage
    }
    
    func nextAuthor() -> String {
        let author = authorArray[currentIndex]
        return author
    }
    
}
