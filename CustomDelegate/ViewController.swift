//
//  ViewController.swift
//  CustomDelegate
//
//  Created by vichhai on 7/3/15.
//  Copyright (c) 2015 kan vichhai. All rights reserved.
//

import UIKit

class ViewController: UIViewController,secodeViewDelegate,WYPopoverControllerDelegate {

    
    @IBOutlet weak var myTableView: UITableView!
    var popoverview = WYPopoverController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonClicked(sender: AnyObject) {
        self.performSegueWithIdentifier("add", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var secode = segue.destinationViewController as! SecodeViewController
        secode.delegate = self
        
        var popOverSegue : WYStoryboardPopoverSegue = segue as! WYStoryboardPopoverSegue
        popoverview =  popOverSegue.popoverControllerWithSender(sender, permittedArrowDirections: WYPopoverArrowDirection.Any, animated: true)
        popoverview.delegate = self
    }

    func shareData(userName: String, password: String) {
        print(userName)
        print(password)
        popoverview.dismissPopoverAnimated(true) 
    }
    
    
    // =-----> WYPopoverControllerDelegate
    
    func popoverControllerShouldDismissPopover(popoverController: WYPopoverController!) -> Bool {
        return true
    }
}

