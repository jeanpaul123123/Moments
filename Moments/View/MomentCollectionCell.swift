//
//  MomentCollectionCell.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 17/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class MomentCollectionCell: UICollectionViewCell {

    @IBOutlet weak var imageViewCell: ImageCoinArrondi!
    
    // on crée cette variable pour éviter d'avoir des doublons
    var photo: Photo!
    
    func mep(_ photo: Photo) {
        self.photo = photo
        imageViewCell.image = photo.image
    }
    
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

}
