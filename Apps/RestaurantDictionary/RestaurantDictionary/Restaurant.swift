//
//  Restraunt.swift
//  RestaurantDictionary
//
//  Created by Daiwiik on 06/10/25.
//

import Foundation

struct Restaurant{
    let symbol:String
    let name:String
    let location:String
    let cuisine:String
    let rating:Double
}

var restaurants:[Restaurant] = [
    Restaurant(symbol: "🍽️", name: "Sushi", location: "Tokyo", cuisine: "Japanese", rating: 4.8),
    Restaurant(symbol: "🍷", name: "Wine Bar", location: "Paris", cuisine: "French", rating: 4.7),
    Restaurant(symbol: "🍕", name: "Pizza", location: "New York",
    cuisine: "Italian", rating: 4.6),
    Restaurant(symbol: "🍗", name: "Indo", location: "London", cuisine: "Indian", rating: 4.5),
    Restaurant(symbol: "🍔", name: "Burgers", location: "Berlin", cuisine: "American", rating: 4.4),
    Restaurant(symbol: "🍝", name: "Pasta", location: "Rome", cuisine: "Italian", rating: 4.3),
    Restaurant(symbol: "🍣", name: "Sashimi", location: "Sydney", cuisine: "Japanese", rating: 4.2)
]
