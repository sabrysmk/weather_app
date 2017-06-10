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
    var _weathetype: String!
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
        if _weathetype == nil {
            _weathetype = ""
        }
        return _weathetype
    }
    
    var currenttemp: Double {
        if _currenttemp == nil {
            _currenttemp = 0.0
        }
        return _currenttemp
    }
    
    
}

