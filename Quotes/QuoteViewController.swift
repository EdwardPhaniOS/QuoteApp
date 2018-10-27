//
//  QuoteViewController.swift
//  Quotes
//
//  Created by Tan Vinh Phan on 10/11/18.
//  Copyright © 2018 PTV. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
    
   
    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var authorsName: UILabel!
    @IBOutlet weak var quoteView: UITextView!
    
    var quote = QuotesData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func nextQuoteDidTap(_ sender: Any) {
        let author = quote.getNextAuthor()
        let nextQuote = quote.getNextQuote()
        let authorImageName = quote.getNextImageName()
        let imageData = UIImage(named: authorImageName)
        
        authorsName.text = author
        quoteView.text = nextQuote
        authorImageView.image = imageData
        
}
    
}

