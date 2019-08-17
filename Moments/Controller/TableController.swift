//
//  TableController.swift
//  Moments
//
//  Created by Jean-Paul Berthelot on 16/08/2019.
//  Copyright © 2019 Jean-Paul Berthelot. All rights reserved.
//

import UIKit

// #montrercell : ajout des 2 autres héritages
class TableController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //#photo
    var photos = [Photo]()
    
    //#connectcelltableview
    let cellID = "MomentTabCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // #montrercell
        tableView.delegate = self
        tableView.dataSource = self
        
        //#connectcelltableview
        //le nibName doit être le nom exact du xib : MomentTabCell
        let nib = UINib(nibName: cellID, bundle: nil)
        // pour connecter la cell on utilise register
        tableView.register(nib, forCellReuseIdentifier: cellID)
        
        //#photo
        photos  = BaseDePhotos.charger.toutesLesPhotos()
    }
    
    // #montrercell
    // pour pouvoir ajouter UI UITableViewDataSource on doit ajouter ces 2 fonctions qui respectent
    // le protocole imposé par cette classe
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // on ne le fait pas par section pour l'instant
        return photos.count
    }
    
    
    
    
    //#connectcelltableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? MomentTabCell {
            cell.mep(photos[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    // façon différente avec resto du monde
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // on récupère (c'est une BOUCLE) tous les plats par section et par rows (lignes de chaque section)
//        let plat = tousLesPlats[indexPath.section].plats[indexPath.row]
//        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? PlatCell {
//            cell.miseEnPlace(plat: plat)
//            return cell
//        }
//        return UITableViewCell()
//    }
    //#navcontroller
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = PhotoDetailController()
        controller.photo = photos[indexPath.row]
        //self.present(controller, animated: true, completion: nil)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    //#connectcelltableview
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 150
    }

}
