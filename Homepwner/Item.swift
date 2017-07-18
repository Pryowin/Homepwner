//
//  Item.swift
//  Homepwner
//
//  Created by David Burke on 7/10/17.
//  Copyright © 2017 amberfire. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    var dateCreated: Date
    
    init(name: String, serialNumber: String?, valueInDollars: Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
//        let dateFmt = ISO8601DateFormatter()
//        self.dateCreated = dateFmt.date(from: "1963-11-22T10:44:00+0000")!
//        
        super.init()
    }
    
    convenience init(random: Bool = false){
        if random {
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerial = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName,
                serialNumber: randomSerial,
                valueInDollars: randomValue)
        } else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
        
    }

}
    
