//
//  Extensions.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import Foundation
import SwiftUI

extension Color{
    static let bg=Color("Background")
    static let ic=Color("Icon")
    static let txt=Color("Text")
    static let sysBg=Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        print("Initializing DateFormatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self)
        else { return Date() }

        return parsedDate
    }
}

extension Date: Strideable {
    func formatted()->String{
        return self.formatted(.dateTime.year().month().day())
    }
}

extension Double{
    func roundTo2Digs()->Double{
        return (self*100).rounded()/100
    }
}
