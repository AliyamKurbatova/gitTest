//
//  ProfileView.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 19.07.2022.
//

import UIKit


class ProfileView: UIView {
    
    private var fullData: Bool = false
    
    var users = [User(name: "User 1", surname: "Surname 1", address: "City 1",              position: "Position 1", avatar: UIImage(named: "1.png")),
                 User(name: "User 2", surname: "Surname 2", address: "City 2", position: "Position 2", avatar: UIImage(named: "2.png")),
                 User(name: "User 3", surname: "Surname 3", address: "City 3", position: "Position 3", avatar: UIImage(named: "3.png")),
                 User(name: "User 4", surname: "Surname 4", address: "City 4", position: "Position 4", avatar: UIImage(named: "4.png")),
                 User(name: "User 5", surname: "Surname 5", address: "City 5", position: "Position 5", avatar: UIImage(named: "5.png"))]
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = .systemYellow
           tableView.translatesAutoresizingMaskIntoConstraints = false
           tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        
           return tableView
       }()
       
    override init (frame:CGRect) {
        super.init(frame: frame)
        tableView.delegate = self
        tableView.dataSource = self

        self.addSubview(tableView)
        
        let tableViewTopCostraint = self.tableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20)
        let tableViewLeftConstraint = self.tableView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20)
        let tableViewRightConstraint = self.tableView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        let tableViewBottomConstraint = self.tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        
        
        NSLayoutConstraint.activate([tableViewTopCostraint,
                                     tableViewLeftConstraint,
                                     tableViewRightConstraint,
                                     tableViewBottomConstraint
                                    ])
        
        //eloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
