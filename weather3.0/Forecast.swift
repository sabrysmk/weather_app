//
//  Forecast.swift
//  weather3.0
//
//  Created by Александр Сабри on 12.06.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    var _date: String!
    var _weatherType: String!
    var _highTemp: Double!
    var _lowTemp: Double!
    
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherTemp: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: Double {
        if _highTemp == nil {
            _highTemp = 0.0
        }
        return _highTemp
    }
    
    var lowTemp: Double {
        if _lowTemp == nil {
            _lowTemp = 0.0
        }
        return _lowTemp
    }
    
    init (weatherDict: Dictionary<String, AnyObject>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                
                let kelvinToCelcius = min - 273.15
                
                self._lowTemp = kelvinToCelcius
            }
            
            if let max = temp["max"] as? Double {
                
                let kelvinToCelcius = max - 273.15
                
                self._highTemp = kelvinToCelcius
                
            }
            
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary< String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let date = weatherDict["dt"] as? Double {
            
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormater = DateFormatter()
            dateFormater.dateStyle = .full
            dateFormater.dateFormat = "EEEE"
            dateFormater.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
        
    }
    
}

extension Date {
    
    func dayOfTheWeek() -> String {
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE"
        return dateFormater.string(from: self)
    }
    
}
