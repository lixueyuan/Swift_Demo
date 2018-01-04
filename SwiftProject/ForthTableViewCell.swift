//
//  ForthTableViewCell.swift
//  SwiftProject
//
//  Created by sTagRD on 2018/1/3.
//  Copyright © 2018年 stag. All rights reserved.
//

import UIKit

class ForthTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func selectedCellButton(_ sender: Any) {
        print("dianji le cell button")
    }
}
