//
//  SecondViewController.swift
//  SwiftProject
//
//  Created by sTagRD on 2018/1/2.
//  Copyright © 2018年 stag. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var secondTableView:UITableView!
    let dataSuorceArray:[String] = ["number one","two","three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.edgesForExtendedLayout = .init(rawValue: 0)
        let rect = self.view.frame
        secondTableView = UITableView(frame:rect)
        self.secondTableView.backgroundColor = UIColor.white
        //set datasuorce
        self.secondTableView.dataSource = self
        self.secondTableView.delegate = self
        self.secondTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellID")
        self.view.addSubview(secondTableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSuorceArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (secondTableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath))
        cell.textLabel?.text = dataSuorceArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            let forthVc = ForthViewController()
            navigationController?.pushViewController(forthVc, animated: true)
            return
        }
        let thirdVc = ThirdViewController()
        thirdVc.chuanZhiString = dataSuorceArray[indexPath.row]
        navigationController?.pushViewController(thirdVc, animated: true)
        
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
