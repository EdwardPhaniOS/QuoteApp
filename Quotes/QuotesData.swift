//
//  QuotesData.swift
//  Quotes
//
//  Created by Tan Vinh Phan on 10/10/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import Foundation

class QuotesData {
    var authors: [String] = []
    var quotes: [String] = []
    var imagesName: [String] = []
    
    init() {
        authors = ["Steve Job","Brendon Burchard", "Theodor Roosevelt"]
        quotes = ["If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long.Just figure out what’s next.", "No matter how small you start, start something that matters.", "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves ina worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
        imagesName = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    }
    
    
    var currentIndex: Int = -1
    func getNextAuthor() -> String {
        return authors[getNextIndex()]
    }
    
    func getNextQuote() -> String {
        return quotes[currentIndex]
    }
    
    func getNextImageName() -> String {
        return imagesName[currentIndex]
    }
    
    func getNextIndex() -> Int {
    
        if  currentIndex < authors.count - 1 {
            currentIndex += 1
        } else {
            currentIndex = 0
    }
        return currentIndex
}
}
