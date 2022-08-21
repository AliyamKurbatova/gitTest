//
//  DetailedProfileView.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 26.07.2022.
//

import Foundation
import UIKit

protocol ProfileViewDelegate: AnyObject {
    
    func didTapCopyButton()
    
    func didTapChangeButton()
}

class DetailedProfileView: UIView {
    
    private var fullData: Bool = false
    
    private lazy var userLabel: UILabel = { () -> UILabel in
        let label = UILabel()
        label.textAlignment = .center
        label.text = "User's personal information"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        
        return label
    }()
    
    private lazy var userImageView: UIImageView = { () -> UIImageView in
        let userImage = UIImage()
        let imageView = UIImageView(image: userImage)
        imageView.layer.cornerRadius = 150 / 2
        imageView.clipsToBounds = true
        
        return imageView
    } ()
    
    private lazy var nameLabel: UILabel = { () -> UILabel in
        let label = UILabel()
        label.textAlignment = .left
        label.font = .italicSystemFont(ofSize: 14)
        label.textColor = .black
        
        return label
    } ()
    
    
    private lazy var positionLabel: UILabel = { () -> UILabel in
        let label = UILabel()
        label.textAlignment = .left
        label.font = .italicSystemFont(ofSize: 14)
        label.textColor = .black
        
        return label
    } ()
    
    private lazy var addressLabel: UILabel = { () -> UILabel in
        let label = UILabel()
        label.textAlignment = .left
        label.font = .italicSystemFont(ofSize: 14)
        label.textColor = .black
        
        return label
    } ()
    
    private lazy var copyButton: UIButton = {
        let image = UIImage(systemName: "square.fill.on.square.fill")
        let button = UIButton ()
        button.setBackgroundImage(image, for: .normal)
        button.setTitle(addressLabel.text, for: .highlighted)
        button.setTitleColor(UIColor.clear, for: .highlighted)
        button.addTarget(self, action:#selector(self.didTapCopyButton), for: .touchUpInside)
        
        return button
    } ()
    
    private lazy var changeButton: UIButton = {
        let button = UIButton ()
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        button.backgroundColor = .systemBlue
        button.setTitle("Показать все данные", for: .normal)
        button.setTitleColor(.systemGray, for: .highlighted)
        button.addTarget(self, action: #selector(self.didTapChangeButton), for: .touchUpInside)
        
        return button
    } ()
   
    weak var delegate: ProfileViewDelegate?
    
    override init (frame:CGRect) {
        super.init(frame:frame)
        self.addSubview(self.userLabel)
        self.userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let userLabelTopViewConstraint = self.userLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30)
        let userLabelLeftViewConstraint = self.userLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15)
        let userLabelRightViewCinstraint = self.userLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        
        self.addSubview(self.userImageView)
        self.userImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let userImageTopViewConstraint = self.userImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 70)
        let userImageLeftViewConstraint = self.userImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15)
        let userImageHeightViewConstraint = self.userImageView.heightAnchor.constraint(equalToConstant: 150)
        let userImageWidthViewConstraint = self.userImageView.widthAnchor.constraint(equalToConstant: 150)
                    
        self.addSubview(self.nameLabel)
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let nameLabelTopViewConstraint = self.nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100)
        let nameLabelLeftViewConstraint = self.nameLabel.leftAnchor.constraint(equalTo: self.userImageView.rightAnchor, constant: 15)
        let nameLabelRightViewConstraint =  self.nameLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        
        self.addSubview(self.positionLabel)
        self.positionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let positionLabelTopViewConstraint = self.positionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 130)
        let positionLabelLeftViewConstraint = self.positionLabel.leftAnchor.constraint(equalTo: self.userImageView.rightAnchor, constant: 15)
        let positionLabelRightViewConstraint =  self.positionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
                
        self.addSubview(self.addressLabel)
        self.addressLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let addressLabelTopViewConstraint = self.addressLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 160)
        let addressLabelLeftViewConstraint = self.addressLabel.leftAnchor.constraint(equalTo: self.userImageView.rightAnchor, constant: 15)
        let addressLabelRightViewConstraint = self.addressLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -65)
                
        self.addSubview(self.copyButton)
        self.copyButton.translatesAutoresizingMaskIntoConstraints = false
        
        let copyButtonLeftViewConstraint = self.copyButton.leftAnchor.constraint(equalTo: self.addressLabel.rightAnchor, constant: 15)
        let copyButtonTopViewConstraint = self.copyButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 160)
        let copyButtonWidthViewConstraint = self.copyButton.widthAnchor.constraint(equalToConstant: 22)
                
        self.addSubview(self.changeButton)
        self.changeButton.translatesAutoresizingMaskIntoConstraints = false
        
        let changeButtonTopViewConstraint = self.changeButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 250)
        let changeButtonLeftViewConstraint = self.changeButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20)

        let changeButtonRightViewConstraint = self.changeButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20)
        let changeButtonHeightViewConstraint = self.changeButton.heightAnchor.constraint(equalToConstant: 50)
        
        NSLayoutConstraint.activate([userLabelTopViewConstraint, userLabelLeftViewConstraint, userLabelRightViewCinstraint, changeButtonTopViewConstraint, userImageTopViewConstraint, userImageLeftViewConstraint , userImageWidthViewConstraint, userImageHeightViewConstraint, nameLabelTopViewConstraint, nameLabelLeftViewConstraint, nameLabelRightViewConstraint, positionLabelTopViewConstraint, positionLabelLeftViewConstraint, positionLabelRightViewConstraint, addressLabelTopViewConstraint, addressLabelLeftViewConstraint, addressLabelRightViewConstraint, copyButtonLeftViewConstraint, copyButtonTopViewConstraint, copyButtonWidthViewConstraint, changeButtonLeftViewConstraint,changeButtonRightViewConstraint, changeButtonHeightViewConstraint])
        
        reloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func reloadData () {
        if !fullData {
            changeButton.setTitle("Показать все данные", for: .normal)
            nameLabel.text = "Name: " + ((self.parentViewController as? DetailedViewController)?.user.name ?? "")
            userImageView.image = ((self.parentViewController as? DetailedViewController)?.user.avatar ?? nil)
            positionLabel.isHidden = true
            addressLabel.isHidden = true
            copyButton.isHidden = true
        }
        else
        {
            changeButton.setTitle("Cкрыть все данные", for: .normal)
            nameLabel.text = "Name: " + ((self.parentViewController as? DetailedViewController)?.user.fullname ?? "")
            userImageView.image = ((self.parentViewController as? DetailedViewController)?.user.avatar ?? nil)
            positionLabel.text = "Position: " + ((self.parentViewController as? DetailedViewController)?.user.position ?? "")
            addressLabel.text = "Address: "  + ((self.parentViewController as? DetailedViewController)?.user.address ?? "")
            positionLabel.isHidden = false
            addressLabel.isHidden = false
            copyButton.isHidden = false
        }
    }
    @objc private func didTapCopyButton(sender: UIButton) {
        UIPasteboard.general.string = sender.title(for: .highlighted)
    }
    
    @objc private func didTapChangeButton() {
        fullData.toggle()
        reloadData()
    }
}
