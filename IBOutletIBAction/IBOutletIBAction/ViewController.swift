//
//  ViewController.swift
//  IBOutletIBAction
//
//  Created by Poncoe on 02/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var btnGo: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Mengubah teks txtTitle
        txtTitle.text = "Hallo Sobat Coedotz!"
        
        // Mengambil teks txtTitle
        print(txtTitle.text ?? "Tidak mendapatkan teks")
        
        // MARK: Mengubah teks newButton
        btnGo.setTitle("Like sekarang juga!", for: .normal)
        
        // MARK: Mengambil teks newButton
        print(btnGo.titleLabel?.text ?? "Tidak mendapatkan teks")
    }
    
    // MARK: Variabel sementara untuk menampung total like
    var totalLike = 0;
    
    // MARK: Ketika user menekan tombol Like maka menjalankan function ini
    @IBAction func addLike(_ sender: UIButton) {
        
        // MARK: Setiap kali klik maka akan bertambah 1 like-nya
        totalLike += 1
        btnGo.setTitle("Like \(totalLike)", for: .normal)
        
    }
    
    
}

