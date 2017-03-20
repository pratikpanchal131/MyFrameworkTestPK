//
//  ViewController.swift
//  MyFrameworkTestPK
//
//  Created by indianic on 20/03/17.
//  Copyright © 2017 pratik. All rights reserved.
//

import UIKit
import PratikFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        PratikFramework.performSegueToFrameworkVC(caller: self)
    }


}


public class PratikFramework {
    
    public static func performSegueToFrameworkVC(caller: UIViewController) {
        
        let podBundle = Bundle(for: FrameworkVC.self)
        let bundleURL = podBundle.url(forResource: "PratikFramework", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        caller.present(vc, animated: true, completion: nil)
    }
}
