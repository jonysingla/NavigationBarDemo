//
//  ViewController.swift
//  NavigationBarDemo
//
//  Created by Jony Singla on 29/12/16.
//  Copyright © 2016 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 210.0/255.0, green: 137.0/255.0, blue: 180.0/255.0, alpha: 1.0)
//        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        navigationController?.navigationBar.topItem?.title = "Filter View"
        navigationController?.navigationBar.titleTextAttributes =
            [NSForegroundColorAttributeName: UIColor.white,
             NSFontAttributeName: UIFont(name: "HelveticaNeue", size: 26)!]
        
        // navigation bar title blank
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        
        var backImage: UIImage = UIImage(named: "back")!
        backImage = backImage.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        UINavigationBar.appearance().backIndicatorImage = backImage
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = backImage


        let shadowView = UIView(frame: self.navigationController!.navigationBar.frame)
        shadowView.backgroundColor = UIColor.black
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowColor = UIColor.lightGray.cgColor
        shadowView.layer.shadowOpacity = 1.0
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        shadowView.layer.shadowRadius = 1.0
        view.addSubview(shadowView)
        
    
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
  
    
    @IBAction func secondViewController(_ sender: Any) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "secondVC")as! SecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



