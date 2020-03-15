//
//  normalCell.swift
//  Mebook
//
//  Created by Nguyễn Đức Tân on 3/13/20.
//  Copyright © 2020 Nguyễn Đức Tân. All rights reserved.
//

import UIKit

// Tên class bắt đầu bằng chữ in hoa
class normalCell: UITableViewCell {
    
    // Nên define ID cho cell ở ngay trong file này
    static let normalCellID = "normalCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
