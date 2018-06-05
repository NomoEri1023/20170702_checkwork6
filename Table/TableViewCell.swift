//
//  TableViewCell.swift
//  Table
//
//  Created by 野本エリカ on 2018/05/28.
//  Copyright © 2018年 Life is Tech!. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
