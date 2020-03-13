//
//  ViewController.swift
//  Mebook
//
//  Created by Nguyễn Đức Tân on 3/13/20.
//  Copyright © 2020 Nguyễn Đức Tân. All rights reserved.
//

import UIKit

class MebookViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "AvatarCell", bundle: nil), forCellReuseIdentifier: "AvatarCell")
        tableView.register(UINib(nibName: "normalCell", bundle: nil), forCellReuseIdentifier: "normalCell")
        tableView.register(UINib(nibName: "Logout", bundle: nil), forCellReuseIdentifier: "LogOut")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0,1,4,5,7:
            return 1
        case 2:
            return 2
        case 3,6:
            return 3
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "AvatarCell", for: indexPath) as? AvatarCell {
            return cell
            }
        case 1:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath) as? normalCell {
                cell.imageView?.image=UIImage(systemName: "person.2.fill")
                cell.textLabel?.text="Friends"
            return cell
            }
        case 2:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath) as? normalCell {
                switch indexPath.row {
                case 0:
                    cell.imageView?.image = UIImage(systemName: "calendar")
                    cell.textLabel?.text = "Events"
                case 1:
                    cell.imageView?.image = UIImage(systemName: "person.circle.fill")
                    cell.textLabel?.text = "Groups"
                default:
                    break
                }
                return cell
            }
        case 3:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath) as? normalCell {
                switch indexPath.row {
                case 0:
                    cell.imageView?.image = UIImage(systemName: "book.fill")
                    cell.textLabel?.text = "CMU"
                case 1:
                    cell.imageView?.image = UIImage(systemName: "house.fill")
                    cell.textLabel?.text = "Town Hall"
                case 2:
                    cell.imageView?.image = UIImage(systemName: "gamecontroller.fill")
                    cell.textLabel?.text = "Instant Games"
                default:
                    break
                }
                return cell
            }
        case 4:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath) as? normalCell {
                cell.textLabel?.text="       See More..."
                cell.imageView?.image = UIImage()
                cell.accessoryType = .none
                cell.textLabel?.textColor=UIColor(named: "mauheader")
            return cell
            }
        case 5:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath) as? normalCell {
                cell.textLabel?.text="       Add Favoites..."
                cell.imageView?.image = UIImage()
                cell.accessoryType = .none
                cell.textLabel?.textColor=UIColor(named: "mauheader")
            return cell
            }
        case 6:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath) as? normalCell {
                switch indexPath.row {
                case 0:
                    cell.imageView?.image = UIImage(systemName: "gear")
                    cell.textLabel?.text = "Setting"
                case 1:
                    cell.imageView?.image = UIImage(systemName: "lock.fill")
                    cell.textLabel?.text = "Privacy Shortcuts"
                case 2:
                    cell.imageView?.image = UIImage(systemName: "questionmark")
                    cell.textLabel?.text = "Help and Support"
                default:
                    break
                }
                return cell
            }
        case 7:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "LogOut", for: indexPath) as? Logout{
            return cell
            }
        default:
            break
        }
        return UITableViewCell()
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 5{
            let label = UILabel()
            label.text = "    FAVORITES"
            label.textColor = UIColor.lightGray
            label.backgroundColor = UIColor(named: "maunen")
            return label
        }
        let view = UIView()
        view.backgroundColor = UIColor(named: "maunen")
        return view
        
    }
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(named: "maunen")
        return view
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0,1:
            return 50
        case 2,3,4:
            return 2
        case 5:
            return 30
        case 6,7:
            return 48
        default:
            return 0
        }
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 4
        {
            return 30
        }
        return 0
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)    
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
}
