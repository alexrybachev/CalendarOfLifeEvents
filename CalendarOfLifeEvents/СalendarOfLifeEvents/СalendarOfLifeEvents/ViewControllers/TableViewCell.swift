//
//  TableViewCell.swift
//  СalendarOfLifeEvents
//
//  Created by Pavel Metelin on 3/31/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var qtyLabel: UILabel!
    @IBOutlet var lastLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        titleLabel.textColor = UIColor(red: 172/255, green: 181/255, blue: 197/255, alpha: 1)
        amountLabel.textColor = UIColor(red: 231/255, green: 120/255, blue: 150/255, alpha: 1)
        qtyLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        lastLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
