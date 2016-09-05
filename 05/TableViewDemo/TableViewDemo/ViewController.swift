//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Amir Azimi on 21/02/2015.
//  Copyright (c) 2015 Parsclick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let programmingLanguages = [
        ("Swift","apple.com"),
        ("PHP","php.net"),
        ("HTML","w3c.org"),
        ("CSS","w3c.org"),
        ("JavaScript","w3c.org"),
        ("Python","python.org"),
        ("Ruby","ruby-lang.org"),
        ("Java","java.com"),
        (".NET","asp.net"),
        ("Perl","perl.org") ]
    
    let parsclick = [
        ("HTML","www.parsclick.net"),
        ("CSS","www.parsclick.net"),
        ("PHP","www.parsclick.net"),
        ("Java","www.parsclick.net"),
        ("Swift","www.parsclick.net"),
        ("Python","www.parsclick.net"),
        ("JavaScript","www.parsclick.net"),
        ("WordPress","www.parsclick.net"),
        ("Joomla","www.parsclick.net"),
        ("MySQL","www.parsclick.net") ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return programmingLanguages.count
        } else {
            return parsclick.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        if indexPath.section == 0 {
            let (language, website) = programmingLanguages[indexPath.row]
            cell.textLabel?.text = language
            cell.detailTextLabel?.text = website
        } else {
            let (language, website) = parsclick[indexPath.row]
            cell.textLabel?.text = language
            cell.detailTextLabel?.text = website
        }
        
        // Retrieve an image
        var myImage = UIImage(named: "CellIcon")
        cell.imageView?.image = myImage
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Programming Languages"
        } else {
            return "Parsclick.net Courses"
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


}

