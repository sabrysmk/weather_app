//
//  CurrentWeather.swift
//  weather3.0
//
//  Created by Александр Сабри on 10.06.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import UIKit
import Alamofire

class CurrrentWeather {
    var _cityname: String!
    var _date: String!
    var _weathertype: String!
    var _currenttemp: Double!
    
    var cityname: String {
        if _cityname == nil {
            _cityname = ""
        }
        return _cityname
    }
    
    var date: String {
        if _date == nil{
            _date = ""
        }
        
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .long
        dateFormater.timeStyle = .none
        let currentDate = dateFormater.string(from: Date())
        self._date = "Today \(currentDate)"
        return _date
    }
    
    var weathertype: String {
        if _weathertype == nil {
            _weathertype = ""
        }
        return _weathertype
    }
    
    var currenttemp: Double {
        if _currenttemp == nil {
            _currenttemp = 0.0
        }
        return _currenttemp
    }

    func downloadWeatherDetails(completed: DownloadComplete) {
        
        let currentWeatherUrl = URL(string: CURENT_URL)!
        Alamofire.request(currentWeatherUrl).responseJSON { response in
            let result = response.result
            
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                
                if let name = dict["name"] as? String {
                    self._cityname = name.capitalized
                    print(self._cityname)
                }
                
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String {
                        self._weathertype = main.capitalized
                        print(self._weathertype)
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    
                    if let currenttemp = main["temp"] as? Double {
                        
                        let KalvinToCelciusPredevision = (currenttemp * (9/5) - 495.67)
                        
                        let KalvinToCelcius = Double(round(10 * KalvinToCelciusPredevision/10))
                        
                        self._currenttemp = KalvinToCelcius
                        print(self._currenttemp)
                    }
                }
            }
        }
        completed()
    }
    
    
}

