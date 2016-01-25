//
//  ViewController.swift
//  love
//
//  Created by David Fontenot on 1/14/16.
//  Copyright © 2016 David Fontenot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    let CellIdentifier = "com.fontebot.LoveCell"
    
    //data will end up being friends - do it by phone number so we can twilio sms them
    let data = ["Tom Currier", "Ava Huang", "Dani Grant", "Ashley Qian",
        "Kevin Rodengen", "Cole Kushner Bobbity Boopity"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as? LoveCell
        cell!.nameLabel?.text = data[indexPath.row]
        if (indexPath.row % 2 == 0) {
            cell!.backgroundColor = UIColor.redColor()
        } else {
            cell!.backgroundColor = UIColor.magentaColor()
        }

        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        // do something here
        print("Selected \(data[indexPath.row])")
    }


}

