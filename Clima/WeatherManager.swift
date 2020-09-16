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
                    self.parseJSON(weatherData: safeData)
                }
            }
            
            task.resume()
        }
        
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name)
            print(decodedData.main.temp)
            print(decodedData.weather[0].description)
            let id = decodedData.weather[0].id
            print(self.getConditionName(weatherId: id))
        } catch {
            print(error)
        }
        
    }
    
    func getConditionName(weatherId: Int) -> String {
     
        switch weatherId {
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
