//
//  AcademyTableViewCell.swift
//  LatihanDynamicTable
//
//  Created by Poncoe on 07/07/22.
//

import UIKit

class AcademyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var academyImageView: UIImageView!
    
    @IBOutlet weak var txtLabel: UILabel!
    
    //challenge
    @IBOutlet weak var txtDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
