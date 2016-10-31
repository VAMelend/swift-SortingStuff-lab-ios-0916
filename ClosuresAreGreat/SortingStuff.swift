//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    mutating func sortShips() {
        ships = ships.sorted{ (first, second) -> Bool in
            if first.age > second.age {
                return true
            }
            else {
                return false
            }
        }
            for (index, ship) in ships.enumerated(){
                if ship.name == "Titanic" {
                    ships.remove(at: index)
                    ships.insert(ship, at: 0)
                }
            }
        }
    
    
    mutating func sortBooks() {
        books = books.sorted {($0.name < $1.name)}
    }
    
    
    mutating func sortBowlingPins(){bowlingPins = bowlingPins.sorted(){
        
        ($0.color.rawValue < $1.color.rawValue)}
        
    }
    
    
    mutating func sortMusicCDs() { musicCDs = musicCDs.sorted(){($0.name < $1.name)}
        for (index, cd) in musicCDs.enumerated(){
            if cd.name == "Drake" {
                musicCDs.remove(at: index)
                musicCDs.insert(cd, at: 0)
            }
        }
    }
    
        
        mutating func changeColorOfAllPins(to color: Color) { bowlingPins = bowlingPins.map {
            var currentPin = $0
            currentPin.changeColor(to: color)
            return currentPin
            
            }
        }
    }




//        Implement this function by calling the map function on our bowlingPins stored property. This function call will return back a new array (of the same type of the function thats calling it) which means it will return back a [BowlingPin] array.
//        When you call on map, it requires that you pass in a closure as an argument. You should look to call on changeColor(to:) (a function available to any instance of BowlingPin) within your implementation of the closure.
//        The return value on your map method call should be assigned to the bowlingPins stored property (thus mutating it!).


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
