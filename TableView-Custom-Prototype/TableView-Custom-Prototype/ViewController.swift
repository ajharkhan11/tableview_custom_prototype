//
//  ViewController.swift
//  TableView-Custom-Prototype
//
//  Created by Ajharudeen Khan on 23/05/22.
//


import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var mcuMoviesList = [String]()
    var mcuMoviesDesc = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //setup data
        mcuMoviesList = ["Captain America - The First Avenger", "Captain Marvel", "Iron Man", "Iron Man 2", "Thor", "The Avengers", "Thor - The Dark World", "Iron Man 3",]
        mcuMoviesDesc = ["After being injected with a special \"Super-Soldier\" serum which leads to him developing superpowers Steve must thwart the plans of a warmonger.","Carol Danvers becomes one of the universe’s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.","An industrialist constructs a high-tech armoured and decides to use his suit to fight against evil forces and save the world.","Tony Stark is under pressure from various sources, to share his technology with the world. And, he needs to find a way to deal with his enemies.","The powerful, but arrogant god Thor, is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.","Nick Fury finds himself in need of a team to pull the world back from the brink of disaster by launching the Avengers initiative.","Thor sets out on a journey to defeat Malekith, the leader of the Dark Elves when he returns to Asgard to fulfil his desire of destroying the Nine Realms.","Tony Stark encounters a formidable foe called the Mandarin, and after failing to him, he embarks on a journey with relentless consequences."];
    }
    
    //UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mcuMoviesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "customPrototype", for: indexPath)
        let titleLabel = tableViewCell.viewWithTag(1) as? UILabel
        let detailLabel = tableViewCell.viewWithTag(2) as? UILabel
        let image = tableViewCell.viewWithTag(3) as? UIImageView
        
        titleLabel?.text = mcuMoviesList[indexPath.row]
        detailLabel?.text = mcuMoviesDesc[indexPath.row]
        image?.image = UIImage.init(named: mcuMoviesList[indexPath.row])
        
        return tableViewCell;
    }
}
