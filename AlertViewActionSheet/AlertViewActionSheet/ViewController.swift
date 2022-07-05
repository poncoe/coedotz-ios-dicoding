//
//  ViewController.swift
//  AlertViewActionSheet
//
//  Created by Poncoe on 05/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnAlertView: UIButton!
    @IBOutlet weak var btnActionSheet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ALERT VIEW //
        
        // Membuat button aksi untuk alert.
        let defaultAction = UIAlertAction(title: "Agree", style: .default) { (action) in
            // Merespon pengguna ketika memilih action ini.
        }
        
        let cancelAction = UIAlertAction(title: "Disagree", style: .cancel) { (action) in
            // Merespon pengguna ketika memilih action ini.
        }
        
        // Membuat dan mengatur alert controller.
        let alert = UIAlertController(title: "Terms and Conditions", message: "Click Agree to accept the terms and conditions.", preferredStyle: .alert)
        
        // Menambahkan aksi ke dalam alert.
        alert.addAction(defaultAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true) {
            // Alert akan muncul
        }
        
        // ACTION SHEET //
        
//        let destroyAction = UIAlertAction(title: "Delete", style: .destructive) { (action) in
//            // Merespon pengguna ketika memilih action ini.
//        }
//
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//            // Merespon pengguna ketika memilih action ini.
//        }
//
//        let alert = UIAlertController(title: "Delete the image?", message: "", preferredStyle: .actionSheet)
//        alert.addAction(destroyAction)
//        alert.addAction(cancelAction)
//
//        // Untuk iPad, action sheets harus dimunculkan dalam bentuk popover.
//        alert.popoverPresentationController?.barButtonItem = self.trashButton
//
//        self.present(alert, animated: true) {
//             // Alert akan muncul
        //}
    }
    
}

