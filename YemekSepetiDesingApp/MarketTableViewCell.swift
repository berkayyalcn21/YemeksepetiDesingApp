//
//  MarketTableViewCell.swift
//  YemekSepetiDesingApp
//
//  Created by Berkay on 20.08.2022.
//

import UIKit

class MarketTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelLimit: UILabel!
    @IBOutlet weak var butonIsFree: UIButton!
    @IBOutlet weak var MarketImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
