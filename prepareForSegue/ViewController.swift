//
//  ViewController.swift
//  prepareForSegue
//
//  Created by dit03 on 2019. 5. 7..
//  Copyright © 2019년 201820028. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var myTableView: UITableView!
    var animal = ["Cat", "Dog", "Pig", "Bird", "Whale", "Cow"]
    var subAnimal = ["고양이", "강아지", "돼지", "새", "고래", "소"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)
        
        cell.textLabel?.text = animal[indexPath.row]
        cell.detailTextLabel?.text = subAnimal[indexPath.row]
        cell.imageView?.image = UIImage(named: animal[indexPath.row])
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToDetail" {
            let DetailVC = segue.destination as! DetailViewController
            
            let selectedPath = myTableView.indexPathForSelectedRow
            DetailVC.animalData = animal[(selectedPath?.row)!]
            DetailVC.ImageData = animal[(selectedPath?.row)!]
            DetailVC.SubData = subAnimal[(selectedPath?.row)!]
            
        } else if segue.identifier == "GoToAdd" {
            //AddViewController로 이동
            let AddVC = segue.destination as! AddViewController
            
            AddVC.animalData = animal[0]
            AddVC.ImageData = animal[0]
            AddVC.SubData = subAnimal[0]
        }
    }
}

