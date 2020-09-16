//
//  WeatherManager.swift
//  Clima
//
//  Created by Michael Handkins on 9/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?q="
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)" + "\(cityName)" + "&units=imperial&appid=8c5a6f258e6582f6de7e2ba455fd2800"
    }
    
}
