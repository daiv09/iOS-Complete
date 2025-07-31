//
//  TransModel.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import Foundation
import SwiftUIFontIcon

struct Trans: Identifiable, Decodable, Hashable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    var merchant: String
    let amount: Double
    let type: TransType.RawValue
    var categoryId: Int
    var category: String
    let isPending: Bool
    var isTransfer: Bool
    var isExpense: Bool
    var isEdited: Bool
    
    var icon: FontAwesomeCode{
        if let category=Category.all.first(where: {$0.id==categoryId}) {
            return category.icon
        }
        
        return .question
    }
    
    var DateParsed: Date{
        date.dateParsed()
    }
    
    var signedAmt: Double{
        return type == TransType.credit.rawValue ? amount: -amount
    }
    
    var month: String{
        DateParsed.formatted(.dateTime.year().month(.wide))
    }
}

enum TransType: String{
    case credit="credit"
    case debit="debit"
}

struct Category{
    let id:Int
    let name:String
    let icon:FontAwesomeCode
    var mainCategoryId:Int?
}

extension Category{
    static let autoTransport=Category(id:1,name:"Auto & Transport",icon: .car_alt)
    static let billsAndUtil=Category(id:2,name:"Bills & Utilities",icon: .file_invoice_dollar)
    static let enter=Category(id:3,name:"Entertainment",icon: .film)
    static let feesAndCharges=Category(id:4,name:"Fees & Charges",icon: .hand_holding_usd)
    static let foodAndDining=Category(id:5,name:"Food & Dining",icon: .hamburger)
    static let home=Category(id:6,name:"Home",icon: .home)
    static let income=Category(id:7,name:"Income",icon: .rupee_sign)
    static let shop=Category(id:8,name:"Shopping",icon: .shopping_cart)
    static let transfer=Category(id:9,name:"Fees & Charges",icon: .hand_holding_usd)
    
    static let pubTrans=Category(id:101,name:"Public Transportation",icon: .bus, mainCategoryId: 1)
    static let taxi=Category(id:102,name:"Taxi",icon: .taxi, mainCategoryId: 1)
    static let mobilePhone=Category(id:201,name:"Mobile Phone",icon: .mobile_alt, mainCategoryId: 2)
    static let moviesAndDVDs=Category(id:301,name:"Movie & DVDs",icon: .film, mainCategoryId: 3)
    static let bankFee=Category(id:401,name:"Bank Fee",icon: .hand_holding_usd, mainCategoryId: 4)
    static let finCharge=Category(id:402,name:"Finance Charge",icon: .hand_holding_usd, mainCategoryId: 4)
    static let groceries=Category(id:501,name:"Groceries",icon: .shopping_basket, mainCategoryId: 5)
    static let rest=Category(id:502,name:"Restaurants",icon: .utensils, mainCategoryId: 5)
    static let rent=Category(id:601,name:"Rent",icon: .home, mainCategoryId: 6)
    static let homeSupp=Category(id:602,name:"Home Supplies",icon: .home, mainCategoryId: 6)
    static let payCheq=Category(id:701,name:"Paycheq",icon: .file_invoice_dollar, mainCategoryId: 7)
    static let software=Category(id:801,name:"Software",icon: .laptop, mainCategoryId: 8)
    static let creditCardPay=Category(id:901,name:"Credit Card Payment",icon: .credit_card, mainCategoryId: 9)
    
    
}

extension Category{
    static let categories: [Category]=[
        .autoTransport,
        .billsAndUtil,
        .enter,
        .home,
        .shop,
        .income,
        .transfer,
        .foodAndDining,
        .feesAndCharges
    ]
    
    static let subCategories: [Category]=[
        .pubTrans,
        .taxi,
        .mobilePhone,
        .bankFee,
        .finCharge,
        .groceries,
        .rest,
        .rent,
        .homeSupp,
        .payCheq,
        .software,
        .creditCardPay
    ]
    
    static let all: [Category]=categories+subCategories
}

