//
//  DetailViewController.swift
//  LatihanSegueDetail
//
//  Created by Poncoe on 08/07/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var academyImage: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtDesc: UILabel!
    
    var academy: AcademyModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let result = academy {
            txtName.text = result.name
            txtDesc.text = result.description
            academyImage.image = result.image
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
