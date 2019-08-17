//
//  ImageCoinArrondi.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class ImageCoinArrondi: UIImageView {

    override init(frame: CGRect){
        super.init(frame:frame)
        mep()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        mep()
    }
    
    func mep(){
        contentMode = .scaleAspectFill
        clipsToBounds = true
        layer.cornerRadius = 20
    }

}
