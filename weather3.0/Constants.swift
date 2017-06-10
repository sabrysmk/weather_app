//
//  Constants.swift
//  weather3.0
//
//  Created by Александр Сабри on 10.06.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LAT = "lat=55.7522200"
let LON = "&lon=37.6155600"
let APP_ID = "&appid="
let APP_KEY = "cd3672bb6308472eafbd0edaa268ee23"

typealias DownloadComplete = () -> ()

let CURENT_URL = "\(BASE_URL)\(LAT)\(LON)\(APP_ID)\(APP_KEY)"
