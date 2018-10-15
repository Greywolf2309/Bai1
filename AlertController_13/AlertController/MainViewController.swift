//
//  MainViewController.swift
//  AlertController
//
//  Created by Tu Doan on 02/10/2018.
//  Copyright © 2018 DoanVantu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var btnShowAlert: UIButton!
    var alertController:UIAlertController!
    
    @IBAction func btnShowAlert(_ sender: Any) {
        // Chon "Ok" & "Cancel" o giua man hinh.
        
       /* alertController = UIAlertController(title: "Alert", message: "Are you sure", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive(Mau do)) { (actinon) in
            print("Press Cancel")
        }
        let okAction = UIAlertAction(title: "Ok", style: .default) { (actinon) in
            print("Press Ok")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController!, animated: true) {
            print("presented")
        }
        */
        
        // Chon "Camera" & "Photo" xuat hien o duoi man hinh di len.
        
        alertController = UIAlertController(title: "Take image", message: "Choose image source(Chon anh)", preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: .default) {(action) in
            print("You choose Camera")
        }
        let photoAction = UIAlertAction(title: "Your photos", style: .default) {(action) in
            print("You choose Photo")
        }
        alertController.addAction(cameraAction)
        alertController.addAction(photoAction)
        alertController.view.tintColor = UIColor.magenta // "magenta" la mau tim. Chon mau cho view
        self.present(alertController!, animated: true) {
            print("presented")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
