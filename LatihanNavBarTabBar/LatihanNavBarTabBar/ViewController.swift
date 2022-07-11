//
//  ViewController.swift
//  LatihanDynamicTable
//
//  Created by Poncoe on 07/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableAcademyView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // MARK: Untuk menyediakan data ke TableView.
        tableAcademyView.dataSource = self
        tableAcademyView.delegate = self
        
        // MARK: Mendaftarkan XIB ke ViewController.
        tableAcademyView.register(
            UINib(nibName: "AcademyTableViewCell", bundle: nil), // Isi dengan nama file XIB
            forCellReuseIdentifier: "AcademyCell" // Isi dengan Identifier Cell yang telah ditentukan
        )
    }
    
    //@IBAction func myUnwindSegue(_ sender: UIStoryboardSegue) { }
    @IBAction func goToWebsite(_ sender: Any) {
        let urlDicoding = "https://www.dicoding.com"
        if let url = URL(string: urlDicoding), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}

// MARK: Mengimplementasikan UITableViewDataSource ke dalam ViewController.
extension ViewController: UITableViewDataSource {
    // digunakan untuk mengatur jumlah item/cell yang muncul dalam TableView.
    // MARK: Mengetahui berapa banyak item yang akan muncul.
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        
        // MARK: Mendapatkan jumlah item dari dummyAcademyData.
        return dummyAcademyData.count
    }
    
    // MARK: Mengatur bagaimana tampilan dari setiap TableViewCell.
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        // MARK: Mencari AcademyTableViewCell berdasarkan Identifier.
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "AcademyCell",
            for: indexPath
        ) as? AcademyTableViewCell {
            
            // MARK: Menetapkan nilai gambar dan nama untuk setiap cell/item.
            let academy = dummyAcademyData[indexPath.row]
            cell.txtLabel.text = academy.name
            cell.academyImageView.image = academy.image
            
            //challenge
            cell.txtDesc.text = academy.description
            
            // MARK: Mengembalikan cell agar bisa ditampilkan dalam TableView.
            return cell
        } else {
            
            // MARK: Mengembalikan UITableViewCell ketika cell bernilai nil/null.
            return UITableViewCell()
        }
    }
    
}

// MARK: Mengimplementasikan UITableViewDelegate ke dalam ViewController.
extension ViewController: UITableViewDelegate {
    
    // MARK: Merespons ketika Table View Cell ditekan.
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        
        // MARK: Menambahkan trigger untuk segue ketika Table View Cell ditekan.
        performSegue(withIdentifier: "moveToDetail", sender: dummyAcademyData[indexPath.row])
    }
    
    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        if segue.identifier == "moveToDetail" {
            if let detaiViewController = segue.destination as? DetailViewController {
                detaiViewController.academy = sender as? AcademyModel
            }
        }
    }
}


