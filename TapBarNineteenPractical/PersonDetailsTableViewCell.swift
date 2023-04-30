//
//  PersonDetailsTableViewCell.swift
//  TapBarNineteenPractical
//
//  Created by Mac on 25/04/23.
//

import UIKit

class PersonDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var personNameLabel: UILabel!
    
    @IBOutlet weak var personMobileNoLabel: UILabel!
    @IBOutlet weak var personEmailIdLabel: UILabel!
    @IBOutlet weak var personPasswordLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
