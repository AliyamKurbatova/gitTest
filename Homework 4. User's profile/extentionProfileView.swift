//
//  extentionProfileView.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 24.07.2022.
//

import Foundation
import UIKit

extension ProfileView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
            else {
                return UITableViewCell()
            }

            cell.nameLabel.text = "Name: " + users[indexPath.section].name
            cell.userImageView.image = users[indexPath.section].avatar

            return cell
        }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
   }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc:DetailedViewController = DetailedViewController()
        vc.user = users[indexPath.section]
        vc.delegate = self.parentViewController as? ViewController
        self.parentViewController?.navigationController?.pushViewController(vc, animated: true)
        
    }


}
    
