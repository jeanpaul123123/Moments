//
//  Photo.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class Photo {
    
    //#photo
    private var _image: UIImage
    private var _nom: String
    private var _desc: String
    
    var image: UIImage {
        return _image
    }
    
    var nom: String {
        return _nom
    }
    
    var desc: String {
        return _desc
    }
    
    init(image: UIImage, nom: String, desc: String) {
        self._image = image
        self._nom = nom
        self._desc = desc
    }
}
