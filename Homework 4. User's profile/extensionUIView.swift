//
//  extensionUIView.swift
//  Homework 4. User's profile
//
//  Created by Алиям Курбатова on 27.07.2022.
//

import Foundation
import UIKit

extension UIView {
    var parentViewController: UIViewController? {
            // Starts from next (As we know self is not a UIViewController).
        var parentResponder: UIResponder? = self.next
            while parentResponder != nil {
                if let viewController = parentResponder as? UIViewController {
                    return viewController
                }
                parentResponder = parentResponder?.next
            }
            return nil
        }
}
