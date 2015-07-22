//
//  SecodeViewController.swift
//  CustomDelegate
//
//  Created by vichhai on 7/3/15.
//  Copyright (c) 2015 kan vichhai. All rights reserved.
//

import UIKit

protocol secodeViewDelegate{
    func shareData(userName : String, password : String)
}


class SecodeViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var delegate : secodeViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createBunntonAction(sender: AnyObject) {
        self.delegate?.shareData(userName.text, password: password.text)
        navigationController?.popViewControllerAnimated(true)
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
