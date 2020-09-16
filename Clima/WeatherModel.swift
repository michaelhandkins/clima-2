//
//  WeatherModel.swift
//  Clima
//
//  Created by Michael Handkins on 9/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    var roundedTempString: String {
        return String(Int(temperature))
    }
    
    var conditionSymbol: String {
         
            switch conditionId {
            case 200...232:
                return "cloud.bolt.rain"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.heavyrain"
            case 600...622:
                return "snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
            }
        
    }
    
}
