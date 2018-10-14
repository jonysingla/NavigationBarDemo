//
//  SecondViewController.swift
//  NavigationBarDemo
//
//  Created by Jony Singla on 29/12/16.
//  Copyright © 2016 Jony Singla. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "back.png"), for: UIControlState.normal)
        button.addTarget(self, action:#selector(goToBackScreen), for: UIControlEvents.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
        
    }
    
    func goToBackScreen() {
        _ = self.navigationController?.popToRootViewController(animated: true)
        //do stuff here
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
