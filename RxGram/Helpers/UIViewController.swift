//
//  UIViewController.swift
//  RxGram
//
//  Created by MACHADO KEVIN on 21/01/2019.
//  Copyright © 2019 Kevin Machado. All rights reserved.
//

import UIKit

extension UIViewController {
    public static var storyboardIdentifier: String {
        return self.description().components(separatedBy: ".").dropFirst().joined(separator: ".")
    }
}
