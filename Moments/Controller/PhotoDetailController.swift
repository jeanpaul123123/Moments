//
//  PhotoDetailController.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 17/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class PhotoDetailController: UIViewController {
    
    var photo: Photo?

    @IBOutlet weak var scroll: UIScrollView!
    
    @IBOutlet weak var photoImage: ImageCoinArrondi!
    
    @IBOutlet weak var nomLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var retourBouton: UIButton!
    
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    
    @IBOutlet weak var hauteurContrainte: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if navigationController != nil {
            retourBouton.isHidden = true
        } else {
            // pas utile
            retourBouton.isHidden = false
        }
        
        if photo != nil {
            nomLabel.text = "De: " + photo!.nom
            descLabel.text = photo!.desc
            photoImage.image = photo!.image
            let taille = Ratio.obtenir.taille(view.frame.width - 40, image: photo!.image)
            largeurContrainte.constant = taille.width
            hauteurContrainte.constant = taille.height
            
        }

    }
    // #navigation : retour en arrière

    @IBAction func retourAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
