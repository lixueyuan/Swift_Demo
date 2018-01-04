//
//  ViewController.swift
//  SwiftProject
//
//  Created by sTagRD on 2018/1/2.
//  Copyright © 2018年 stag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var centerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newAction(_ sender: Any) {
        print("dian jile ")
        self.centerButton.isSelected = !self.centerButton.isSelected
        if self.centerButton.isSelected {
            let firstVc = SecondViewController()
            self.navigationController?.pushViewController(firstVc, animated: true)
//            present(firstVc, animated: true, completion: nil)
            
        }
    }
    
}

