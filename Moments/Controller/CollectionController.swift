//
//  CollectionController.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class CollectionController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    //#photo
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //#photo
        photos  = BaseDePhotos.charger.toutesLesPhotos()

    }



}
