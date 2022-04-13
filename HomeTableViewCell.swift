//
//  HomeTableViewCell.swift
//  TodayDate
//
//  Created by 박수연 on 2022/04/05.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var tooLabel: UILabel!
    @IBOutlet weak var user: UIView!
    @IBOutlet weak var contentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
