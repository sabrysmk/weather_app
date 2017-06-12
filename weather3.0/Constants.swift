//
//  Constants.swift
//  weather3.0
//
//  Created by Александр Сабри on 10.06.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let CURRENT = "weather?"
let FORECAST = "forecast/daily?"
let LAT = "lat=55.7522200"
let LON = "&lon=37.6155600"
let APP_ID = "&appid="
let APP_KEY = "cd3672bb6308472eafbd0edaa268ee23"

typealias DownloadComplete = () -> ()

let CURENT_URL = "\(BASE_URL)\(CURRENT)\(LAT)\(LON)\(APP_ID)\(APP_KEY)"
let FORECAST_URL = "\(BASE_URL)\(FORECAST)\(LAT)\(LON)\(APP_ID)\(APP_KEY)"

// api.openweathermap.org/data/2.5/forecast/daily?lat=35&lon=139&cnt=10&appid=b1b15e88fa797225412429c1c50c122a1
