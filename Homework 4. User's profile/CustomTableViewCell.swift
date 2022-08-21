//
//  CustomTableViewCell.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 24.07.2022.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    
        private lazy var userLabel: UILabel = { () -> UILabel in
            let label = UILabel()
            label.textAlignment = .center
            label.text = "User's personal information"
            label.font = .boldSystemFont(ofSize: 20)
            label.textColor = .black
    
            return label
        }()
    
         var userImageView: UIImageView = { () -> UIImageView in
            let userImage = UIImage()
            let imageView = UIImageView(image: userImage)
            imageView.layer.cornerRadius = 100 / 2
            imageView.clipsToBounds = true
    
            return imageView
        } ()
    
         var nameLabel: UILabel = { () -> UILabel in
            let label = UILabel()
            label.textAlignment = .left
            label.text = "Name: "
            label.font = .italicSystemFont(ofSize: 14)
            label.textColor = .black
    
            return label
        } ()
    
    private lazy var containerView: UIView = {
        // wrapper to contain all the subviews for the UITableViewCell
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(containerView)
        
        let containerViewTopConstraint = containerView.topAnchor.constraint(equalTo: contentView.topAnchor)
        let containerViewLeadingConstraint = containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        let containerViewTrailingConstraint = containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        let containerViewBottomConstraint = containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        
        containerView.addSubview(userLabel)
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let userLabelTopViewConstraint = userLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10)
        let userLabelLeftViewConstraint = userLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10)
        let userLabelRightViewCinstraint = userLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10)
        
        containerView.addSubview(userImageView)
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let userImageTopViewConstraint = userImageView.topAnchor.constraint(equalTo: userLabel.topAnchor, constant: 25)
        let userImageLeftViewConstraint = userImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10)
        let userImageHeightViewConstraint = userImageView.heightAnchor.constraint(equalToConstant: 100)
        let userImageWidthViewConstraint = userImageView.widthAnchor.constraint(equalToConstant: 100)
        
        containerView.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let nameLabelTopViewConstraint = nameLabel.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 25)
        let nameLabelLeftViewConstraint = nameLabel.leftAnchor.constraint(equalTo: userImageView.rightAnchor, constant: 10)
        let nameLabelRightViewConstraint =  nameLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10)
        
        NSLayoutConstraint.activate([containerViewTopConstraint,
                                     containerViewLeadingConstraint,
                                     containerViewTrailingConstraint,
                                     containerViewBottomConstraint,
                                     userLabelTopViewConstraint,
                                     userLabelLeftViewConstraint,
                                     userLabelRightViewCinstraint,
                                     userImageTopViewConstraint,
                                     userImageLeftViewConstraint ,
                                     userImageWidthViewConstraint,
                                     userImageHeightViewConstraint,
                                     nameLabelTopViewConstraint,
                                     nameLabelLeftViewConstraint,
                                     nameLabelRightViewConstraint
                                    ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCellData(name: String, surname: String, position: String, address: String, avatar: UIImage) {
        nameLabel.text = name
    }
}
