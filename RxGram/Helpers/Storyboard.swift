//
//  Storyboard.swift
//  RxGram
//
//  Created by MACHADO KEVIN on 21/01/2019.
//  Copyright © 2019 Kevin Machado. All rights reserved.
//

import UIKit

public enum Storyboard: String {
    case Main
    case Explore
    
    public func instantiate<T: UIViewController>(_ viewController: T.Type) -> T {
        
        let storyboard = UIStoryboard(name: self.rawValue, bundle: nil)
        guard
            let viewController = storyboard.instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T
            else { fatalError("Couldn't instantiate \(T.storyboardIdentifier) from \(self.rawValue)") }
        
        return viewController
    }
}
