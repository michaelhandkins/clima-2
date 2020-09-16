//
//  WeatherManager.swift
//  Clima
//
//  Created by Michael Handkins on 9/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?q="
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)" + "\(cityName)" + "&units=imperial&appid=8c5a6f258e6582f6de7e2ba455fd2800"
        performRequest(urlString)
    }
    
    func performRequest(_ urlString: String) {
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            
            task.resume()
        }
        
    }
    
}
