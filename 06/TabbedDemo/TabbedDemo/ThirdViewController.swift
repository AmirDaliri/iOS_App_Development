//
//  ThirdViewController.swift
//  TabbedDemo
//
//  Created by Amir Azimi on 22/02/2015.
//  Copyright (c) 2015 Parsclick. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        println("viewDidLoad")
    }
    
    override func viewDidAppear(animated: Bool) {
        println("viewDidAppear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
