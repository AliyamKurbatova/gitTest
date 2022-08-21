//
//  ViewController.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 7/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var profileView: ProfileView = {
        let profileView = ProfileView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.backgroundColor = .systemYellow
        return profileView
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .systemYellow
        self.navigationItem.title = "PROFILES"
        self.navigationController?.navigationBar.barTintColor = .systemYellow
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
                self.navigationController?.navigationBar.tintColor = UIColor.white
        self.view.addSubview(self.profileView)
        
        let profileViewTopConstraint = self.profileView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40)
        let profileViewLeftConstraint = self.profileView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0)
        let profileViewRightConstraint = self.profileView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0)
        let profileViewHeightConstraint = self.profileView.heightAnchor.constraint(equalToConstant: self.view.frame.size.height - 80)
        NSLayoutConstraint.activate([profileViewTopConstraint, profileViewLeftConstraint, profileViewRightConstraint, profileViewHeightConstraint])

    }

}
