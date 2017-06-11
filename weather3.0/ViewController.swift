//
//  ViewController.swift
//  weather3.0
//
//  Created by Александр Сабри on 09.06.17.
//  Copyright © 2017 sabry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var datelbl: UILabel!
    @IBOutlet weak var templbl: UILabel!
    @IBOutlet weak var citylbl: UILabel!
    @IBOutlet weak var typelbl: UILabel!
    @IBOutlet weak var weatherimage: UIImageView!
    
  
    @IBOutlet weak var tableview: UITableView!
    
    var currentWeather = CurrentWeather()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        
        currentWeather.downloadWeatherDetails {
            //Setup to load UI download data
            self.updateMainUi()
            
            
        }
        
        //print(CURENT_URL)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "weathercell", for: indexPath)
        
        return cell
    }
    
    func updateMainUi() {
        datelbl.text = currentWeather.date
        templbl.text = String(format: "%.0f", currentWeather.currentTemp)
        //templbl.text = "\(currentWeather.currentTemp)"
        typelbl.text = currentWeather.weatherType
        print(typelbl)
        citylbl.text = currentWeather.cityName
        weatherimage.image = UIImage (named: currentWeather.weatherType)
    }


}

