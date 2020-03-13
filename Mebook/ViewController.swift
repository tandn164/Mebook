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
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AvatarCell", for: indexPath) as? AvatarCell {
        return cell
        }
        else {
            return UITableViewCell()
        }
    }
    


}

