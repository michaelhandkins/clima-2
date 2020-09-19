//
//  WeatherData.swift
//
//  Created by Michael Handkins on 9/16/20.
//

import Foundation

struct WeatherData: Codable {
    
    let name: String
    let main: Main
    let weather: [Weather]
    
}

struct Main: Codable {
    
    let temp: Double
    
}

struct Weather: Codable {
    
    let description: String
    let id: Int
    
}
