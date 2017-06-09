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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
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


}

