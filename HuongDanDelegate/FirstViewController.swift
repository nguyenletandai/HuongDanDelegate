//
//  ViewController.swift
//  HuongDanDelegate
//
//  Created by daicudu on 11/28/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, VCFinalDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnPerformSeguePressed(_ sender: Any) {
        
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController {
            destination.delegate = self
        }
    }
    
    func finishPassing(string: String) {
        print("notified")
        print(string)
    }


}

