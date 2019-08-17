//
//  Ratio.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 17/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class Ratio {
    
    static let obtenir = Ratio()
    
    func taille(_ largeur: CGFloat, image: UIImage) -> CGSize {
        let ratio = largeur / image.size.width
        let width = image.size.width * ratio
        let height = image.size.height * ratio
        return CGSize(width: width, height: height)
    }
    
}
