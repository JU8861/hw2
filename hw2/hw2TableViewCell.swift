//
//  hw2TableViewCell.swift
//  hw2
//
//  Created by NDHU_CSIE on 2020/11/5.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class hw2TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet var name: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var totalpriceLabel: UILabel!
    @IBOutlet var fruit : UIImageView!

}
