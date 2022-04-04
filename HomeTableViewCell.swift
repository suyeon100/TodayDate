//
//  HomeTableViewCell.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/04.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var bigImage: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("HomeTableCell - awakeFromNib() called")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
