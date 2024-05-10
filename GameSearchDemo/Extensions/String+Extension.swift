//
//  String+Extension.swift
//  GameSearchDemo
//
//  Created by Eric Negron on 5/7/24.
//

import Foundation


extension String {
    
    // Date Formatting
    func formattedDate() -> Self {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: self)
        
        dateFormatter.dateFormat = "MMMM d, yyyy"
        let formattedDateString = dateFormatter.string(from: date!)
        
        return formattedDateString
        
    }
    
}
