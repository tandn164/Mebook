//
//  ViewController.swift
//  Mebook
//
//  Created by Nguyễn Đức Tân on 3/13/20.
//  Copyright © 2020 Nguyễn Đức Tân. All rights reserved.
//

import UIKit

enum SectionType: Int {
    case avatar
    case normalSelection
    case favorites
    case setting
    case logout
}

class MebookViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    private func setupTableView(){
        tableView.register(UINib(nibName: AvatarCell.avatarCellID, bundle: nil), forCellReuseIdentifier: AvatarCell.avatarCellID)
        tableView.register(UINib(nibName: NormalCell.normalCellID, bundle: nil), forCellReuseIdentifier: NormalCell.normalCellID)
        tableView.register(UINib(nibName: LogoutCell.logoutCellID, bundle: nil), forCellReuseIdentifier: LogoutCell.logoutCellID)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // do ở cái Favorites có header nên em không gộp được thành 3 section mà phải tách ra 5 section ạ
        if let _section = SectionType(rawValue: section)
        {
            switch _section {
            case .avatar:
                return 1
            case .normalSelection:
                return 7
            case .favorites:
                return 1
            case .setting:
                return 3
            case .logout:
                return 1 
            }
        }
        else{
            return 0
        }
        //P/S: Em vừa check thử trong code mẫu người ta cũng phải chia ra 5 section ạ
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: AvatarCell.avatarCellID, for: indexPath) as? AvatarCell {
                cell.viewProf.text = NSLocalizedString("view your profile", comment: "")
                return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: NormalCell.normalCellID, for: indexPath) as? NormalCell {
                switch indexPath.row {
                case 0:
                    cell.imageView?.image=UIImage(systemName: "person.2.fill")
                    cell.textLabel?.text=NSLocalizedString("friends", comment: "")
                case 1:
                    cell.imageView?.image = UIImage(systemName: "calendar")
                    cell.textLabel?.text = NSLocalizedString("events", comment: "")
                case 2:
                    cell.imageView?.image = UIImage(systemName: "person.circle.fill")
                    cell.textLabel?.text = NSLocalizedString("groups", comment: "")
                case 3:
                    cell.imageView?.image = UIImage(systemName: "book.fill")
                    cell.textLabel?.text = NSLocalizedString("photo", comment: "")
                case 4:
                    cell.imageView?.image = UIImage(systemName: "house.fill")
                    cell.textLabel?.text = NSLocalizedString("town hall", comment: "")
                case 5:
                    cell.imageView?.image = UIImage(systemName: "gamecontroller.fill")
                    cell.textLabel?.text = NSLocalizedString("instant games", comment: "")
                case 6:
                    cell.textLabel?.text=NSLocalizedString("see more", comment: "")
                    cell.imageView?.image = UIImage()
                    cell.accessoryType = .none
                    cell.textLabel?.textColor=UIColor(named: "mauheader")
                default:
                    break
                }
            return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: NormalCell.normalCellID, for: indexPath) as? NormalCell {
                //em chưa tạo file localize string, tối nay em sẽ nghiên cứu để chuyển ngôn ngữ của toàn bộ app luôn ạ
                cell.textLabel?.text = NSLocalizedString("add favorites", comment: "")
                cell.imageView?.image = UIImage()
                cell.accessoryType = .none
                cell.textLabel?.textColor=UIColor(named: "mauheader")
            return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: NormalCell.normalCellID, for: indexPath) as? NormalCell {
                switch indexPath.row {
                case 0:
                    cell.imageView?.image = UIImage(systemName: "gear")
                    cell.textLabel?.text = NSLocalizedString("setting", comment: "")
                case 1:
                    cell.imageView?.image = UIImage(systemName: "lock.fill")
                    cell.textLabel?.text = NSLocalizedString("privacy shortcuts", comment: "")
                case 2:
                    cell.imageView?.image = UIImage(systemName: "questionmark")
                    cell.textLabel?.text = NSLocalizedString("help and support", comment: "")
                default:
                    break
                }
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: LogoutCell.logoutCellID, for: indexPath) as? LogoutCell{
                cell.logOut.text = NSLocalizedString("log out", comment: "")
                return cell
            }
        default:
            break
        }
        return UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return CustomSection().setViewForHeaderInSection(section)
        
    }
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return CustomSection().setViewForFooterInSection(section)
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        CustomSection().setHeightForHeaderInSection(section)
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        CustomSection().setHeightForFooterInSection(section)
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)    
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
}
