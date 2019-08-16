//
//  TableController.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class TableController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //#photo
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //#photo
        photos  = BaseDePhotos.charger.toutesLesPhotos()

        
        // Do any additional setup after loading the view.
    }


}
