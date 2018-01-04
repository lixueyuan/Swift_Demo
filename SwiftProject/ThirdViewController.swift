//
//  ThirdViewController.swift
//  SwiftProject
//
//  Created by sTagRD on 2018/1/2.
//  Copyright © 2018年 stag. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var chuanZhiString = "defulat"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.edgesForExtendedLayout = .init(rawValue: 0)
        self.view.backgroundColor = UIColor.white
        if chuanZhiString == "two" {
            print("I'm third viewController" + chuanZhiString)
        }
        let newButton:UIButton = UIButton(frame: CGRect(x: 0, y: 20, width: 50, height: 50))
        newButton.backgroundColor = UIColor.blue
        newButton.setTitle("点我", for: .normal)
        newButton.addTarget(self, action: #selector(newButtonAction), for: .touchUpInside)
        self.view.addSubview(newButton)
    }
    
    @objc func newButtonAction() {
        print("select new button")
    }

    @objc func buttonAction() -> Void {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
