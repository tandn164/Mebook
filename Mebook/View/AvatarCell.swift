//
//  AvatarCell.swift
//  Mebook
//
//  Created by Nguyễn Đức Tân on 3/13/20.
//  Copyright © 2020 Nguyễn Đức Tân. All rights reserved.
//

import UIKit
// Cell hiển thị thông tin cá nhân, cell này có 2 label nên em tạo riêng
class AvatarCell: UITableViewCell {
    
    @IBOutlet weak var viewProf: UILabel!
    static let avatarCellID = "AvatarCell"
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
