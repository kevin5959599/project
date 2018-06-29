//
//  DataTableViewCell.swift
//  project
//
//  Created by User23 on 2018/6/29.
//  Copyright © 2018年 User23. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
