//
//  CustomSection.swift
//  Mebook
//
//  Created by Nguyễn Đức Tân on 3/16/20.
//  Copyright © 2020 Nguyễn Đức Tân. All rights reserved.
//

import UIKit
class CustomSection {
   func setViewForHeaderInSection(_ section: Int) -> UIView? {
        if section == 2{
            let label = UILabel()
            label.text = "\tFAVORITES"
            label.textColor = UIColor.lightGray
            label.backgroundColor = UIColor(named: "maunen")
            return label
        }
        let view = UIView()
        view.backgroundColor = UIColor(named: "maunen")
        return view
        
    }
    func setViewForFooterInSection(_ section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(named: "maunen")
        return view
    }
    func setHeightForHeaderInSection(_ section: Int) -> CGFloat {
        switch section {
        case 0,1:
            return 50
        case 2:
            return 30
        case 3,4:
            return 48
        default:
            return 0
        }
    }
    func setHeightForFooterInSection(_ section: Int) -> CGFloat {
        if section == 1
        {
            return 30
        }
        return 0
    }
}
