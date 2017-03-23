//
//  ViewController.swift
//  HowTableViewReuseCell
//
//  Created by Trương Thắng on 3/23/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data = Array(1...100)

    var numberOfCell: Int = 0 {
        didSet {
            title = "Số cell: \(numberOfCell)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell")
            numberOfCell += 1
        }
        cell?.textLabel?.text = "\(data[indexPath.row])"
        return cell!
    }
    
    

}

