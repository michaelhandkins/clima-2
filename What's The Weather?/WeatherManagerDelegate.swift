//
//  WeatherManagerDelegate.swift
//
//  Created by Michael Handkins on 9/16/20.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    
    func didFailWithError(_ weatherManager: WeatherManager, error: Error)
}
