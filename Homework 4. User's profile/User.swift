//
//  User.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 7/16/22.
//

import Foundation
import UIKit

struct User {
    var name: String
    var surname: String
    var address: String
    var position: String
    var avatar: UIImage?
    var fullname: String {
        return ("\(self.name) \(self.surname)")
    }
}

var users: [User] = [User]()
