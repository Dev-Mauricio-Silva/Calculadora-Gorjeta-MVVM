//
//  UIResponder+extension.swift
//  calculadora-de-gorjeta
//
//  Created by Mauricio Silva on 16/07/23.
//

import UIKit

extension UIResponder {
    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }
}
