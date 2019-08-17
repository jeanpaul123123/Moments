
//
//  TabBarController.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //#prise_en_compte_vue
        let collection = CollectionController()
        collection.title = "Collection View"
        collection.tabBarItem.image = UIImage(named: "collectionView")
        
        //cette instruction let table = TableController() sans navigation devient :
        //#navcontroller
        let table = UINavigationController(rootViewController: TableController())
        table.title = "Table View"
        table.tabBarItem.image = UIImage(named: "tableView")
        
        viewControllers = [collection,table]
    }
    

}
