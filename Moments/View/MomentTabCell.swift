//
//  MomentTabCell.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

//#celldutableau
class MomentTabCell: UITableViewCell {

    
    //
    @IBOutlet weak var imageViewCell: ImageCoinArrondi!
    
    @IBOutlet weak var nomLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    var photo: Photo!
    
    func mep(_ photo: Photo) {
        self.photo = photo
        
        imageViewCell.image = self.photo.image
        nomLabel.text = "De: " + self.photo.nom
        descLabel.text = self.photo.desc
    }
    
    //    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
}
