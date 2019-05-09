//
//  DetailViewController.swift
//  prepareForSegue
//
//  Created by dit03 on 2019. 5. 9..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var animalData: String?
    var SubData: String?
    var ImageData: String?
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = animalData
        myLabel.text = SubData
        myImageView.image = UIImage(named: ImageData!)
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
