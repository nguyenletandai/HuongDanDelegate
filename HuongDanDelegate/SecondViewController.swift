//
//  SecondViewController.swift
//  HuongDanDelegate
//
//  Created by daicudu on 11/28/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit
protocol VCFinalDelegate {
    func finishPassing(string: String)

}
class SecondViewController: UIViewController {
    var delegate: VCFinalDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPassDataPressed(_ sender: Any) {
        delegate?.finishPassing(string: "lol")
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
