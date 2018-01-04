//
//  ForthViewController.swift
//  SwiftProject
//
//  Created by sTagRD on 2018/1/3.
//  Copyright © 2018年 stag. All rights reserved.
//

import UIKit
import SwiftWebVC
class ForthViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var forthTableView:UITableView!
    var dataSuorceArray = ["123","456","789"]
    internal var nameString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置该属性让contentview的x起点从navigationbar下面开始即x:64
        self.edgesForExtendedLayout = .init(rawValue: 0)
        forthTableView = UITableView(frame:self.view.bounds)
        forthTableView.delegate = self
        forthTableView.dataSource = self
        forthTableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        self.view.addSubview(forthTableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSuorceArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath))
        cell.textLabel?.text = dataSuorceArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
