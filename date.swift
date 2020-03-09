//
//  date.swift
//  CodeApp
//
//  Created by Palash Kanwar on 3/8/20.
//  Copyright © 2020 CirclePay. All rights reserved.
//

import Foundation
import UIKit

class Date{
    var month: String?
    var day: String?
    var year: String?
    
    init?(month: String, day: String, year: String) {
        
        guard !month.isEmpty || !day.isEmpty || !year.isEmpty else{
            return nil
        }
        
        self.month = month
        self.day = day
        self.year = year
    }
}
