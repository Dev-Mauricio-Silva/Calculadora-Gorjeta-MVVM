//
//  Double+Extension.swift
//  calculadora-de-gorjeta
//
//  Created by Mauricio Silva on 17/07/23.
//

import Foundation

extension Double {
    var currencyFormatted: String {
        var isWholeNumer: Bool {
            isZero ? true: !isNormal ? false: self == rounded()
        }
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = isWholeNumer ? 0 : 2
        formatter.currencySymbol = "R$"
        return formatter.string(for: self) ?? ""
    }
}
