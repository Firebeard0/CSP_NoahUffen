//
//  BucketItemCell.swift
//  CSP_NoahUffens
//
//  Created by Uffens, Noah on 1/9/18.
//  Copyright © 2018 Uffens, Noah. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell {

        var bucketItem : BucketItem!
        {
            didSet
            {
                updateCellView()
            }
        }
    
    
    @IBOutlet weak var bucketItemText : UILabel!
    @IBOutlet weak var bucketItemSymbol : UILabel!
    @IBOutlet weak var bucketItemSignature : UILabel!
    
    private func randomEmoji() -> String
    
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        let symbolStart = 0x1F6C5
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
    
    private func updateCellView()
    {
     if (bucketItem != nil)
     {
        bucketItemSignature.text = bucketItem.itemAuthor
        bucketItemText.text = bucketItem.itsContents
    }
        else
     {
       bucketItemSignature.text = "Author Goes Here"
        bucketItemText.text = "Text Goes Here"
    }
        
        bucketItemSymbol.text = randomEmoji()
}
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
