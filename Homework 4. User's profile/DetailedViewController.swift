//
//  DetailedViewController.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 26.07.2022.
//

import UIKit

class DetailedViewController: UIViewController {
    
    weak var delegate: ViewController!

    var user: User = User(name: "", surname: "", address: "", position: "", avatar: nil)
    
    private var detailedProfileView: DetailedProfileView {
        let detailedProfileView = DetailedProfileView(frame: CGRect(x: 0, y: 60, width: self.view.frame.size.width, height: self.view.frame.size.height-140))
        detailedProfileView.backgroundColor = .systemYellow
        return detailedProfileView
    }
    
 
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        self.navigationItem.title = "PROFILE"
        self.navigationController?.navigationBar.barTintColor = .systemYellow
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.view.addSubview(self.detailedProfileView)
    }
}
