//
//  ViewController.swift
//  LatihanAutoLayout
//
//  Created by Poncoe on 15/06/22.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var btnFollowed: UIButton!
    @IBOutlet weak var profileImageView:UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
        
        // Challenge
        txtName.text = "Arief Wardhana"
        txtDesc.text = "Nothing gold can stay"
        profileImageView.image = UIImage (named: "coedotz")
    }
    
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: Any) {
        isFollow = !isFollow
        btnFollowed.setTitle(isFollow ? "Following" : "Follow", for: .normal) // Mengganti teks dalam button.
        print("Anda telah mengikuti Dicoding.")
    }
    
    
    private func setupCircleImageView(){
        profileImageView.layer.borderWidth = 1 // Menentukan lebar dari border/garis batas.
        
        profileImageView.layer.masksToBounds = false // Menentukan apakah perlu melakukan masking atau tidak.
        
        profileImageView.layer.borderColor = UIColor.black.cgColor // Menentukan warna border.
        
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2 // Menentukan apakah sudutnya akan membulat (rounded) atau tidak.
        
        profileImageView.clipsToBounds = true // Menentukan apakah subview terbatas
    }
    
    
}

